#Constraints A
ALTER TABLE took
ADD CONSTRAINT score_range CHECK (
   score >= 0 AND score <= 100
);

#Constraints B
ALTER TABLE student ADD CONSTRAINT new_constraint CHECK ( major is not null and (major like 'CS' or major like 'EE'));

