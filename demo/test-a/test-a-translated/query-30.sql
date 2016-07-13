WITH RECURSIVE c0(src, trg) AS ((SELECT s0.src, s7.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, (SELECT trg as src, src as trg, label FROM edge) as s3, (SELECT trg as src, src as trg, label FROM edge) as s4, (SELECT trg as src, src as trg, label FROM edge) as s5, edge s6, edge s7 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s3.trg = s4.src AND s4.trg = s5.src AND s5.trg = s6.src AND s6.trg = s7.src AND s0.label = heldIn AND s1.label = heldIn  AND s2.label = heldIn  AND s3.label = publishedIn  AND s4.label = heldIn  AND s5.label = publishedIn  AND s6.label = publishedIn  AND s7.label = heldIn  UNION SELECT s0.src, s5.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, (SELECT trg as src, src as trg, label FROM edge) as s2, (SELECT trg as src, src as trg, label FROM edge) as s3, edge s4, edge s5 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s3.trg = s4.src AND s4.trg = s5.src AND s0.label = heldIn AND s1.label = publishedIn  AND s2.label = heldIn  AND s3.label = publishedIn  AND s4.label = publishedIn  AND s5.label = heldIn  UNION SELECT s0.src, s7.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3, (SELECT trg as src, src as trg, label FROM edge) as s4, (SELECT trg as src, src as trg, label FROM edge) as s5, edge s6, edge s7 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s3.trg = s4.src AND s4.trg = s5.src AND s5.trg = s6.src AND s6.trg = s7.src AND s0.label = heldIn AND s1.label = publishedIn  AND s2.label = authors  AND s3.label = authors  AND s4.label = heldIn  AND s5.label = publishedIn  AND s6.label = publishedIn  AND s7.label = heldIn )) , c1(src, trg) AS ((SELECT s0.src, s7.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3, (SELECT trg as src, src as trg, label FROM edge) as s4, (SELECT trg as src, src as trg, label FROM edge) as s5, edge s6, edge s7 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s3.trg = s4.src AND s4.trg = s5.src AND s5.trg = s6.src AND s6.trg = s7.src AND s0.label = publishedIn AND s1.label = publishedIn  AND s2.label = publishedIn  AND s3.label = publishedIn  AND s4.label = heldIn  AND s5.label = publishedIn  AND s6.label = publishedIn  AND s7.label = heldIn  UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = heldIn AND s1.label = publishedIn  AND s2.label = publishedIn  AND s3.label = heldIn )) , c2(src, trg) AS ((SELECT s0.src, s7.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3, (SELECT trg as src, src as trg, label FROM edge) as s4, (SELECT trg as src, src as trg, label FROM edge) as s5, edge s6, edge s7 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s3.trg = s4.src AND s4.trg = s5.src AND s5.trg = s6.src AND s6.trg = s7.src AND s0.label = heldIn AND s1.label = heldIn  AND s2.label = heldIn  AND s3.label = heldIn  AND s4.label = heldIn  AND s5.label = publishedIn  AND s6.label = publishedIn  AND s7.label = heldIn  UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = heldIn AND s1.label = heldIn  AND s2.label = heldIn  AND s3.label = heldIn )) SELECT DISTINCT c0.trg , c0.src, c2.trg , c1.trg  FROM c0, c1, c2 WHERE c0.src = c1.src AND c0.src = c2.src UNION ;
