package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.notice.NoticeFileVO;
import kr.or.ddit.vo.notice.NoticeVO;
import kr.or.ddit.vo.notice.PaginationInfoVO;

public interface INoticeMapper {

	public int insertNotice(NoticeVO noticeVO);

	public void incrementHit(int boNo);

	public NoticeVO selectNotice(int boNo);

	public int updateNotice(NoticeVO noticeVO);

	public int deleteNotice(int boNo);

	public int selectNoticeCount(PaginationInfoVO<NoticeVO> pagingVO);

	public List<NoticeVO> selectNoticeList(PaginationInfoVO<NoticeVO> pagingVO);

	public void insertNoticeFile(NoticeFileVO noticeFileVO);

	public NoticeFileVO noticeDownload(int fileNo);

	public void incrementNoticeFileDownCount();

	public NoticeFileVO selectNoticeFile(Integer fileNo);

	public void deleteNoticeFile(Integer fileNo);

	public void deleteNoticeFileByBoNo(int boNo);

}
