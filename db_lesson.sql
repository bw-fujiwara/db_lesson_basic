Q1
 CREATE TABLE departments (
    -> department_id INT unsignued AUTO_INCREMENT PRIMARY KEY,
    -> name VARCHAR(20) NOT NULL,
    -> created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -> updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    -> );

Q2
ALTER TABLE people ADD depatment_id INT unsigned ;

Q3
INSERT INTO departments (name)
    ->  VALUES
    -> ('営業')  
    -> ('開発') 
    -> ('経理'), 
    -> ('人事'),
    -> ('情報システム');

INSERT INTO people (department_id, name, email, age, gender)
  　-> VALUES
    ->  (1, '山田', NULL, 21, 1),
    ->  (1, '佐藤', NULL, 22, 2),
    ->  (1, '太田', NULL, 23, 1),
    ->  (2, '斎藤', NULL, 24, 2),
    ->  (2, '田口', NULL, 25, 1),
    ->  (2, '葉山', NULL, 26, 2),
    ->  (2, '笹原', NULL, 27, 1),
    ->  (3, '坂口', NULL, 28, 2),
    ->  (4, '星野', NULL, 29, 1),
    ->  (5, '花山', NULL, 30, 2);

INSERT INTO reports (person_id, content)
    -> VALUES
    ->  (18, 'あいうえおかきくけこ'),
    ->  (19, 'あいうえおさしすせそ'),
    ->  (21, 'あいうえおなにぬねの'),
    ->  (20, 'あいうえおたちつてと'),
    ->  (22, 'あいうえおはひふへほ'),
    ->  (23, 'あいうえおまみむめも'),
    ->  (24, 'あいうえおらりるれろ'),
    ->  (25, 'かきくけこあいうえお'),
    ->  (26, 'かきくけこさしすせそ'),
    ->  (27, 'かきくけこたちつてと');

Q4
UPDATE people SET department_id = 3 WHERE person_id = 1;
UPDATE people SET department_id = 4 WHERE person_id = 2;
UPDATE people SET department_id = 5 WHERE person_id = 3;
UPDATE people SET department_id = 3 WHERE person_id = 4;
UPDATE people SET department_id = 4 WHERE person_id = 6;

Q5
 SELECT name, age FROM people WHERE gender =1 ORDER BY age DESC;

Q6
created_atカラムの値を基準とした昇順でpeopleレコードのdepartment_idが1となっているテーブルをname、email、ageのカラムのみ取得して表示する

Q7
SELECT name FROM people WHERE gender = 2 AND age >= 20 AND age < 30 OR gender =1 AND age >=40 AND age < 50
    -> ;

Q8
SELECT * FROM people WHERE department_id = 1 ORDER BY AGE ASC;

Q9
SELECT AVG(age) AS average_age FROM people WHERE gender = 2 AND department_id = 2;

Q10
SELECT people.name, departments.name, content FROM people INNER JOIN reports ON people.person_id = reports.person_id INNER JOIN departments ON people.department_id = departments.department_id;

Q11
SELECT people.name FROM people LEFT OUTER JOIN reports ON people.person_id = reports.person_id LEFT OUTER JOIN departments ON people.department_id = departments.department_id WHERE content IS NULL;