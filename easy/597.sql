SELECT ROUND(IFNULL(COUNT(DISTINCT tb2.requester_id, tb2.accepter_id) / COUNT(DISTINCT tb1.sender_id, tb1.send_to_id),0),2) AS accept_rate
FROM friend_request tb1, request_accepted tb2;
