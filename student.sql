GRANT ALL ON * . * TO 'benz'@'%';

CREATE TABLE `major` (
  `major_id` varchar(1) NOT NULL,
  `major-name` varchar(75) NOT NULL
);


INSERT INTO `major` (`major_id`, `major-name`) VALUES
('1', 'วิทยาการคอมพิวเตอร์'),
('2', 'เทคโนโลยีสารสนเทศ'),
('3', 'วิทยาการข้อมูล'),
('4', 'วิทยาศาสตร์การกีฬา'),
('5', 'สาธารณสุขศาสตร์');


ALTER TABLE `major`
  ADD PRIMARY KEY (`major_id`);
COMMIT;


CREATE TABLE `student` (
  `id` varchar(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `major_id` varchar(1) NOT NULL
);


INSERT INTO `student` (`id`, `fname`, `lname`, `phone`, `major_id`) VALUES
('65042380102', 'เอกรัตน์', 'ใจชนะ', '0987654321', '1'),
('65042380107', 'ณัฐพงษ์', 'เต็มบาง', '0123456789', '1');


ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `major-id` (`major_id`);

ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`);
COMMIT;