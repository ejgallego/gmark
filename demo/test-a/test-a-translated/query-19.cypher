MATCH (x0)<-[:ppublishedIn]-()-[:ppublishedIn]->()<-[:ppublishedIn]-()-[:ppublishedIn]->(x1), (x1)-[:pheldIn]->()<-[:pheldIn]-(x2), (x0)<-[:ppublishedIn]-()-[:pextendedTo]->()<-[:pextendedTo]-()<-[:pauthors]-(x3), (x2)<-[:ppublishedIn]-()<-[:pauthors]-()-[:pauthors]->()<-[:pauthors]-(x4) RETURN DISTINCT x0;
