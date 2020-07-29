package Models;

public interface MyModelInt {
    void getBase();
    void addStudent(String nameSt, String surnameSt, int scoreSt, String nameGr);
    void addGroup(Group group);
    void redactStudent(String studentId, String nameSt, String surnameSt, int scoreSt);
    void moveStudent(String studentId, String groupName);
    void dellStudent(String studentName);
    void dellGroup(String groupName);

}
