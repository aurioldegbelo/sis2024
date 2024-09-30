CREATE 
// Entities: Items
(iN26E43:Item {id: "ids_100m_building_height_median_100kmN26E43", 
                   collection: "IOER_STRUCTURE_HEIGHT_GER_100M", 
                   created: "2023-06-05T17:53:52.582+00:00", 
                   updated: "2023-06-05T17:53:52.582+00:00", 
                   datetime: "2023-06-05T17:49:05.206675Z", 
                   eop_sensorType: "SYNTHESIS", 
                   grid_code: "ETRS_1989_LAEA", 
                   proj_crs: "3035", 
                   bbox: "[9.721932749998519,47.26818026776248, 11.046005504476401, 47.413251012534026]"}), 
(iN35E45:Item {id: "ids_100m_building_height_median_100kmN35E45", 
              collection: "IOER_STRUCTURE_HEIGHT_GER_100M", 
              created: "2023-06-05T17:53:52.131+00:00",
              updated: "2023-06-05T17:53:52.131+00:00",
              datetime: "2023-06-05T17:49:03.460211Z",
              eop_sensorType: "SYNTHESIS",
              grid_code: "ETRS_1989_LAEA",
              proj_crs: "3035",
              bbox: "[12.76791977878606, 54.53122757473991, 14.359795507754942, 55.03224155318573]"}), 
(iN34E42:Item {id: "ids_100m_building_height_median_100kmN34E42",
                   collection: "IOER_STRUCTURE_HEIGHT_GER_100M",
                   created: "2023-06-05T17:53:51.858+00:00",
                   updated: "2023-06-05T17:53:51.858+00:00",
                   datetime: "2023-06-05T17:49:03.025212Z",
                   eop_sensorType: "SYNTHESIS",
                   grid_code: "ETRS_1989_LAEA",
                   proj_crs: "3035",
                   bbox: "[8.128476840313308, 53.693700289292444, 9.682032900163954, 54.60562467051945]"}), 
(iN33E43:Item {id: "ids_100m_building_height_median_100kmN33E43",
                   collection: "IOER_STRUCTURE_HEIGHT_GER_100M",
                   created: "2023-06-05T17:53:51.423+00:00",
                   updated: "2023-06-05T17:53:51.423+00:00",
                   datetime: "2023-06-05T17:49:01.941589Z",
                   eop_sensorType: "SYNTHESIS",
                   grid_code: "ETRS_1989_LAEA",
                   proj_crs: "3035", 
                   bbox: "[9.682032900163954, 52.80309977773747, 11.196067070437314, 53.70702802650191]"}), 

// Entities: Thumbnail
(tN26E43:Thumbnail {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN26E43_thumbnail.png", 
                     description: "Thumbnail rendered in black/white as 512x512 pixel PNG file"}),
(tN35E45:Thumbnail {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN35E45_thumbnail.png", 
                     description: "Thumbnail rendered in black/white as 512x512 pixel PNG file"}),
(tN34E42:Thumbnail {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN34E42_thumbnail.png", 
                     description: "Thumbnail rendered in black/white as 512x512 pixel PNG file"}),
(tN33E43:Thumbnail {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN33E43_thumbnail.png", 
                     description: "Thumbnail rendered in black/white as 512x512 pixel PNG file"}),

// Entities: Overview
(oN26E43:Overview {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN26E43_overview.png",
                     description: "Overview rendered in black/white as 4096x4096 pixel PNG file"}),
(oN35E45:Overview {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN35E45_overview.png",
                     description: "Overview rendered in black/white as 4096x4096 pixel PNG file"}),
(oN34E42:Overview {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN34E42_overview.png",
                     description: "Overview rendered in black/white as 4096x4096 pixel PNG file"}),
(oN33E43:Overview {link: "https://download.geoservice.dlr.de/ioer/files/100m_building_structure/height_median/ids_100m_building_height_median_100kmN33E43_overview.png",
                     description: "Overview rendered in black/white as 4096x4096 pixel PNG file"}),

// Entities: Collection
(cIOER:Collection {id: "IOER_STRUCTURE_HEIGHT_GER_100M", title: "IOER Building Structure - Height Median - Germany, 100m",
description: "IOER Surface Coverage complete depicts the building height median in meter with a resolution of 100m. The dataset is part of the NFDI4Earth pilot and is presented in cooperation with EOC Geoservice."
}),

// Relationships Items-Thumbnail
(iN26E43) -[:HAS_THUMBNAIL]-> (tN26E43),
(iN35E45) -[:HAS_THUMBNAIL]-> (tN35E45),
(iN34E42) -[:HAS_THUMBNAIL]-> (tN34E42),
(iN33E43) -[:HAS_THUMBNAIL]-> (tN33E43),


// Relationships Items-Overview
(iN26E43) -[:HAS_OVERVIEW]-> (oN26E43),
(iN35E45) -[:HAS_OVERVIEW]-> (oN35E45),
(iN34E42) -[:HAS_OVERVIEW]-> (oN34E42),
(iN33E43) -[:HAS_OVERVIEW]-> (oN33E43)

// Relationships PART-OF
(iN26E43) -[:PART_OF]-> (cIOER),
(iN35E45) -[:PART_OF]-> (cIOER)



