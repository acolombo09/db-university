-- nome repo: db-university

-- Utilizzando lo stesso database di ieri, eseguite le query in allegato.
-- Caricate un secondo file nella stessa repo di ieri (db-university) con
-- le query di oggi.

-------------------------------------------------------------------------------
-- QUERIES
-------------------------------------------------------------------------------

-- 1. Contare quanti iscritti ci sono stati ogni anno
    SELECT YEAR(`enrolment_date`) as year, COUNT(*) 
    FROM `students`
    GROUP BY year;
-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
    SELECT (`office_address`)  as SedeUfficio, COUNT(*) 
    FROM `teachers`
    GROUP BY SedeUfficio;
-- 3. Calcolare la media dei voti di ogni appello d'esame
    SELECT (`exam_id`), AVG(`vote`) as MediaVoti, COUNT(*) as EsamiEseguiti
    FROM `exam_student`
    GROUP BY `exam_id`;
-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
    SELECT `department_id` as dipartimento, COUNT(`id`) as numeroCorsi
    FROM `degrees`
    GROUP BY `department_id`;
