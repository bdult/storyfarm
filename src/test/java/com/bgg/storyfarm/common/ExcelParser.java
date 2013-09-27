package com.bgg.storyfarm.common;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bgg.storyfarm.dao.ExcelDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:servlet-contextForTest.xml"})
public class ExcelParser {

	Logger logger = LoggerFactory.getLogger(ExcelParser.class);
	HashMap<String, Object> map = new HashMap<String, Object>();
	
	@Autowired
	ExcelDao excelDao;
	
	@Test
	public void testContentsId(){
		String _query = "뒤 죽박죽 정글";
		map.put("query", _query.trim());
		assertNotNull(excelDao.contentsId(map));
	}
	
	@Test
	public void testUpdateContent(){
		map.put("contents_id", 226);
		map.put("serial_num", 111);
		assertThat(excelDao.updateContent(map), is(1));
	}
	
	@Test
	public void textExcelParcer() throws IOException{
		FileInputStream file = new FileInputStream("C:\\ContentList_130909_last.xls");
		Workbook w;
		try {
			w = Workbook.getWorkbook(file);
			Sheet sheet = w.getSheet(1);
			int rowCnt = sheet.getRows();

			//컬럼
			int F = 5; //F
			int G = 6; //G
			
			String _serialNum = "";
			String _title = "";
			
			for (int begin = 0; begin < rowCnt; begin++) {
				Cell[] cell = sheet.getRow(begin);
				
				_serialNum = cell[F].getContents().trim();
				_title = cell[G].getContents().trim();
				logger.info(_serialNum + "/" + _title);
				
				map.put("query", _title);
				int contentsId = excelDao.contentsId(map);
				if(contentsId != 0) {
					map.put("contents_id", contentsId);
					map.put("serial_num", _serialNum);
					excelDao.updateContent(map);
				}
				
			}
		} catch (BiffException e) {
			e.printStackTrace();
		}
	}
	
}
