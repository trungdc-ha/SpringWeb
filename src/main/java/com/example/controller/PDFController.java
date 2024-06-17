package com.example.controller;

import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Paragraph;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.thymeleaf.context.WebContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class PDFController {
    public static final String DEST = "/hello.pdf";

    @GetMapping("/download/ejournal")
    public ResponseEntity<byte[]> downloadEJournalFile(HttpServletRequest request, HttpServletResponse response) {
        return download(request, response);
    }

    private ResponseEntity<byte[]> download(HttpServletRequest request, HttpServletResponse response) {
        WebContext context = new WebContext(request, response, servletContext);
        context.setVariable("eJournalResponse", eJournalResponse);
        String eJournalHtmlTemplate = templateEngine.process("pdfTemplate", context);

        ByteArrayOutputStream target = new ByteArrayOutputStream();
        ConverterProperties converterProperties = new ConverterProperties();
        converterProperties.setBaseUri("http://localhost:8080");

        HtmlConverter.convertToPdf(eJournalHtmlTemplate, target, converterProperties);

        byte[] bytes = target.toByteArray();
        String fileName = String.join("_", eJournalResponse.getTransactionDate(), eJournalResponse.getRetrievalNumber(), String.valueOf(eJournalResponse.getRequestAmount()));

        HttpHeaders header = new HttpHeaders();
        header.add(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename="+fileName+".pdf");
        header.add("Cache-Control", "no-cache, no-store, must-revalidate");
        header.add("Pragma", "no-cache");
        header.add("Expires", "0");

        return ResponseEntity.ok()
                .headers(header)
                .contentType(MediaType.APPLICATION_PDF)
                .body(bytes);
    }

    public static void main(String args[]) throws IOException {
        PdfWriter writer = new PdfWriter(DEST);
        PdfDocument pdf = new PdfDocument(writer);
        Document document = new Document(pdf);
        document.add(new Paragraph("Hello World!"));
        document.close();
    }
}
