package com.codemasters.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.codemasters.project.dto.BookDTO;

@Repository
public class BookDAOImple implements BookDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List bookPageSort1(BookDTO dto) {

		List bookList = sqlSession.selectList("book.selectBookSort1", dto);

		return bookList;
	}

	@Override
	public List bookPageSort2(BookDTO dto) {

		List bookList = sqlSession.selectList("book.selectBookSort2", dto);

		return bookList;
	}

	@Override
	public List bookPageSort3(BookDTO dto) {

		List bookList = sqlSession.selectList("book.selectBookSort3", dto);

		return bookList;
	}

	@Override
	public List bookPageSort4(BookDTO dto) {

		List bookList = sqlSession.selectList("book.selectBookSort4", dto);

		return bookList;
	}

	@Override
	public int bookTotal(BookDTO dto) {

		int result = sqlSession.selectOne("book.bookTotal", dto);
		System.out.println("total: " + result);

		return result;
	}

	@Override
	public List bookDetail(BookDTO dto) {

		List bookDetail = sqlSession.selectList("book.bookDetail", dto);

		return bookDetail;
	}

	@Override
	public List bookBest(BookDTO dto) {

		List bookBest = sqlSession.selectList("book.best", dto);

		return bookBest;
	}

	@Override
	public List bookNew(BookDTO dto) {

		List bookNew = sqlSession.selectList("book.new", dto);

		return bookNew;
	}

	@Override
	public double star(int book_number) {
		double bookStar = 0;
		if (sqlSession.selectOne("book.star", book_number) != null) {
			bookStar = sqlSession.selectOne("book.star", book_number);
		}
		return bookStar;
	}

	@Override
	public int star_count(int book_number) {
		int count = 0;
		if (sqlSession.selectOne("book.star_count", book_number) != null) {
			count = sqlSession.selectOne("book.star_count", book_number);
		}
		return count;
	}

}
