SELECT id, (SELECT COUNT(*) FROM vk.messages WHERE from_users_id=users.id OR to_users_id=users.id) AS messages_count FROM vk.users ORDER BY messages_count;