package com.codemasters.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codemasters.project.dao.BookDAO;
import com.codemasters.project.dto.BookDTO;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookDAO bookDAO;

	@Override
	public Map getBook(int pageNum, int countPerPage, int sort, BookDTO dto) {

		int startNum = 0, endNun = 0;

		// 이전 페이지의 마지막 숫자+1;
		startNum = ((pageNum - 1) * (countPerPage) + 1);
		endNun = pageNum * countPerPage;

		dto.setStartNum(startNum);
		dto.setEndNum(endNun);

		// 보여지는 책 리스트
		List list;
		if (sort == 1) {
			list = bookDAO.bookPageSort1(dto);
		} else if (sort == 2) {
			list = bookDAO.bookPageSort2(dto);
		} else if (sort == 3) {
			list = bookDAO.bookPageSort3(dto);
		} else if (sort == 4) {
			list = bookDAO.bookPageSort4(dto);
		} else {
			list = bookDAO.bookPageSort1(dto);
		}
		// 전체 책 수
		int total = bookDAO.bookTotal(dto);
		System.out.println("booktotal : " + total);
		Map map = new HashMap();

		map.put("list", list);
		map.put("total", total);

		return map;
	}

	@Override
	public Map getManagerBook(int pageNum, int countPerPage, BookDTO dto) {

		int startNum = 0, endNun = 0;

		// 이전 페이지의 마지막 숫자+1;
		startNum = ((pageNum - 1) * (countPerPage) + 1);
		endNun = pageNum * countPerPage;

		dto.setStartNum(startNum);
		dto.setEndNum(endNun);

		// 보여지는 책 리스트
		List list = bookDAO.bookPageSort1(dto);

		// 전체 책 수
		int total = bookDAO.bookTotal(dto);
		System.out.println("booktotal : " + total);
		Map map = new HashMap();

		map.put("list", list);
		map.put("total", total);

		return map;
	}

	@Override
	public List bookDetail(BookDTO dto) {

		List bookList = bookDAO.bookDetail(dto);

		return bookList;
	}

	@Override
	public List bookBest(BookDTO dto) {

		List bookBest = bookDAO.bookBest(dto);

		return bookBest;
	}

	@Override
	public List bookNew(BookDTO dto) {

		List bookNew = bookDAO.bookNew(dto);

		return bookNew;
	}

	@Override
	public double star(int book_number) {
		double bookStar = bookDAO.star(book_number);
		return bookStar;
	}

	@Override
	public int count(int book_number) {
		int count = bookDAO.star_count(book_number);
		return count;
	}

}
