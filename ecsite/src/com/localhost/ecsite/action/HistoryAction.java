package com.localhost.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.localhost.ecsite.dao.HistoryDAO;
import com.localhost.ecsite.dto.HistoryDTO;
import com.localhost.ecsite.dto.MyPageDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HistoryAction extends ActionSupport implements SessionAware{

	/**
	 * ログイン情報を格納
	 */
	public Map<String, Object> session;

	/**
	 * マイページ情報取得DAO
	 */
	private HistoryDAO historyDAO = new HistoryDAO();

	/**
	 * マイページ情報格納DTO
	 */
	public ArrayList<MyPageDTO> myPageList = new ArrayList<MyPageDTO>();

	/**
	 * 削除フラグ
	 */
	private String deleteFlg;

	private String message;

	/**
	 * 商品履歴を引き出す
	 */
	public String execute() throws SQLException {

		if (!session.containsKey("userId")) {
			return ERROR;
		}

		// 商品履歴を削除しない場合
		if(deleteFlg == null) {
			String item_id = session.get("itemId").toString();
			String user_id = session.get("userId").toString();


			myPageDTO = historyDAO.getMyPageInfo(item_id, user_id);

			Iterator<HistoryDTO> iterator = historyList.iterator();
			if (!(iterator.hasNext())) {
				historyList = null;
			}
		// 商品履歴を削除する場合
		} else if(deleteFlg.equals("1")) {
			delete();
		}

		String result = SUCCESS;
		return result;
	}

	/**
	 * 商品履歴削除
	 *
	 * @throws SQLException
	 */
	public void delete() throws SQLException {

		String item_id = session.get("id").toString();
		String user_master_id = session.get("login_user_id").toString();

		int res = historyDAO.HistoryDelete(item_id, user_master_id);

		if(res > 0) {
			historyList = null;
			setMessage("商品情報を正しく削除しました。");
		} else if(res == 0) {
			setMessage("商品情報の削除に失敗しました。");
		}
	}



	public String getDeleteFlg() {
		return deleteFlg;
	}

	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}