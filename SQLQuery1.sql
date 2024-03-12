Use Agenda;
----- CRIAÇÃO DA TABELA
CREATE TABLE Contatos(nome varchar(50),
			email varchar(50),
			telefone varchar(50),
			grupo varchar(50));

---- INSERINDO PRIMEIRO DADO
INSERT INTO Contatos(nome, email, telefone, grupo) VALUES('Antonio','antoniomarcos3577@gmail.com', '16988016699','Rede social');

---- INSERINDO MAIS 49 DADOS
-- Dados de exemplo
INSERT INTO Contatos(nome, email, telefone, grupo) VALUES
('Maria', 'mariasilva123@gmail.com', '16988017777', 'Trabalho'),
('João', 'joaodasilva456@gmail.com', '16988018888', 'Família'),
('Ana', 'anafernandes789@gmail.com', '16988019999', 'Amigos'),
('Carlos', 'carlosrodrigues1010@gmail.com', '16988012222', 'Conhecidos'),
('Mariana', 'marianalima2020@gmail.com', '16988013333', 'Rede social'),
('Pedro', 'pedroalmeida2323@gmail.com', '16988014444', 'Trabalho'),
('Camila', 'camilasouza3434@gmail.com', '16988015555', 'Família'),
('Lucas', 'lucasferreira4545@gmail.com', '16988016666', 'Amigos'),
('Isabela', 'isabelalopes5656@gmail.com', '16988017777', 'Conhecidos'),
('Gabriel', 'gabrielmartins6767@gmail.com', '16988018888', 'Rede social'),
('Juliana', 'julianapereira7878@gmail.com', '16988019999', 'Trabalho'),
('Rodrigo', 'rodrigosantos8989@gmail.com', '16988010000', 'Família'),
('Fernanda', 'fernandasilva1010@gmail.com', '16988011111', 'Amigos'),
('Guilherme', 'guilhermemelo1212@gmail.com', '16988012222', 'Conhecidos'),
('Larissa', 'larissalima1313@gmail.com', '16988013333', 'Rede social'),
('Rafael', 'rafaeloliveira1414@gmail.com', '16988014444', 'Trabalho'),
('Patricia', 'patriciavieira1515@gmail.com', '16988015555', 'Família'),
('Fábio', 'fabiosilva1616@gmail.com', '16988016666', 'Amigos'),
('Renata', 'renatamartins1717@gmail.com', '16988017777', 'Conhecidos'),
('Felipe', 'feliperocha1818@gmail.com', '16988018888', 'Rede social'),
('André', 'andrecosta1919@gmail.com', '16988019999', 'Trabalho'),
('Bianca', 'biancamelo2020@gmail.com', '16988010000', 'Família'),
('Gustavo', 'gustavocarvalho2121@gmail.com', '16988011111', 'Amigos'),
('Tatiane', 'tatianesilva2222@gmail.com', '16988012222', 'Conhecidos'),
('Eduardo', 'eduardonascimento2323@gmail.com', '16988013333', 'Rede social'),
('Laura', 'laurasilva2424@gmail.com', '16988014444', 'Trabalho'),
('Ricardo', 'ricardomartins2525@gmail.com', '16988015555', 'Família'),
('Vitor', 'vitorsantos2626@gmail.com', '16988016666', 'Amigos'),
('Carolina', 'carolribeiro2727@gmail.com', '16988017777', 'Conhecidos'),
('Fernando', 'fernandoalves2828@gmail.com', '16988018888', 'Rede social'),
('Natália', 'natalialima2929@gmail.com', '16988019999', 'Trabalho'),
('Vinícius', 'viniciuscosta3030@gmail.com', '16988010000', 'Família'),
('Aline', 'alinepereira3131@gmail.com', '16988011111', 'Amigos'),
('Diego', 'diegomelo3232@gmail.com', '16988012222', 'Conhecidos'),
('Mirella', 'mirellasilva3333@gmail.com', '16988013333', 'Rede social'),
('Henrique', 'henriqueoliveira3434@gmail.com', '16988014444', 'Trabalho'),
('Patrícia', 'patriciacampos3535@gmail.com', '16988015555', 'Família'),
('Marcelo', 'marcelorodrigues3636@gmail.com', '16988016666', 'Amigos'),
('Caroline', 'carolinealves3737@gmail.com', '16988017777', 'Conhecidos'),
('Roberto', 'robertosantos3838@gmail.com', '16988018888', 'Rede social'),
('Vanessa', 'vanessamartins3939@gmail.com', '16988019999', 'Trabalho'),
('Luciana', 'lucianasilva4040@gmail.com', '16988010000', 'Família'),
('Jorge', 'jorgecosta4141@gmail.com', '16988011111', 'Amigos'),
('Beatriz', 'beatrizpereira4242@gmail.com', '16988012222', 'Conhecidos'),
('Alexandre', 'alexandreoliveira4343@gmail.com', '16988013333', 'Rede social'),
('Natalia', 'nataliacampos4444@gmail.com', '16988014444', 'Trabalho'),
('Renan', 'renanrodrigues4545@gmail.com', '16988015555', 'Família'),
('Isabel', 'isabelmelo4646@gmail.com', '16988016666', 'Amigos'),
('Julio', 'juliocarvalho4747@gmail.com', '16988017777', 'Conhecidos'),
('Fabiana', 'fabianasilva4848@gmail.com', '16988018888', 'Rede social'),
('José', 'josesantos4949@gmail.com', '16988019999', 'Trabalho');

---- VERIFICANDO DADOS DE FORMAS VARIADAS

SELECT * FROM Contatos;

SELECT nome FROM Contatos;

SELECT * FROM Contatos
WHERE nome LIKE 'A%';

SELECT * FROM Contatos
WHERE grupo in('Amigos', 'Trabalho');

---- ATUALIZANDO REGISTROS

UPDATE Contatos
SET nome = 'Antonio Marcos'
WHERE telefone = '16988016699';

UPDATE Contatos
SET email = NULL
WHERE grupo = 'Amigos';


---- APAGANDO CONTATOS

DELETE FROM Contatos 
WHERE grupo = 'Conhecidos';

---- INCLUINDO OPÇÃO DE FAVORITO

ALTER TABLE Contatos
ADD situacao varchar(255);

---- ADICIONANDO SITUAÇÃO

UPDATE Contatos
SET situacao = 'Favorito'
WHERE grupo = 'Amigos';

UPDATE Contatos 
SET situacao = 'Favorito'
WHERE grupo = 'Família';

UPDATE Contatos
SET situacao = 'Não-Favorito'
WHERE NOT grupo IN ('Família', 'Amigos');
