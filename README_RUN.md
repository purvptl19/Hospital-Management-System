# Hospital Management System - IntelliJ IDEA (Maven)

## 1. Database
MySQL mein:
    CREATE DATABASE hospital;
    USE hospital;
    SOURCE sql/hospital.sql;
DB user/password: root / root
(Badalna ho to src/main/java/Database/DatabaseConnection.java edit karo.)

## 2. IntelliJ mein open karo
File -> Open -> is folder ka `pom.xml` select karo -> "Open as Project".
JDK 8 ya 11 select karo. Maven dependencies apne aap download hongi.

## 3. Run (Tomcat install nahi chahiye)
Right side Maven panel -> Plugins -> tomcat7 -> **tomcat7:run** (double click)
Browser: http://localhost:8080/HospitalManagementSystem/

## 4. Executable JAR banana
Maven panel -> Lifecycle -> package (ya terminal: mvn clean package)
Phir:
    java -jar target/HospitalManagementSystem-1.0-exec.jar
Browser: http://localhost:8080/HospitalManagementSystem/

Admin login: admin / admin
