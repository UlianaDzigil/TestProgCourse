package Models;

import java.util.ArrayList;

public class MyModel implements MyModelInt{
    public ArrayList<Group> groups;
    boolean isBaseReady;

    public MyModel(ArrayList<Group> groups) {
        this.groups = groups;
    }
    public MyModel() {
        this.isBaseReady = false;
    }

    public void addGroup(Group group){
        this.groups.add(group);
    }

    public void dellGroup(String groupName){
        for (Group group : this.groups) {
            String grName = group.name;
            if(grName.equalsIgnoreCase(groupName)){
                this.groups.remove(group);
                break;

            }
        }
    }

    public void dellStudent(String studentID){
        Group groupToDell = this.groups.get(0);
        Integer ind = 0;
        for (Group group : this.groups) {
            for (Student stu: group.students) {
                String stID = stu.getId();

                if (stID.equalsIgnoreCase(studentID)) {
                    groupToDell = group;
                    ind =  this.groups.indexOf(group);
                }
            }
        }
        ArrayList<Student> newSt = new ArrayList<>();

        for (Student stu: groupToDell.students) {
            String stID = stu.getId();

            if (stID.equalsIgnoreCase(studentID) == false) {
                newSt.add(stu);
            }
        }
        Group newGr = new Group(groupToDell.getName(), newSt);
        this.groups.set(ind, newGr);

    }

    public void moveStudent(String studentId, String groupName){

        boolean studentExist = false;
        Group groupToDell = this.groups.get(0);
        Integer ind = 0;
        for (Group group : this.groups) {
            for (Student stu: group.students) {
                String stId = stu.getId();

                if (stId.equalsIgnoreCase(studentId)) {
                    groupToDell = group;
                    ind =  this.groups.indexOf(group);
                    studentExist = true;
                }
            }
        }
        if(studentExist == true) {
            Student foundStudent = new Student("0", "0", 0);
            ArrayList<Student> newSt = new ArrayList<>();

            for (Student stu : groupToDell.students) {
                String stId = stu.getId();

                if (stId.equalsIgnoreCase(studentId) == false) {
                    newSt.add(stu);
                } else {
                    foundStudent = stu;
                }
            }
            Group newGr = new Group(groupToDell.getName(), newSt);
            this.groups.set(ind, newGr);

            int i = 0;
            for (Group group : this.groups) {
                String grName = group.name;
                if (grName.equalsIgnoreCase(groupName)) {
                        group.addOneStudent(foundStudent);
                        i = 1;
                }
            }
            if (i == 0) {
                for (Group group : this.groups) {
                    if (group.getName() == "other") {
                        group.addOneStudent(foundStudent);
                    }
                }
            }
        }

    }

    public void redactStudent(String studentId, String nameSt, String surnameSt, int scoreSt){
        Group groupToDell = this.groups.get(0);
        Integer ind = 0;
        for (Group group : this.groups) {
            for (Student stu: group.students) {
                String stId = stu.getId();

                if (stId.equalsIgnoreCase(studentId)) {
//                    stu.setName(nameSt);
//                    stu.setSurname(surnameSt);
//                    stu.setAverageScore(scoreSt);
                    groupToDell = group;
                    ind =  this.groups.indexOf(group);
                }
            }
        }
        ArrayList<Student> newSt = new ArrayList<>();

        for (Student stu: groupToDell.students) {
            String stId = stu.getId();

            if (stId.equalsIgnoreCase(studentId) == false) {
                newSt.add(stu);
            }else{
                stu.setName(nameSt);
                stu.setSurname(surnameSt);
                stu.setAverageScore(scoreSt);
                newSt.add(stu);
            }
        }
        Group newGr = new Group(groupToDell.getName(), newSt);
        this.groups.set(ind, newGr);

    }


    public void addStudent(String nameSt, String surnameSt, int scoreSt, String nameGr){
        int i = 0;
        Student st = new Student(nameSt, surnameSt, scoreSt);
        for (Group group : this.groups) {
            String grName = group.name;
            if(grName.equalsIgnoreCase(nameGr)){
                group.addOneStudent(st);
                i = 1;
            }
        }
        if (i == 0){
            for (Group group : this.groups) {
                if (group.getName() == "other"){
                    group.addOneStudent(st);
                }
            }
        }
    }

    public ArrayList<String> AllStudents(){
        ArrayList<String> result = new ArrayList<>();
        for (Group g : this.groups){
            for (Student st: g.getAllStudents()){
                String res ="  " + st.getName()+ "  " + st.getSurname();
                result.add(res);
            }
        }
        return result;
    }

    public ArrayList<Group> getGroups() {
        return groups;
    }

    public void setGroups(ArrayList<Group> groups) {
        this.groups = groups;
    }

    public void getBase(){
        if(this.isBaseReady == false) {
            Student s1 = new Student("Emily", "Smith", 80);
            Student n1 = new Student("Jack", "Brown", 100);
            Student n2 = new Student("Isabella", "Johnson", 100);
            Student n3 = new Student("Thomas", "Jones", 100);
            Student n4 = new Student("Harry", "Davis", 99);
            Student s2 = new Student("Olivia", "Wilson", 80);

            ArrayList<Student> smallStudList = new ArrayList<>();
            smallStudList.add(s1);
            smallStudList.add(s2);


            ArrayList<Student> bigStudList = new ArrayList<>();
            bigStudList.add(n1);
            bigStudList.add(n2);
            bigStudList.add(n3);
            bigStudList.add(n4);

            Group g1 = new Group("g", bigStudList);
            Group other = new Group("other");

            Group g2 = new Group("c", smallStudList);
            ArrayList<Group> myGroups = new ArrayList<>();
            myGroups.add(g1);
            myGroups.add(g2);
            myGroups.add(other);

            this.groups = myGroups;

            this.isBaseReady = true;
        }
    }
}