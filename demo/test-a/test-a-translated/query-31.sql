WITH RECURSIVE c0(src, trg) AS ((SELECT edge.src, edge.src FROM edge UNION SELECT edge.trg, edge.trg FROM edge UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = publishedIn AND s1.label = publishedIn  AND s2.label = publishedIn  AND s3.label = publishedIn  UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = publishedIn AND s1.label = publishedIn  AND s2.label = publishedIn  AND s3.label = publishedIn  UNION SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1 WHERE s0.trg = s1.src AND s0.label = publishedIn AND s1.label = publishedIn )) , c1(src, trg) AS (SELECT src, trg FROM c0 UNION SELECT head.src, tail.trg FROM c0 as head, c1 as tail WHERE head.trg = tail.src) , c2(src, trg) AS ((SELECT edge.src, edge.src FROM edge UNION SELECT edge.trg, edge.trg FROM edge UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = publishedIn AND s1.label = publishedIn  AND s2.label = publishedIn  AND s3.label = publishedIn  UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = publishedIn AND s1.label = publishedIn  AND s2.label = publishedIn  AND s3.label = publishedIn  UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = publishedIn AND s1.label = publishedIn  AND s2.label = publishedIn  AND s3.label = publishedIn )) , c3(src, trg) AS (SELECT src, trg FROM c2 UNION SELECT head.src, tail.trg FROM c2 as head, c3 as tail WHERE head.trg = tail.src) , c4(src, trg) AS ((SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = publishedIn AND s1.label = publishedIn  AND s2.label = publishedIn  AND s3.label = publishedIn  UNION SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1 WHERE s0.trg = s1.src AND s0.label = publishedIn AND s1.label = publishedIn )) , c5(src, trg) AS ((SELECT edge.src, edge.src FROM edge UNION SELECT edge.trg, edge.trg FROM edge UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = publishedIn AND s1.label = publishedIn  AND s2.label = publishedIn  AND s3.label = publishedIn )) , c6(src, trg) AS (SELECT src, trg FROM c5 UNION SELECT head.src, tail.trg FROM c5 as head, c6 as tail WHERE head.trg = tail.src) SELECT DISTINCT c0.src, c5.trg  FROM c0, c1, c2, c3, c4, c5, c6 WHERE c2.src = c0.trg AND c4.src = c2.trg AND c5.src = c4.trg;
