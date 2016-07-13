WITH RECURSIVE c0(src, trg) AS ((SELECT edge.src, edge.src FROM edge UNION SELECT edge.trg, edge.trg FROM edge UNION SELECT s0.src, s1.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1 WHERE s0.trg = s1.src AND s0.label = 71 AND s1.label = 72 )) , c1(src, trg) AS (SELECT src, trg FROM c0 UNION SELECT head.src, tail.trg FROM c0 as head, c1 as tail WHERE head.trg = tail.src) , c2(src, trg) AS ((SELECT edge.src, edge.src FROM edge UNION SELECT edge.trg, edge.trg FROM edge UNION SELECT s0.src, s3.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = 50 AND s1.label = 2  AND s2.label = 5  AND s3.label = 50  UNION SELECT s0.src, s3.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = 18 AND s1.label = 1  AND s2.label = 2  AND s3.label = 11 )) , c3(src, trg) AS (SELECT src, trg FROM c2 UNION SELECT head.src, tail.trg FROM c2 as head, c3 as tail WHERE head.trg = tail.src) , c4(src, trg) AS ((SELECT edge.src, edge.src FROM edge UNION SELECT edge.trg, edge.trg FROM edge UNION SELECT s0.src, s2.trg FROM edge s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = 71 AND s1.label = 29  AND s2.label = 50  UNION SELECT s0.src, s1.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1 WHERE s0.trg = s1.src AND s0.label = 0 AND s1.label = 2  UNION SELECT s0.src, s3.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = 0 AND s1.label = 5  AND s2.label = 11  AND s3.label = 5 )) , c5(src, trg) AS (SELECT src, trg FROM c4 UNION SELECT head.src, tail.trg FROM c4 as head, c5 as tail WHERE head.trg = tail.src) SELECT "true" FROM edge WHERE EXISTS (SELECT * FROM c0, c1, c2, c3, c4, c5 WHERE c4.src = c0.trg AND c0.src = c2.src);
