package com.mycompany.myapp.domain;

import jakarta.persistence.*;

import java.io.Serializable;
import java.sql.Time;
import java.time.LocalDate;

@Entity
@Table(name = "RST_CATEGORY")
public class Category extends AbstractAuditingEntity<Long> implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "NAME", length = 255)
    private String name;

    @Column(name = "TR_EN", length = 255)
    private String trEn;

    @Column(name = "TR_SLO", length = 255)
    private String trSlo;

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

    public String getTrEn() {
        return trEn;
    }

    public void setTrEn(String trEn) {
        this.trEn = trEn;
    }

    public String getTrSlo() {
        return trSlo;
    }

    public void setTrSlo(String trSlo) {
        this.trSlo = trSlo;
    }
}
