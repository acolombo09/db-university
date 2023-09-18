-- nome repo: db-university

-- Utilizzando lo stesso database di ieri, eseguite le query in allegato.
-- Caricate un secondo file nella stessa repo di ieri (db-university) con
-- le query di oggi.

-------------------------------------------------------------------------------
-- QUERIES
-------------------------------------------------------------------------------

-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
    SELECT `students`.`id`, `students`.`name`, `students`.`surname`, `students`.`degree_id`
    FROM `students`
    INNER JOIN `degrees`
    ON `students`.`degree_id` = `degrees`.`id`
    WHERE `degrees`.`id` = 53;

-- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di
  --Neuroscienze
    SELECT * 
    FROM `departments`
    INNER JOIN `degrees`
    ON `departments`.`id` = `degrees`.`department_id`
    WHERE `departments`.`id` = 7 AND `degrees`.`level` LIKE "%magistrale%"; 

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
    SELECT * 
    FROM `course_teacher`
    WHERE `course_teacher`.`teacher_id` = 44;

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui
  -- sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
    SELECT `degrees`.`name`, `courses`.`name`, `teachers`.`name`, `teachers`.`surname`
    FROM `degrees`
    INNER JOIN `courses`
      ON `courses`.`degree_id` = `degrees`.`id`
    INNER JOIN `course_teacher`
    INNER JOIN `teachers`
      ON `courses`.`id` = `course_teacher`.`course_id`
      AND `course_teacher`.`teacher_id` = `teachers`.`id`;

-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)

-- 7. BONUS: Selezionare per ogni studente il numero di tentativi sostenuti
  -- per ogni esame, stampando anche il voto massimo. Successivamente,
  -- filtrare i tentativi con voto minimo 18.
