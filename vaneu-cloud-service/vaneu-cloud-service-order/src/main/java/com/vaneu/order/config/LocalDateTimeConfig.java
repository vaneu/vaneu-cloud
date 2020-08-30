package com.vaneu.order.config;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import org.apache.commons.lang3.StringUtils;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.convert.converter.Converter;
import org.springframework.lang.NonNull;

import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateDeserializer;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateSerializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalTimeSerializer;

/**
 * @ClassName: LocalDateTimeConfig
 * @Description: TODO(时间)
 * @author vaneu(zhaoxiong1003@qq.com)
 * @date 2020年4月24日 下午3:29:29
 */
@Configuration
public class LocalDateTimeConfig {
	
    private static final DateTimeFormatter DATETIME_FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    private static final DateTimeFormatter DATE_FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    private static final DateTimeFormatter TIME_FORMATTER = DateTimeFormatter.ofPattern("HH:mm:ss");
 
    @Bean
    @Primary
    public Jackson2ObjectMapperBuilderCustomizer jackson2ObjectMapperBuilderCustomizer() {
        return builder -> builder
        		.serializerByType(LocalDateTime.class, 	new LocalDateTimeSerializer(DATETIME_FORMATTER))
                .serializerByType(LocalDate.class, 		new LocalDateSerializer(DATE_FORMATTER))
                .serializerByType(LocalTime.class, 		new LocalTimeSerializer(TIME_FORMATTER))
                .deserializerByType(LocalDateTime.class, new LocalDateTimeDeserializer(DATETIME_FORMATTER))
                .deserializerByType(LocalDate.class, 	 new LocalDateDeserializer(DATE_FORMATTER))
                .deserializerByType(LocalTime.class, 	 new LocalTimeDeserializer(TIME_FORMATTER));
    }
    
    /*********接收前端入参日期的转换处理***********************************************************************/
    @Bean
    public Converter<String, LocalDateTime> localDateTimeConvert() {
        return new Converter<String, LocalDateTime>() {
            @Override
            public LocalDateTime convert(@NonNull String source) {
                LocalDateTime date = null;
                if (StringUtils.isNotBlank(source)) {
                    date = LocalDateTime.parse(source, DATETIME_FORMATTER);
                }
                return date;
            }
        };
    }

    @Bean
    public Converter<String, LocalDate> localDateConvert() {
        return new Converter<String, LocalDate>() {
            @Override
            public LocalDate convert(@NonNull String source) {
                LocalDate date = null;
                if (StringUtils.isNotBlank(source)) {
                    date = LocalDate.parse(source, DATE_FORMATTER);
                }
                return date;
            }
        };
    }

    @Bean
    public Converter<String, LocalTime> localTimeConvert() {
        return new Converter<String, LocalTime>() {
            @Override
            public LocalTime convert(@NonNull String source) {
                LocalTime time = null;
                if (StringUtils.isNotBlank(source)) {
                    time = LocalTime.parse(source, TIME_FORMATTER);
                }
                return time;
            }
        };
    }
}