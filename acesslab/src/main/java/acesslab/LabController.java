package acesslab;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/labs")
public class LabController {

    private final LabRepository repository;

    public LabController(LabRepository repository) {
        this.repository = repository;
    }

    @GetMapping
    public List<Lab> listar() {
        return repository.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Lab> buscar(@PathVariable Integer id) {
        return repository.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public Lab cadastrar(@RequestBody Lab lab) {
        return repository.save(lab);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Lab> alterar(@PathVariable Integer id, @RequestBody Lab dados) {
        return repository.findById(id)
                .map(lab -> {
                    lab.setNome(dados.getNome());
                    lab.setLocalizacao(dados.getLocalizacao());
                    lab.setCapacidade(dados.getCapacidade());
                    lab.setStatus(dados.getStatus());
                    return ResponseEntity.ok(repository.save(lab));
                })
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> excluir(@PathVariable Integer id) {
        if (!repository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }

        repository.deleteById(id);
        return ResponseEntity.noContent().build();
    }
}