MATCH (x0)<-[:pextendedTo]-()-[:pextendedTo]->()<-[:pextendedTo]-()<-[:pauthors]-(x1), (x0)<-[:pextendedTo]-()-[:pextendedTo]->()<-[:pextendedTo]-()<-[:pauthors]-(x2), (x0)<-[:pextendedTo]-()<-[:pauthors]-()-[:pauthors]->()<-[:pauthors]-(x3), (x0)<-[:pextendedTo]-()<-[:pauthors]-()-[:pauthors]->()<-[:pauthors]-(x4) RETURN DISTINCT x0;