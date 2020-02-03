

-- insert
-- usersテーブルにnameカラムが「shohei」、emailカラムが「shohei@gmail.com」の新しいレコードを作成する。
INSERT INTO users (name, email) VALUES ('Shohei', 'shohei@gmail.com');

-- select
-- tweetsテーブルから全件取得
SELECT * FROM tweets;

-- tweetsテーブルからuser_idが2のレコードだけ取得
SELECT * FROM tweets WHERE user_id = 2;

-- tweetsテーブルからbodyに深淵を含むレコードだけ取得
SELECT * FROM tweets WHERE body like %深淵%;

-- update
-- tweetsテーブルのbodyカラムを「更新テスト」に変更する。但し、idが5のカラムのみ
UPDATE tweets SET body = '更新テスト' WHERE id = 5;

-- delete
-- tweetsテーブルからidが7のレコードを削除する
DELETE FROM tweets WHERE id = 7; 