MATCH (x0)<-[:p2]-()<-[:p1]-()-[:p3]->(x1), (x1)<-[:p3]-()-[:p1]->()<-[:p1]-()-[:p1]->(x2), (x2)<-[:p1]-()-[:p1]->()<-[:p1]-()-[:p1]->(x3), (x3)-[:p2]->()<-[:p2]-()-[:p2]->(x4) RETURN DISTINCT x0, x2, x1;
