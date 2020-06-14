SELECT DISTINCT C.Nm_ct FROM Contras AS C
INNER JOIN Telct AS T ON C.Codct = T.Codct
WHERE T.Respondent is Null

SELECT C.Nm_ct, T.Telnum FROM Contras AS C
LEFT JOIN Telct AS T ON C.Codct = T.Codct

SELECT Codct FROM Contras AS C WHERE Codct NOT IN
(SELECT Codct FROM Telct)

SELECT C.Nm_ct, Count(t.conct) FROM Contras AS C
INNER JOIN Telct AS t ON C.Codct = T.Codct GROUP BY T.Codct 
