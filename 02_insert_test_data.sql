INSERT INTO study_groups (group_name, admission_year, course_number) VALUES
('ИВТ-101', 2023, 3),
('ИВТ-102', 2023, 3),
('ПМИ-201', 2022, 4),
('БИ-301', 2021, 5),
('ИВТ-103', 2024, 2);

INSERT INTO teachers (last_name, first_name, email) VALUES
('Иванов', 'Иван', 'i.ivanov@university.ru'),
('Петров', 'Пётр', 'p.petrov@university.ru'),
('Сидорова', 'Мария', 'm.sidorova@university.ru'),
('Кузнецов', 'Алексей', 'a.kuznetsov@university.ru'),
('Смирнова', 'Елена', 'e.smirnova@university.ru'),
('Волков', 'Дмитрий', 'd.volkov@university.ru');

INSERT INTO subjects (subject_name, hours) VALUES
('Базы данных', 72),
('Алгоритмы и структуры данных', 108),
('Программирование на Python', 144),
('Математический анализ', 108),
('Операционные системы', 72),
('Компьютерные сети', 72),
('Машинное обучение', 108);

INSERT INTO assignments (teacher_id, subject_id, group_id, academic_year, semester) VALUES
(1, 1, 1, '2024-2025', 1),
(1, 1, 2, '2024-2025', 1),
(1, 3, 1, '2024-2025', 2),
(2, 2, 1, '2024-2025', 1),
(2, 2, 3, '2024-2025', 1),
(3, 4, 1, '2024-2025', 1),
(3, 4, 2, '2024-2025', 2),
(3, 5, 3, '2024-2025', 2),
(4, 5, 4, '2024-2025', 1),
(4, 6, 4, '2024-2025', 2),
(5, 7, 3, '2024-2025', 2),
(5, 1, 3, '2024-2025', 1),
(6, 6, 2, '2024-2025', 2),
(2, 3, 4, '2024-2025', 2);
