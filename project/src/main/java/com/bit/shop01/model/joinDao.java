package com.bit.shop01.model;

import java.sql.SQLException;

import com.bit.shop01.model.entity.memVo;

public interface joinDao {
	
	int join(memVo join) throws SQLException;
}
