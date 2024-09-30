CREATE 
// Entities: Items
(item:N26E43 {id: "ids_100m_building_height_median_100kmN26E43", collection: "IOER_STRUCTURE_HEIGHT_GER_100M", 
                   created: "2023-06-05T17:53:52.582+00:00", updated: "2023-06-05T17:53:52.582+00:00", 
                   datetime: "2023-06-05T17:49:05.206675Z", 
                   eop:sensorType: "SYNTHESIS", 
                   grid:code: "ETRS_1989_LAEA", 
                   proj:crs: "3035", 
                   bbox: "[9.721932749998519,47.26818026776248, 11.046005504476401, 47.413251012534026]"}), 
(item:N35E45 {name: 'Hessen', population: 6391360, area: 21114.94, state_capital: "Wiesbaden"}), 
(rlp:State {name: 'Rheinland-Pfalz', population: 4159150, area: 19854.21, state_capital: "Mainz"}), 
(niedersachsen:State {name: 'Niedersachsen', population: 8140242, area: 47709.82, state_capital: "Hannover"}),


collection: "IOER_STRUCTURE_HEIGHT_GER_100M",
bbox: "[12.76791977878606, 54.53122757473991, 14.359795507754942, 55.03224155318573]"
created: "2023-06-05T17:53:52.131+00:00",
updated: "2023-06-05T17:53:52.131+00:00",
datetime: "2023-06-05T17:49:03.460211Z",
eop:sensorType: "SYNTHESIS",
grid:code: "ETRS_1989_LAEA",
proj:crs: "3035"

// Entities: Thumbnail

(tumb:N35E45 {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN35E45_thumbnail.png", 
                     description: "Thumbnail rendered in black/white as 512x512 pixel PNG file"}),


// Entities: Overview
(over:N35E45 {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN35E45_overview.png",
                     description: "Overview rendered in black/white as 4096x4096 pixel PNG file"})


// Relationships Items-Thumbnail
(item:N26E43) -[:HAS_THUMBNAIL]-> (tumb:N26E43),
(item:N35E45) -[:HAS_THUMBNAIL]-> (tumb:N35E45),


// Relationships Items-Overview
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
