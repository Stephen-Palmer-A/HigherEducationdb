CREATE TABLE "Lecturer" (
  "lecturer_id" Integer,
  "first_name" varchar,
  "last_name" varchar,
  "email" varchar,
  "phone_number" varchar,
  "Dob" date,
  "Gender" VARCHAR,
  "Contact_number" VARCHAR
);

CREATE TABLE "Student" (
  "Students_id" integer,
  "First_name" varchar,
  "Last_name" varchar,
  "Email" varchar,
  "Phone_numberv" varchar,
  "Dob" date,
  "Gender" varchar,
  "department_id" integer
);

CREATE TABLE "department" (
  "Department_id" integer,
  "Name" varchar,
  "Code" integer,
  "Faculty_id" integer,
  "Office_area" varchar,
  "Email" varchar,
  "Phone_number" varchar,
  "offering_id" integer,
  "lecturer_id" integer,
  "student_id" integer
);

CREATE TABLE "offering" (
  "Offering_id" integer,
  "Course_id" integer,
  "Lecturer_id" integer,
  "Semester" varchar,
  "Academic_year" year,
  "Location" varchar,
  "course_id" integer
);

CREATE TABLE "course" (
  "Course_id" integer,
  "Course_code" varchar,
  "Title" varchar,
  "Scope" text,
  "Credit_hours" integer,
  "Level" varchar,
  "Department_id" integer,
  "offering_id" integer
);

ALTER TABLE "course" ADD FOREIGN KEY ("offering_id") REFERENCES "offering" ("Offering_id");

ALTER TABLE "department" ADD FOREIGN KEY ("offering_id") REFERENCES "offering" ("Offering_id");

ALTER TABLE "department" ADD FOREIGN KEY ("lecturer_id") REFERENCES "Lecturer" ("lecturer_id");

ALTER TABLE "offering" ADD FOREIGN KEY ("course_id") REFERENCES "course" ("Course_id");

ALTER TABLE "Student" ADD FOREIGN KEY ("department_id") REFERENCES "department" ("Department_id");
