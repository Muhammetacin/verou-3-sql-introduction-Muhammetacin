# 3.1 Get all data from the groups
SELECT * FROM groups;

# 3.2 Get the name and email of the first learner, and alias the name to learner_name
SELECT name AS "learner_name", email FROM learners 
WHERE id = 1;

# 4.1 Update the start date of the first_group (make it two months later)
UPDATE groups
SET start_date = DATE_ADD(start_date, INTERVAL 2 MONTH)
WHERE id = 1;

## Show it
SELECT * FROM groups
WHERE id = 1;

# 4.2 Introduce a new field status which can contain a long text indicating the reason for postponing (bonus points if it's a creative one)
ALTER TABLE groups
ADD COLUMN IF NOT EXISTS status TEXT AFTER max_participants;

UPDATE groups
SET status = "Snorlax is blocking the way. Perhaps playing flute might wake him up?"
WHERE id = 1;

## Show it
SELECT * FROM groups;

# 5. One of the learners changed his/her mind and decided to be an astronaut: Delete someone from the learners table (learnerX)
SELECT * FROM learners;
DELETE FROM learners WHERE id = 3;
SELECT * FROM learners;



##### NICE TO HAVE's #####

# 6. A learner belongs to a group, and a group has a coach
# Find a technique to make this connection in the database (what of the field is unique to a record, so we can refer to it?)
ALTER TABLE learners
ADD COLUMN IF NOT EXISTS group_id INT(3) AFTER id;

UPDATE learners
SET group_id = 1
WHERE id = 1;

UPDATE learners
SET group_id = 1
WHERE id = 2;

ALTER TABLE groups
ADD COLUMN IF NOT EXISTS coach_id INT(3) AFTER id;

UPDATE groups
SET coach_id = 1
WHERE id = 1;

UPDATE groups
SET coach_id = 2
WHERE id = 2;

UPDATE groups
SET coach_id = 3
WHERE id = 3;

UPDATE groups
SET coach_id = 4
WHERE id = 3;

## Show it
SELECT * FROM learners
LEFT JOIN groups
ON learners.group_id = groups.id;

SELECT * FROM groups
LEFT JOIN coaches
ON groups.coach_id = coaches.id;

# 7.1 We want all the data: Select a coach and all related groups
SELECT * FROM coaches
JOIN groups ON group_id = groups.id
JOIN learners ON groups.id = learners.id
WHERE name = "Bert";

# 7.2 We want all the data: Select all the above, but also all learners from this group who are still active
SELECT * FROM coaches
JOIN groups ON group_id = groups.id
JOIN learners ON groups.id = learners.id
WHERE (coaches.name = "Bert" AND learners.active = TRUE);
