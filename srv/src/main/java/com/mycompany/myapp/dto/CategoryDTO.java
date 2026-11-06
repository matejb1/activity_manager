package com.mycompany.myapp.dto;


import java.io.Serializable;

public class CategoryDTO implements Serializable {

    private Long id;
    private String name;
    private String trEn;
    private String trSlo;

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
