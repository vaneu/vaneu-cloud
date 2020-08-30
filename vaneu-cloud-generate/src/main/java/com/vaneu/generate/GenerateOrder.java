package com.vaneu.generate;

import java.util.ArrayList;
import java.util.List;

import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.FileOutConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.TemplateConfig;
import com.baomidou.mybatisplus.generator.config.po.TableInfo;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.baomidou.mybatisplus.generator.engine.VelocityTemplateEngine;

/**
 * @ClassName: GenerateUser.java
 * @Description: TODO()
 * @author vaneu
 * @date 2020-8-29 19:51:52
 * @version V1.0
 */
public class GenerateOrder {

	static String moduleName = "order";
	static String tableNames[] = { "t_order" }; // 需要生成代码的表名

	public static void main(String[] args) {
		// 代码生成器
		AutoGenerator mpg = new AutoGenerator();

		// 全局配置
		GlobalConfig gc = new GlobalConfig();
		String projectPath = System.getProperty("user.dir");
		gc.setOutputDir(projectPath + "/src/main/java");
		gc.setAuthor("vaneu");
		gc.setOpen(false);
		gc.setSwagger2(true);
		mpg.setGlobalConfig(gc);

		// 数据源配置
		DataSourceConfig dsc = new DataSourceConfig();
		dsc.setUrl("jdbc:mysql://127.0.0.1:3306/vaneu-cloud-order?useUnicode=true&characterEncoding=UTF-8&serverTimezone=Hongkong");
		// dsc.setSchemaName("public");
		dsc.setDriverName("com.mysql.cj.jdbc.Driver");
		dsc.setUsername("root");
		dsc.setPassword("123456");
		mpg.setDataSource(dsc);

		// 包配置
		PackageConfig pc = new PackageConfig();
		pc.setModuleName(moduleName);
		pc.setParent("com.vaneu");
		pc.setEntity("domain");
		pc.setMapper("mapper");
		pc.setService("service");
		pc.setServiceImpl("service.impl");
		pc.setController("web.controller");
		mpg.setPackageInfo(pc);

		// 自定义配置
		InjectionConfig cfg = new InjectionConfig() {
			@Override
			public void initMap() {
				// to do nothing
			}
		};

		// 自定义输出配置
		List<FileOutConfig> focList = new ArrayList<>();
		// 自定义配置会被优先输出
		focList.add(new FileOutConfig("/template/mapper.xml.vm") {
			@Override
			public String outputFile(TableInfo tableInfo) {
				// 自定义输出文件名 ， 如果你 Entity 设置了前后缀、此处注意 xml 的名称会跟着发生变化！！
				return projectPath + "/src/main/resources/mapper/" + tableInfo.getEntityName() + "Mapper" + StringPool.DOT_XML;
			}
		});
		// 调整Model生成目录
//		focList.add(new FileOutConfig("/template/entity.java.vm") {
//			@Override
//			public String outputFile(TableInfo tableInfo) {
//				return projectPath + "/src/main/java/com/vaneu/" + moduleName + "/domain/" + tableInfo.getEntityName() + "Model" + StringPool.DOT_JAVA;
//			}
//		});
		cfg.setFileOutConfigList(focList);
		mpg.setCfg(cfg);

		// 配置模板
		TemplateConfig templateConfig = new TemplateConfig();

		// 配置自定义输出模板
		// 指定自定义模板路径，注意不要带上.ftl/.vm, 会根据使用的模板引擎自动识别
		templateConfig.setXml(null);
		templateConfig.setMapper("template/mapper.java");
		templateConfig.setEntity("template/entity.java");
		templateConfig.setService("template/service.java");
		templateConfig.setServiceImpl("template/serviceImpl.java");
		templateConfig.setController("template/controller.java");
		mpg.setTemplate(templateConfig);

		// 策略配置
		StrategyConfig strategy = new StrategyConfig();
		strategy.setNaming(NamingStrategy.underline_to_camel);
		strategy.setColumnNaming(NamingStrategy.underline_to_camel);
		strategy.setEntityLombokModel(true);
		strategy.setRestControllerStyle(true);
		strategy.setInclude(tableNames);
		// strategy.setSuperEntityColumns("id");
		strategy.setControllerMappingHyphenStyle(true);
		strategy.setTablePrefix("t_");
		strategy.setEntityTableFieldAnnotationEnable(true);// 是否生成实体时，生成字段注解
		strategy.setLogicDeleteFieldName("logic");
		strategy.setVersionFieldName("version");
		// strategy.setEntityBuilderModel(true);

		mpg.setStrategy(strategy);
		mpg.setTemplateEngine(new VelocityTemplateEngine());
		mpg.execute();
	}
}
