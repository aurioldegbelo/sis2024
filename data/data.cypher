CREATE 
// States
(nrw:State {name: 'Nordrhein-Westfalen', population: 17932651}), 
(hessen:State {name: 'Hessen', population: 6265809}), 
(rlp:State {name: 'Rheinland-Pfalz ', population: 4084844 }), 
(niedersachsen:State {name: 'Niedersachsen', population: 7982448 }),

// Geometries
(nrw_geom:Geometry {url: ''}), 
(hessen_geom:Geometry {url: ''}), 
(rlp_geom:Geometry {url: ''}), 
(niedersachsen_geom:Geometry {url: ''}), 

(nrw)-[:HASGEOMETRY]-> (nrw_geom),
(hessen)<-[:HASGEOMETRY]- (hessen_geom),
(rlp)-[:HASGEOMETRY]-> (rlp_geom),
(niedersachsen)-[:HASGEOMETRY]-> (niedersachsen_geom),
