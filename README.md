## Evanston Pedestrian and Bike crashes

These R Quarto documents ingest data from IDOT and generate a website that has a map and bar graph

To run:
- Download all the IDOT crash data as GeoJSONs and save them in a `data/IDOT_crashes` directory
  - 2025: https://gis-idot.opendata.arcgis.com/datasets/IDOT::crashes-2025
  - 2024: https://gis-idot.opendata.arcgis.com/datasets/IDOT::crashes-2024
  - 2023: https://gis-idot.opendata.arcgis.com/datasets/IDOT::crashes-2023
  - 2022: https://gis-idot.opendata.arcgis.com/datasets/IDOT::crashes-2022
  - 2021: https://gis-idot.opendata.arcgis.com/datasets/IDOT::crashes-2021
  - 2020: https://gis-idot.opendata.arcgis.com/datasets/IDOT::crashes-2020
  - 2019: https://gis-idot.opendata.arcgis.com/datasets/IDOT::crashes-2019
  - 2018: https://gis-idot.opendata.arcgis.com/datasets/IDOT::crashes-2018
  - 2017: https://gis-idot.opendata.arcgis.com/datasets/IDOT::crashes-2017
  - 2016: https://gis-idot.opendata.arcgis.com/datasets/IDOT::crashes-2016
  - 2015: https://gis-idot.opendata.arcgis.com/datasets/IDOT::crashes-2015
  - 2014: https://gis-idot.opendata.arcgis.com/datasets/IDOT::crashes-2014
- Download the Evanston boundary geometry as a GeoJSON and save it as `data/evanston_boundary.geojson`
  - https://data.cityofevanston.org/maps/5c93d52c04f540bfa7a7b514d18f2961
- Render evanston_crashes_IDOT.qmd