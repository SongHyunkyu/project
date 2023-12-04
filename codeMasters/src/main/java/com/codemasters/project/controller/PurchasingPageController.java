package com.codemasters.project.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codemasters.project.dto.BookDTO;
import com.codemasters.project.service.BookService;

@Controller
public class PurchasingPageController {

	@Autowired
	BookService bookService;

	@RequestMapping("/purchasingpage")
	public String purchasingpage(Model model, HttpServletRequest request, @ModelAttribute BookDTO dto) {

		int pageNum = 1;
		int countPerPage = 12;
		int sort = 1;
		System.out.println("search : " + dto.getBook_name());

		String temp_pageNum = request.getParameter("pageNum");
		if (temp_pageNum != null) {
			try {

				pageNum = Integer.parseInt(temp_pageNum);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		String temp_countPerPage = request.getParameter("countPerPage");
		if (temp_countPerPage != null) {
			try {

				pageNum = Integer.parseInt(temp_countPerPage);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		String temp_sort = request.getParameter("sort");
		if (temp_sort != null) {
			try {

				sort = Integer.parseInt(temp_sort);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// db에서 book 목록 전체 조회
		Map map = bookService.getBook(pageNum, countPerPage, sort, dto);

		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);
		map.put("sort", sort);
		map.put("book_name", dto.getBook_name());

		List bookBest = bookService.bookBest(dto);
		List bookNew = bookService.bookNew(dto);

		// model에 담아서
		model.addAttribute("data", map);
		model.addAttribute("bestBook", bookBest);
		model.addAttribute("newBook", bookNew);
		// jsp로 이동(forward)
		return "purchasingPage";
	}

	@RequestMapping("/goBookDetail")
	public String goBookDetail(Model model, HttpServletRequest request, @ModelAttribute BookDTO dto,
			@RequestParam("book_number") int book_number) {

		double star = bookService.star(book_number);
		model.addAttribute("star", star);

		int count = bookService.count(book_number);
		model.addAttribute("count", count);

		List list = bookService.bookDetail(dto);
		model.addAttribute("list", list);

		return "detail_page";
	}

}
