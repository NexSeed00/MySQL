

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


-- JOIN(INNNER JOIN)
-- 2つのテーブルを結合する。
-- tasksテーブルのuser_idとusersテーブルのidが一致するレコードを合体させる
-- 両方のテーブルに存在するレコードだけ取得
-- (tasksテーブルにuser_idが1のレコードがあっても、usersテーブルにidが1のレコードがない場合、出力されない)
SELECT * FROM tasks JOIN users ON tasks.user_id = users.id


-- JOIN(OUTER JOIN)
-- 基本はINNER JOINと一緒
-- 条件に一致するメインテーブル(FROMの後に書いてあるテーブル)のレコードは全て出力する
-- (tasksテーブルにuser_idが1のレコードがあれば、usersテーブルにidが1のレコードがない場合でも出力される)
SELECT * FROM tasks LEFT JOIN users ON tasks.user_id = users.id

-- 通常のSELECT文同様WHEREで条件の指定も可能
-- どのテーブルのカラムかわかるようにテーブル名.idという形で指定する
SELECT * FROM tasks LEFT JOIN users ON tasks.user_id = users.id WHERE users.id = 1