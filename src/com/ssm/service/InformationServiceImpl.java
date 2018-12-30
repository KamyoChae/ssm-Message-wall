package com.ssm.service;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ssm.beans.Information;
import com.ssm.dao.InformationDao;

@Service("informationService")
public class InformationServiceImpl implements IInformationService {
	
	@Autowired
	private InformationDao informationDao;
	
	public ArrayList<Information> queryAllInfo() {
		return informationDao.queryAllInfo();
	}

	public void addInformation(Information info) {
		informationDao.insertInfo(info);
	}

}
