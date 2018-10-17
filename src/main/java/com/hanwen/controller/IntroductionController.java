package com.hanwen.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

@RestController
@RequestMapping("/Introduction")
public class IntroductionController {
    @RequestMapping("")
    public ModelAndView getIntronduction(){
        return new ModelAndView("introduction");
    }

    @RequestMapping("/GetResume")
    public ResponseEntity<byte[]> getResume(HttpServletRequest request) throws Exception{
        ServletContext servletContext = request.getServletContext();
        String fileName="HanwenGuo_Resume.pdf";
        String path=servletContext.getRealPath("/WEB-INF/"+fileName);
        InputStream in=new FileInputStream(new File(path));
        byte[] body=new byte[in.available()];
        in.read(body);
        HttpHeaders headers=new HttpHeaders();
        headers.add("Content-Disposition", "attachment; filename="+fileName);
        HttpStatus statusCode = HttpStatus.OK;
        ResponseEntity<byte[]> response=new ResponseEntity<byte[]>(body, headers, statusCode);
        return response;
    }
}
