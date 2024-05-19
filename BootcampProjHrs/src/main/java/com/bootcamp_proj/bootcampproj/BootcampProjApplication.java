package com.bootcamp_proj.bootcampproj;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import java.io.IOException;

@SpringBootApplication
@ComponentScan(basePackages = {"com.bootcamp_proj"})
public class BootcampProjApplication {

	public static void main(String[] args) {
		System.out.println("HRS started  with\n " + args);
		SpringApplication.run(BootcampProjApplication.class, args);
	}
}