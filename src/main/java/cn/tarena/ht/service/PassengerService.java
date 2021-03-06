package cn.tarena.ht.service;

import java.util.Date;

import cn.tarena.ht.pojo.Order;
import cn.tarena.ht.pojo.Passenger;

public interface PassengerService {
	
	/**
	 * 添加乘客info,订单信息
	 * @param passenger
	 * @param order 
	 * @return 
	 */
	public void add(Passenger passenger, Order order);

	public void updateOrder(String orderId, Date date);

}
