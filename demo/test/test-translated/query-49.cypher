MATCH (x0)<-[:p2]-()<-[:p1]-()-[:p3]->(x1), (x1)<-[:p3]-()-[:p1]->()<-[:p1]-()-[:p3]->(x2), (x2)<-[:p3]-()-[:p3]->()<-[:p3]-()<-[:p0]-(x3) RETURN DISTINCT x0, x1, x3, x2;
