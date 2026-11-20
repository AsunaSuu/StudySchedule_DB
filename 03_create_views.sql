DROP VIEW IF EXISTS v_assignments_full CASCADE;
DROP VIEW IF EXISTS v_teacher_subjects CASCADE;
DROP VIEW IF EXISTS v_group_subjects CASCADE;

CREATE VIEW v_assignments_full AS
SELECT
    g.group_name,
    s.subject_name,
    s.hours,
    t.last_name,
    t.first_name,
    t.email,
    a.academic_year,
    a.semester
FROM assignments a
JOIN study_groups g ON a.group_id = g.group_id
JOIN subjects s ON a.subject_id = s.subject_id
JOIN teachers t ON a.teacher_id = t.teacher_id;

CREATE VIEW v_teacher_subjects AS
SELECT
    t.last_name,
    t.first_name,
    t.email,
    s.subject_name,
    s.hours,
    g.group_name,
    a.academic_year,
    a.semester
FROM teachers t
JOIN assignments a ON t.teacher_id = a.teacher_id
JOIN subjects s ON a.subject_id = s.subject_id
JOIN study_groups g ON a.group_id = g.group_id;

CREATE VIEW v_group_subjects AS
SELECT
    g.group_name,
    g.course_number,
    g.admission_year,
    s.subject_name,
    s.hours,
    t.last_name,
    t.first_name,
    a.academic_year,
    a.semester
FROM study_groups g
JOIN assignments a ON g.group_id = a.group_id
JOIN subjects s ON a.subject_id = s.subject_id
JOIN teachers t ON a.teacher_id = t.teacher_id;
