SELECT h.hacker_id
     , h.name
FROM Submissions s
JOIN Challenges c
     ON s.challenge_id = c.challenge_id
JOIN Difficulty d
     ON c.difficulty_level = d.difficulty_level 
JOIN Hackers h
     ON s.hacker_id = h.hacker_id
WHERE s.score = d.score 
     AND c.difficulty_level = d.difficulty_level
GROUP BY h.hacker_id, h.name
     HAVING COUNT(h.hacker_id) > 1
ORDER BY COUNT(h.hacker_id) DESC
       , h.hacker_id;
