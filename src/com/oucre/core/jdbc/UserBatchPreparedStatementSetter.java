package com.oucre.core.jdbc;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.jdbc.core.BatchPreparedStatementSetter;

/**
 * Copyright FuJian Trust Information Technology CO.,LTD
 * @since 2013-6-7 
 * @author MaoZhulan
 */
public interface UserBatchPreparedStatementSetter extends BatchPreparedStatementSetter{

	void setValues(PreparedStatement ps, int i) throws SQLException;
	
	int getBatchSize();
}
