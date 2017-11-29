package com.localhost.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements SessionAware {

	public  Map<String,Object>session;

		public String execute() {

			String result = SUCCESS;
			session.clear();
			return result;
		}

		@Override
		public void setSession(Map<String, Object> session) {
			this.session = session;
		}

	}
