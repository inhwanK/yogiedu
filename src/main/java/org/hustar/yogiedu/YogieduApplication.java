package org.hustar.yogiedu;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@ServletComponentScan
public class YogieduApplication {

	public static void main(String[] args) {
		SpringApplication.run(YogieduApplication.class, args);
	}
}
