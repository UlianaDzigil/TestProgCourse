package Models;

import java.util.ArrayList;

public class Group implements GroupInt{
    public String name;
    public ArrayList<Student> students;

    public Group(String name, ArrayList<Student> students){
        this.name = name;
        this.students = students;
    }
    public Group(String name){
        this.name = name;
        ArrayList<Student> st = new ArrayList<>();
        this.students = st;
    }

    @Override
    public String toString() {
        return this.getName();
    }

    public ArrayList<Student> getAllStudents(){
        if(this.students == null){
            ArrayList<Student> sty = new ArrayList<>();
            return sty;
        }else {
            return (ArrayList<Student>) this.students.clone();
        }
    }
    public void addOneStudent(Student stu){
        this.students.add(stu);
    }

    public String getName(){
        return this.name;
    }
}
