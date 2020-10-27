package com.biz.ems.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.biz.ems.mapper.EmsDao;
import com.biz.ems.model.EmsVO;

public interface EmsService extends EmsDao {
	public List<EmsVO> selectAll();
	
	public int insert(EmsVO emsVO);
	public void insert(EmsVO emsVO, MultipartFile file);
	public List<String> insert(EmsVO emsVO, MultipartHttpServletRequest files);
	
	public EmsVO findBySeq(long long_seq);
	public int delete(long long_seq);
}
