# Write your MySQL query statement below
SELECT Candidate.Name
FROM Candidate INNER JOIN (
                            SELECT CandidateId
                            FROM Vote
                            GROUP BY CandidateId
                            ORDER BY COUNT(*) DESC
                            LIMIT 1
                                ) tb ON Candidate.id = tb.CandidateId
