package kr.green.leather.service;

import kr.green.leather.pagination.Criteria;
import kr.green.leather.pagination.PageMaker;

public interface PageMakerService {

	PageMaker getPageMaker(int displayPageNum, Criteria cri, int totalCount);

}
