package com.music.controller;

import javax.mail.MessagingException;

import com.xiaoleilu.hutool.Hutool;
import com.xiaoleilu.hutool.collection.CollUtil;
import com.xiaoleilu.hutool.cron.CronException;
import com.xiaoleilu.hutool.cron.CronUtil;
import com.xiaoleilu.hutool.cron.task.Task;
import com.xiaoleilu.hutool.extra.mail.MailAccount;
import com.xiaoleilu.hutool.extra.mail.MailUtil;

public class dd {
	public static void main(String[] args) throws MessagingException {

	Task task = new Task() {
		
		@Override
		public void execute() {
			MailAccount mailAccount = new MailAccount();
			mailAccount.setHost("smtp.163.com");
			mailAccount.setPort("25");
			mailAccount.setAuth(true);
			mailAccount.setFrom("ma652518954@163.com");
			mailAccount.setUser("ma652518954@163.com");
			mailAccount.setPass("maweijie123");
			try {
				MailUtil.send(mailAccount,CollUtil.newArrayList("652518954@qq.com"), "测试", "这是目录",true);
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	};
		CronUtil.schedule("*/10 * * * *", task);
		CronUtil.start();
	}
}