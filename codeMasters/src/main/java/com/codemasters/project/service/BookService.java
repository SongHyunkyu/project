package com.codemasters.project.service;

import java.util.List;
import java.util.Map;

import com.codemasters.project.dto.BookDTO;

public interface BookService {

	Map getBook(int pageNum, int countPerPage, int sort, BookDTO dto);

	Map getManagerBook(int pageNum, int countPerPage, BookDTO dto);

	List bookDetail(BookDTO dto);

	List bookBest(BookDTO dto);

	List bookNew(BookDTO dto);

	double star(int book_number);

	int count(int book_number);
}
