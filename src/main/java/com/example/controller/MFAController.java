package com.example.controller;

import java.io.ByteArrayOutputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.warrenstrange.googleauth.GoogleAuthenticator;
import com.warrenstrange.googleauth.GoogleAuthenticatorKey;
import com.warrenstrange.googleauth.GoogleAuthenticatorQRGenerator;

import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;

@Controller
@RequestMapping
public class MFAController {

	@Autowired
	private  GoogleAuthenticator gAuth;

	@SneakyThrows
	@GetMapping("/generate/{username}")
	public String generate(@PathVariable String username, Model model) {

		final GoogleAuthenticatorKey key = gAuth.createCredentials(username);

		QRCodeWriter qrCodeWriter = new QRCodeWriter();

		String otpAuthURL = GoogleAuthenticatorQRGenerator.getOtpAuthTotpURL("my-demo", username, key);

		BitMatrix bitMatrix = qrCodeWriter.encode(otpAuthURL, BarcodeFormat.QR_CODE, 400, 400);
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		MatrixToImageWriter.writeToStream(bitMatrix,"PNG", outputStream);

		String base64 = new String(Base64.encodeBase64(outputStream.toByteArray()));
		model.addAttribute("qrCode", base64);
		model.addAttribute("username", username);

		return "qrpage";
	}

	@PostMapping("/validate/key")
	public String validateKey(@RequestParam Integer code, String username, Model model) {
		boolean check = gAuth.authorizeUser(username,code);
		System.out.println(check);

		model.addAttribute("username", username);
		model.addAttribute("check", check);
		return "qrpage";
	}
	

}
