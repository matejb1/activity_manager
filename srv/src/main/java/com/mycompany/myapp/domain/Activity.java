package com.mycompany.myapp.domain;

import jakarta.persistence.*;

import java.io.Serializable;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name = "RST_ACTIVITY")
public class Activity extends AbstractAuditingEntity<Long> implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @ManyToOne(targetEntity = User.class)
    @JoinColumn(name = "ID_USER")
    private User user;

    @Column(name = "NAME", length = 255)
    private String name;

    @Column(name = "DESCRIPTION", length = 255)
    private String description;

    @Column(name = "DATE_OF_ACTIVITY")
    private LocalDate dateOfActivity;

    @Column(name = "TIME_START")
    private LocalDateTime timeStart;

    @Column(name = "DURATION")
    private double duration;

    @ManyToOne(targetEntity = Category.class)
    @JoinColumn(name = "ID_CATEGORY")
    private Category category;

    @Override
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDate getDateOfActivity() {
        return dateOfActivity;
    }

    public void setDateOfActivity(LocalDate dateOfActivity) {
        this.dateOfActivity = dateOfActivity;
    }

    public LocalDateTime getTimeStart() {
        return timeStart;
    }

    public void setTimeStart(LocalDateTime timeStart) {
        this.timeStart = timeStart;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public double getDuration() {
        return duration;
    }

    public void setDuration(double duration) {
        this.duration = duration;
    }
}
