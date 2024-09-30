CREATE 
// Entities: Items
(item:N26E43 {id: "ids_100m_building_height_median_100kmN26E43", collection: "IOER_STRUCTURE_HEIGHT_GER_100M", created: "2023-06-05T17:53:52.582+00:00", updated: "2023-06-05T17:53:52.582+00:00", datetime: "2023-06-05T17:49:05.206675Z", eop:sensorType: "SYNTHESIS", grid:code: "ETRS_1989_LAEA", proj:crs: "3035", bbox: "[9.721932749998519,47.26818026776248, 11.046005504476401, 47.413251012534026]"}), 


(hessen:State {name: 'Hessen', population: 6391360, area: 21114.94, state_capital: "Wiesbaden"}), 


(rlp:State {name: 'Rheinland-Pfalz', population: 4159150, area: 19854.21, state_capital: "Mainz"}), 


(niedersachsen:State {name: 'Niedersachsen', population: 8140242, area: 47709.82, state_capital: "Hannover"}),




// Entities: Parent

// Entities: Root



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
(niedersachsen_geom) -[:TOUCHES]-> (nrw_geom),

(hessen_geom) -[:TOUCHES]-> (rlp_geom),
(rlp_geom) -[:TOUCHES]-> (hessen_geom),

(niedersachsen_geom) -[:TOUCHES]-> (hessen_geom),
(hessen_geom) -[:TOUCHES]-> (niedersachsen_geom)