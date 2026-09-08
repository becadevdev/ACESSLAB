package acesslab;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "lab")
public class Lab {

    @Id
    private Integer id_lab;

    private String nome;
    private String localizacao;
    private Integer capacidade;
    private String status;

    public Integer getId_lab() {
        return id_lab;
    }

    public void setId_lab(Integer id_lab) {
        this.id_lab = id_lab;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getLocalizacao() {
        return localizacao;
    }

    public void setLocalizacao(String localizacao) {
        this.localizacao = localizacao;
    }

    public Integer getCapacidade() {
        return capacidade;
    }

    public void setCapacidade(Integer capacidade) {
        this.capacidade = capacidade;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}