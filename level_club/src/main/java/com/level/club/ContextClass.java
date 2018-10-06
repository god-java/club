package com.level.club;

import java.nio.charset.Charset;

import javax.servlet.Filter;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Configuration
public class ContextClass {

	@Bean
	public MultipartFile multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		return (MultipartFile) resolver;
	}
	
	@Bean
	public HttpMessageConverter<String> responseBodyConverter(){
		return new StringHttpMessageConverter(Charset.forName("UTF-8"));
	}
	
	@Bean
	public Filter characterEncodingFilter() {
		CharacterEncodingFilter characterEncodigFilter = new CharacterEncodingFilter();
		characterEncodigFilter.setEncoding("UTF-8");
		characterEncodigFilter.setForceEncoding(true);
		return characterEncodigFilter;
	}
}
