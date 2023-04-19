-- USANDO CASCADE --

-- DELETE CASCADE

SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM aluno_curso;

DELETE FROM aluno WHERE id=1;


DROP TABLE aluno_curso;
CREATE TABLE aluno_curso(
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY(aluno_id, curso_id),
	FOREIGN KEY(aluno_id) 
	REFERENCES aluno (id)
	ON DELETE CASCADE,
	FOREIGN KEY(curso_id) 
	REFERENCES curso (id)
)

-- UPDATE CASCADE --

UPDATE aluno
SET id = 10
WHERE id = 2;

DROP TABLE aluno_curso;
CREATE TABLE aluno_curso(
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY(aluno_id, curso_id),
	FOREIGN KEY(aluno_id) 
	REFERENCES aluno (id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY(curso_id) 
	REFERENCES curso (id)
)

