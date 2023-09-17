select recept_id, m_item.name, m_item.price from t_recept_detail
inner join m_item on t_recept_detail.item_id = m_item.item_id;