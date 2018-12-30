package com.ssm.dao;

import java.util.ArrayList;

import com.ssm.beans.Information;

public interface InformationDao {

	public ArrayList<Information> queryAllInfo();

	public void insertInfo(Information info);
}
