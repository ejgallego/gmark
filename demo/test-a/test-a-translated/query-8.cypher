MATCH (x0)<-[:pextendedTo]-()<-[:pauthors]-()-[:pauthors]->()<-[:pauthors]-(x1), (x1)-[:pauthors]->()-[:pextendedTo]->()<-[:pextendedTo]-(x2), (x2)-[:ppublishedIn]->()<-[:ppublishedIn]-()-[:ppublishedIn]->()-[:pheldIn]->(x3) RETURN DISTINCT x0;
