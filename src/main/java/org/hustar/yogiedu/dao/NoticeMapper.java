package org.hustar.yogiedu.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.hustar.yogiedu.dto.NoticeDto;

@Mapper
public interface NoticeMapper {

	@Select("select * from notice")
	public NoticeDto find();
}
