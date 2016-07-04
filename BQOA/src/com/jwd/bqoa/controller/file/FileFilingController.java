package com.jwd.bqoa.controller.file;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.time.DateUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jwd.bqoa.controller.base.BaseController;
import com.jwd.bqoa.service.filefiling.FileFilingService;
import com.jwd.bqoa.util.DateUtil;
import com.jwd.bqoa.util.PageData;

@Controller
public class FileFilingController extends BaseController{
	@Resource(name="fileFilingService")
	private FileFilingService fileFilingService;
	
	@RequestMapping("/flswclFiling")
	public ModelAndView to_flswclFiling(){
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/filefiling/flswFiling");
		return mv;
	}
	
	@RequestMapping("/showFlswclFiling")
	@ResponseBody
	public List<PageData> showFlswclFiling() throws Exception{
		List<PageData> list = fileFilingService.getFlswclFilingList(null);
		for(int i =0 ; i < list.size(); i++){
			PageData pd = list.get(i);
			Date d = (Date) list.get(i).get("finalUpdateTime");
			pd.put("finalUpdateTime1", d.toString());
		}
		return list;
	}
}
