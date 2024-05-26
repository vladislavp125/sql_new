-- Запрос 1: Вывести идентификаторы курсов (предметов).
SELECT courseid FROM course;

--Вывести всю информацию о курсах
SELECT * FROM course

--Вывести идентификатор курса с названием "Machine Learning".
SELECT courseid from cours WHERE coursetitle = 'Machine Learning'


--Вывести название курса с идентификатором 5
SELECT coursetitle from course WHERE courseid = 5


--Вывести список мобильных телефонов (PhoneType = 'cell') из таблицы "PHONE_LIST"
SELECT phone from phone_list
WHERE PhoneType = 'cell'


--Вывести количество отметок, которое получил студент с идентификатором (номером зачетки) 345576
SELECT COUNT(studentid)
FROM exam_result 
WHERE studentid = 345576


--Вывести номера зачеток (идентификаторы студентов) и средние баллы, которые получили студенты за все экзамены
SELECT DISTINCT studentid, AVG(grade)
from exam_result
GROUP by studentid


--Вывести минимальный и максимальный баллы, полученные студентами на экзаменах.--
SELECT MIN(grade), MAX(grade) 
from exam_result


--Найти пересечение идентификаторов студентов, получавших и 2, и 5
SELECT studentid FROM exam_result
where grade = 2
INTERSECT
SELECT studentid FROM exam_result
where grade = 5


--Найти объединение идентификаторов студентов, у которых есть хоть одна двойка и/или хоть одна пятерка
SELECT StudentId FROM EXAM_RESULT WHERE Grade = 2
UNION
SELECT StudentId FROM EXAM_RESULT WHERE Grade = 5