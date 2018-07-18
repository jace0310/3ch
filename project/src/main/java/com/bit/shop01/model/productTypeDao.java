package com.bit.shop01.model;

import java.sql.SQLException;
import java.util.List;

import com.bit.shop01.model.entity.productVo;


public interface productTypeDao {
	
	List<productVo> selectAll() throws SQLException;
	
	productVo selectOne(int productNum) throws SQLException;
	
	List<productVo> reviewAll() throws SQLException;
	
	productVo reviewOne(int reviewNum) throws SQLException;
	
	int reviewUpdate(productVo review) throws SQLException;
	
	int reviewDelete(int reviewNum) throws SQLException;
}

