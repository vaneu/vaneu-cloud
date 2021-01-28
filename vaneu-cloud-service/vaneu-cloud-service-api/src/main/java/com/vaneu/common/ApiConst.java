package com.vaneu.common;

/**
 * @ClassName: ApiConst
 * @Description: TODO(常量)
 * @author vaneu
 * @date 2020-8-30 0:18:45
 */
public class ApiConst implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	public static final Integer CODE_SUCC = 1000; 				// 成功
	public static final Integer CODE_FAIL = 2000; 				// 失败
	public static final Integer CODE_FAIL_TOKEN = 3000; 		// token失效
	public static final Integer CODE_FAIL_AUTHORITY = 4000; 	// 无权限

	public static final String DESC_SUCC = "成功";
	public static final String DESC_FAIL = "失败";

}
