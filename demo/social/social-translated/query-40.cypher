MATCH (x0)-[:p2]->()-[:p0]->()-[:p19]->()<-[:p16]-(x1), (x0)-[:p2]->()-[:p19]->()<-[:p16]-(x2), (x0)-[:p2]->()-[:p20]->()<-[:p16]-(x3) RETURN DISTINCT x3, x0, x2, x1;