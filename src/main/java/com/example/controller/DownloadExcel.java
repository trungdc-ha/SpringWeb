package com.example.controller;

import com.example.dto.Person;
import org.jxls.common.Context;
import org.jxls.util.JxlsHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/download")
@Controller
public class DownloadExcel {

    @GetMapping("/show")
    public String showScreen(){
        return "download";
    }

    @GetMapping
    public void downloadExcel(HttpServletResponse response){
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        response.setHeader("Content-Disposition", "attachment; filename=demo.xlsx");

        List<Person> dataList = new ArrayList<>();
        dataList.add(new Person(1, "Nguyễn Văn A", 20, new BigDecimal(10000)));
        dataList.add(new Person(2, "B", 20, new BigDecimal(20000)));
        dataList.add(new Person(3, "Nguyễn Văn C", 20, new BigDecimal(30000)));
        dataList.add(new Person(4, "Nguyễn Văn D", 20, new BigDecimal(40000)));

        // Tải mẫu và xử lý nó
        try (InputStream is = getClass().getResourceAsStream("/template.xlsx");
             OutputStream os = response.getOutputStream()) {
            Context context = new Context();
            context.putVar("author", "Đặng Chí Trung");
            context.putVar("persons", dataList);
            JxlsHelper.getInstance().processTemplate(is, os, context);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
}
