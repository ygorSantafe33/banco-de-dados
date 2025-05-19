use clinica_medica;
show tables;
desc agendamentos;
select * from agendamentos;

insert into agendamentos(paciente_id,medico_id,data_hora,
tipo_consulta,status) VALUES 
(2,1,"2025-05-19 09:00","checkup geral","consulta realizada"),
(4,3,"2025-05-26 16:00","diagnostico de abdiminal","agendada"),
(2,3,"2025-06-02 14:00","diagnostico de dor de cabeça","agendada"),
(5,2,"2025-05-19 11:00","retorno com resultado de exames","consulta realizada");

# LISTAR A QUANTIDADE DE CONSULTAS POR MÉDICO
SELECT medicos.nome, count(agendamentos.id)
from medicos join agendamentos
on medicos,id = agendamentos.medico_id GROUP BY medico_nome;

