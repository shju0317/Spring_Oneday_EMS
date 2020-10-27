package com.biz.ems.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.biz.ems.model.EmsVO;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service("emsServiceImpl")
public class EmsServiceImplV1 implements EmsService{

	@Override
	public EmsVO findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(EmsVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<EmsVO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(EmsVO emsVO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void insert(EmsVO emsVO, MultipartFile file) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<String> insert(EmsVO emsVO, MultipartHttpServletRequest files) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EmsVO findBySeq(long long_seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(long long_seq) {
		// TODO Auto-generated method stub
		return 0;
	}

}
