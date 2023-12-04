package com.codemasters.project.dao;

import java.util.List;

import com.codemasters.project.dto.BookDTO;

public interface BookDAO {

	List bookPageSort1(BookDTO dto);

	List bookPageSort2(BookDTO dto);

	List bookPageSort3(BookDTO dto);

	List bookPageSort4(BookDTO dto);

	int bookTotal(BookDTO dto);

	List bookDetail(BookDTO dto);

	List bookBest(BookDTO dto);

	List bookNew(BookDTO dto);

	double star(int book_number);

	int star_count(int book_number);
}
