MATCH (x0)<-[:pextendedTo]-()-[:pextendedTo]->()<-[:pextendedTo]-()-[:pextendedTo]->(x1), (x1)<-[:pextendedTo]-()<-[:pauthors]-()-[:pauthors]->()<-[:pauthors]-(x2), (x2)-[:pauthors]->()-[:ppublishedIn]->()<-[:ppublishedIn]-()<-[:pauthors]-(x3) RETURN DISTINCT x0, x3;
