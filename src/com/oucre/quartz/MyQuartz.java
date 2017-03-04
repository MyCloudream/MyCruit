package com.oucre.quartz;

import org.apache.log4j.Logger;

public class MyQuartz {
	private Logger logger = Logger.getLogger(this.getClass());
	public void clearimgtemp() {
/*		System.out.println("执行清理方法");*/
		logger.error("-------------执行定时清理方法 execute timer clear method-----------");
	}
}
