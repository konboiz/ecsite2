package com.internousdev.template.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.template.dao.PayDAO;
import com.opensymphony.xwork2.ActionSupport;


public class PayAction extends ActionSupport implements SessionAware {


    /**
     * 支払い方法の情報格納
     */
	public String payment;

	/**
	 * 配送方法の情報格納
	 */
	public String transport;

	/**
	 * 配送先お客様情報の格納
	 */
	public Map<String,Object> session;


		public String execute(){

        	String result =SUCCESS;

        	PayDAO payDAO = new PayDAO();
        	/**
        	 * sessionからの情報引き出し
        	 * session()内はSQL文と統一
        	 * Countのみ見つからず
        	 */

        	session.get("userId").toString();
        	session.get("userName").toString();
        	session.get("address").toString();
        	session.get("tel").toString();
        	session.get("itemName").toString();
        	session.get("update_time datetime").toString();
        	session.get("itemId").toString();
        	session.get("itemName").toString();

        	/**
        	 * 商品の合計金額の計算
        	 *
        	 */

        	int intCount = Integer.parseInt(session.get("itemCount").toString());
        	int intPrice = Integer.parseInt(session.get("price").toString());

        	session.put("amount", intCount * intPrice);



        	if(payment.equals("1")) {
        		payment = "クレジットカード";

        	} else if(payment.equals("2")) {
        		payment = "コンビニ払い・電子マネー";

        	} else if(payment.equals("3")) {
        		payment = "代引き";

        	} else if(payment.equals("4")) {
        		payment = "現金";
        	}

        	if(transport.equals("1")) {
        		transport = "通常配送";


        	} else if(transport.equals("2")) {
        		transport = "配達日指定";

        	} else if(transport.equals("3")) {
        		transport = "お急ぎ便";

        	} else if(transport.equals("4")) {
        		transport = "冷凍クール便";
        	}

	      return result;
	}


		public String getPayment(){
			return payment;
		}
		public void setPayment(String payment){
			this.payment =payment;
		}

		public String getTransport(){
			return transport;
		}
		public void setTransport(String transport){
			this.transport = transport;
		}


		public void setSession(Map<String,Object> session) {
			this.session = session;
		}


}