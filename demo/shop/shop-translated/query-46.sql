WITH RECURSIVE c0(src, trg) AS ((SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = 52 AND s1.label = 71  AND s2.label = 61 )) , c1(src, trg) AS ((SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = 52 AND s1.label = 57  AND s2.label = 61 )) , c2(src, trg) AS ((SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = 52 AND s1.label = 57  AND s2.label = 61 )) SELECT DISTINCT c1.trg , c0.src, c0.trg  FROM c0, c1, c2 WHERE c0.src = c1.src AND c0.src = c2.src;
