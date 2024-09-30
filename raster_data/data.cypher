CREATE 
// Entities: Items
(item:N26E43 {id: "ids_100m_building_height_median_100kmN26E43", 
                   collection: "IOER_STRUCTURE_HEIGHT_GER_100M", 
                   created: "2023-06-05T17:53:52.582+00:00", 
                   updated: "2023-06-05T17:53:52.582+00:00", 
                   datetime: "2023-06-05T17:49:05.206675Z", 
                   eop:sensorType: "SYNTHESIS", 
                   grid:code: "ETRS_1989_LAEA", 
                   proj:crs: "3035", 
                   bbox: "[9.721932749998519,47.26818026776248, 11.046005504476401, 47.413251012534026]"}), 
(item:N35E45 {id: "ids_100m_building_height_median_100kmN35E45", 
              collection: "IOER_STRUCTURE_HEIGHT_GER_100M", 
              created: "2023-06-05T17:53:52.131+00:00",
              updated: "2023-06-05T17:53:52.131+00:00",
              datetime: "2023-06-05T17:49:03.460211Z",
              eop:sensorType: "SYNTHESIS",
              grid:code: "ETRS_1989_LAEA",
              proj:crs: "3035",
              bbox: "[12.76791977878606, 54.53122757473991, 14.359795507754942, 55.03224155318573]"}), 
(item:N34E42 {id: "ids_100m_building_height_median_100kmN34E42",
                   collection: "IOER_STRUCTURE_HEIGHT_GER_100M",
                   created: "2023-06-05T17:53:51.858+00:00",
                   updated: "2023-06-05T17:53:51.858+00:00",
                   datetime: "2023-06-05T17:49:03.025212Z",
                   eop:sensorType: "SYNTHESIS",
                   grid:code: "ETRS_1989_LAEA",
                   proj:crs: "3035",
                   bbox: "[8.128476840313308, 53.693700289292444, 9.682032900163954, 54.60562467051945]"}), 
(item:N33E43 {id: "ids_100m_building_height_median_100kmN33E43",
                   collection: "IOER_STRUCTURE_HEIGHT_GER_100M",
                   created: "2023-06-05T17:53:51.423+00:00",
                   updated: "2023-06-05T17:53:51.423+00:00",
                   datetime: "2023-06-05T17:49:01.941589Z",
                   eop:sensorType: "SYNTHESIS",
                   grid:code: "ETRS_1989_LAEA",
                   proj:crs: "3035", 
                   bbox: "[9.682032900163954, 52.80309977773747, 11.196067070437314, 53.70702802650191]"}), 

// Entities: Thumbnail
(tumb:N26E43 {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN26E43_thumbnail.png", 
                     description: "Thumbnail rendered in black/white as 512x512 pixel PNG file"}),
(tumb:N35E45 {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN35E45_thumbnail.png", 
                     description: "Thumbnail rendered in black/white as 512x512 pixel PNG file"}),
(tumb:N34E42 {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN34E42_thumbnail.png", 
                     description: "Thumbnail rendered in black/white as 512x512 pixel PNG file"}),
(tumb:N33E43 {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN33E43_thumbnail.png", 
                     description: "Thumbnail rendered in black/white as 512x512 pixel PNG file"}),

// Entities: Overview
(overview:N26E43 {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN26E43_overview.png",
                     description: "Overview rendered in black/white as 4096x4096 pixel PNG file"})
(overview:N35E45 {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN35E45_overview.png",
                     description: "Overview rendered in black/white as 4096x4096 pixel PNG file"})
(overview:N34E42 {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN34E42_overview.png",
                     description: "Overview rendered in black/white as 4096x4096 pixel PNG file"}),
(overview:N33E43 {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN33E43_overview.png",
                     description: "Overview rendered in black/white as 4096x4096 pixel PNG file"}),

// Relationships Items-Thumbnail
(item:N26E43) -[:HAS_THUMBNAIL]-> (tumb:N26E43),
(item:N35E45) -[:HAS_THUMBNAIL]-> (tumb:N35E45),
(item:N34E42) -[:HAS_THUMBNAIL]-> (tumb:N34E42),
(item:N33E43) -[:HAS_THUMBNAIL]-> (tumb:N33E43),


// Relationships Items-Overview

(item:N26E43) -[:HAS_OVERVIEW]-> (overview:N26E43),
(item:N35E45) -[:HAS_OVERVIEW]-> (overview:N35E45),
(item:N34E42) -[:HAS_OVERVIEW]-> (overview:N34E42),
(item:N33E43) -[:HAS_OVERVIEW]-> (overview:N33E43),

