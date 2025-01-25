package org.example.demo2.custom;


import org.example.demo2.Entity.OrderDetail;

import java.util.List;

public interface OrderDetailDAO extends CrudDAO<OrderDetail, String> {
    boolean save(OrderDetail orderDetail);

    List<OrderDetail> findByOrderId(String orderId);

    void delete(String id);
}
