use clinica_medica;
show tables;
desc pacientes;
select * from pacientes;
select * from medicos;
select * from agendamentos;
-- Listar os pacientes nascidos depois de 01/01/1990
select nome,data_nascimento,telefone from pacientes
where data_nascimento > "1990-01-01";

-- LISTAR PARA CADA CONSULTA, O  NOME DO PACIENTE, DATA E TIPO.
select pacientes.nome, agendamentos.data_hora, agendamentos.tipo_consulta
from pacintes left join agendamentos on pacientes.id = agendamentos.pacintes_id;



select medicos.nome, agendamento.data_hora, agendamentos.tipo_consulta 
from  medicos left join agendamentos
on  medicos.id = agendamentos.medicos_id;

-- DESAFIO: LISTAR AS CONSULTAS INCLUIDO  O NOME DO PACIENTE E DO MEDICO
select pacientes.nome paciente, medicos.nome medico, agendamentos.data_hora,
agendamentos.tipo_consulta from pacientes join agendamentos
on pacientes.id = agendamentos.paciente_id join medicos
on medicos.id =  agendamentos.medico_id;




