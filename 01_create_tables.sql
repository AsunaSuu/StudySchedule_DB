DROP TABLE IF EXISTS assignments CASCADE;
DROP TABLE IF EXISTS study_groups CASCADE;
DROP TABLE IF EXISTS teachers CASCADE;
DROP TABLE IF EXISTS subjects CASCADE;

CREATE TABLE study_groups (
    group_id SERIAL PRIMARY KEY,
    group_name VARCHAR(50) NOT NULL UNIQUE,
    admission_year INTEGER NOT NULL CHECK (admission_year BETWEEN 1990 AND 2026),
    course_number INTEGER NOT NULL CHECK (course_number BETWEEN 1 AND 6)
);

CREATE TABLE teachers (
    teacher_id SERIAL PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE CHECK (email ~ '^[^@]+@[^@]+\.[^@]+$')
);

CREATE TABLE subjects (
    subject_id SERIAL PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL UNIQUE,
    hours INTEGER NOT NULL CHECK (hours > 0)
);

CREATE TABLE assignments (
    assignment_id SERIAL PRIMARY KEY,
    teacher_id INTEGER NOT NULL REFERENCES teachers(teacher_id) ON DELETE CASCADE,
    subject_id INTEGER NOT NULL REFERENCES subjects(subject_id) ON DELETE CASCADE,
    group_id INTEGER NOT NULL REFERENCES study_groups(group_id) ON DELETE CASCADE,
    academic_year VARCHAR(9) NOT NULL CHECK (academic_year ~ '^[0-9]{4}-[0-9]{4}$'),
    semester INTEGER NOT NULL CHECK (semester IN (1, 2)),
    UNIQUE (teacher_id, subject_id, group_id, academic_year, semester)
);

CREATE INDEX idx_assignments_teacher ON assignments(teacher_id);
CREATE INDEX idx_assignments_subject ON assignments(subject_id);
CREATE INDEX idx_assignments_group ON assignments(group_id);
CREATE INDEX idx_assignments_period ON assignments(academic_year, semester);
