CREATE 
// Entities: States
(nrw:State {name: 'Nordrhein-Westfalen', population: 17932651}), 
(hessen:State {name: 'Hessen', population: 6265809}), 
(rlp:State {name: 'Rheinland-Pfalz ', population: 4084844 }), 
(niedersachsen:State {name: 'Niedersachsen', population: 7982448 }),

// Entities: Geometries
(nrw_geom:Geometry {url: 'https://github.com/aurioldegbelo/GeomQA/blob/main/data/nrw.geojson'}), 
(hessen_geom:Geometry {url: 'https://github.com/aurioldegbelo/GeomQA/blob/main/data/hessen.geojson'}), 
(rlp_geom:Geometry {url: 'https://github.com/aurioldegbelo/GeomQA/blob/main/data/rheinland-pfalz.geojson'}), 
(niedersachsen_geom:Geometry {url: 'https://github.com/aurioldegbelo/GeomQA/blob/main/data/niedersachsen.geojson'}), 

// Relationships State-Geometry
(nrw) -[:HAS_GEOMETRY]-> (nrw_geom),
(hessen) -[:HAS_GEOMETRY]-> (hessen_geom),
(rlp) -[:HAS_GEOMETRY]-> (rlp_geom),
(niedersachsen) -[:HAS_GEOMETRY]-> (niedersachsen_geom),

// Relationships Geometry-Geometry
(nrw_geom) -[:TOUCHES]-> (hessen_geom),
(nrw_geom) -[:TOUCHES]-> (rlp_geom),
(nrw_geom) -[:TOUCHES]-> (niedersachsen_geom),

(hessen_geom) -[:TOUCHES]-> (nrw_geom),
(rlp_geom) -[:TOUCHES]-> (nrw_geom),
(niedersachsen_geom) -[:TOUCHES]-> (nrw_geom)
