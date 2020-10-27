package com.biz.ems.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.ems.model.EmsVO;
import com.biz.ems.service.EmsService;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value = "/ems")
@Controller
public class EmsController {

	@Autowired
	@Qualifier("emsServiceImpl")
	private EmsService emsService;

	@Transactional
	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String list(Model model) {

		List<EmsVO> emailList = emsService.selectAll();

		model.addAttribute("EMAILS", emailList);
		model.addAttribute("BODY", "E-LIST");
		return "home";
	}

	@Transactional
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String input(Model model) {

		LocalDateTime lDateTime = LocalDateTime.now();
		String lDate = DateTimeFormatter.ofPattern("yyyy-MM-dd").format(lDateTime);
		String lTime = DateTimeFormatter.ofPattern("HH:mm:SS").format(lDateTime);

		EmsVO emsVO = EmsVO.builder()
							.s_date(lDate)
							.s_time(lTime)
							.build();

		model.addAttribute("BODY", "E-WRITE");
		model.addAttribute("emsVO", emsVO);

		return "home";
	}

	@Transactional
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String input(@ModelAttribute("emsVO") EmsVO emsVO) {

		log.debug(emsVO.toString());

		int ret = emsService.insert(emsVO);
		if (ret < 1) {
			// insert가 실패했으므로 그에 대한 메시지를 보여주는 페이지로 jump
		}

		return "redirect:/ems";
	}

	@RequestMapping(value = "/delete/{seq}", method = RequestMethod.GET)
	public String delete(String seq) {
		long long_seq = 0;
		try {
			long_seq = Long.valueOf(seq);
		} catch (Exception e) {
			return "view_error";
		}

		emsService.delete(long_seq);
		return "redirect:/ems";
	}
	
	@RequestMapping(value="/update/{seq}", method=RequestMethod.GET)
	public String update(String seq, Model model) {
		long long_seq = 0;
		try {
			long_seq = Long.valueOf(seq);
		} catch (Exception e) {
			return "view_error";
		}
		
		// update할 데이터를 SELECT해오기
		EmsVO emsVO = emsService.findById(long_seq);
		
		model.addAttribute("BODY", "E-UPDATE");
		model.addAttribute("EmsVO", emsVO);
		
		// 입력폼 화면 열기
		return "e-write";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(EmsVO emsVO, Model model) {
		log.debug("UPDATE POST Method");
		log.debug(emsVO.toString());
		
		emsService.update(emsVO);
		
		model.addAttribute("BODY", "E-UPDATE");
		model.addAttribute("seq", emsVO.getId());
		return "redirect:/ems";
	}
}
