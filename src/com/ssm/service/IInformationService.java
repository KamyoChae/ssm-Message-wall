package com.ssm.service;

import java.util.ArrayList;

import com.ssm.beans.Information;

public interface IInformationService {

	public ArrayList<Information> queryAllInfo();

	public void addInformation(Information info);
	
}
