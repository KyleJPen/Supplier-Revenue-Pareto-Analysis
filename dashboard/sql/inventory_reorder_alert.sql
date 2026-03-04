SELECT
    i.sku,
    i.warehouse_id,
    i.units_on_hand,
    i.reorder_point
FROM inventory i
WHERE i.units_on_hand < i.reorder_point
ORDER BY i.units_on_hand ASC;
