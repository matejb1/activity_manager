package com.mycompany.myapp.dto;

public class StatisticsDTO {
    private long countActivities;
    private double sumDurationSport;
    private double sumDurationEducation;
    private double sumDurationTasks;
    private double sumDurationArt;
    private double sumDurationOther;

    private long countSport;
    private long countEducation;
    private long countTasks;
    private long countArt;
    private long countOther;

    public long getCountActivities() {
        return countActivities;
    }

    public void setCountActivities(long countActivities) {
        this.countActivities = countActivities;
    }

    public double getSumDurationSport() {
        return sumDurationSport;
    }

    public void setSumDurationSport(double sumDurationSport) {
        this.sumDurationSport = sumDurationSport;
    }

    public double getSumDurationEducation() {
        return sumDurationEducation;
    }

    public void setSumDurationEducation(double sumDurationEducation) {
        this.sumDurationEducation = sumDurationEducation;
    }

    public double getSumDurationTasks() {
        return sumDurationTasks;
    }

    public void setSumDurationTasks(double sumDurationTasks) {
        this.sumDurationTasks = sumDurationTasks;
    }

    public double getSumDurationArt() {
        return sumDurationArt;
    }

    public void setSumDurationArt(double sumDurationArt) {
        this.sumDurationArt = sumDurationArt;
    }

    public double getSumDurationOther() {
        return sumDurationOther;
    }

    public void setSumDurationOther(double sumDurationOther) {
        this.sumDurationOther = sumDurationOther;
    }

    public long getCountSport() {
        return countSport;
    }

    public void setCountSport(long countSport) {
        this.countSport = countSport;
    }

    public long getCountEducation() {
        return countEducation;
    }

    public void setCountEducation(long countEducation) {
        this.countEducation = countEducation;
    }

    public long getCountTasks() {
        return countTasks;
    }

    public void setCountTasks(long countTasks) {
        this.countTasks = countTasks;
    }

    public long getCountArt() {
        return countArt;
    }

    public void setCountArt(long countArt) {
        this.countArt = countArt;
    }

    public long getCountOther() {
        return countOther;
    }

    public void setCountOther(long countOther) {
        this.countOther = countOther;
    }
}
