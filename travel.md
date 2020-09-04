---
layout: post_base
title: Travel Map
---

<!-- https://www.amcharts.com/visited_countries/#BE,FR,IS,IT,GB,VA,BS,CA,US,IN -->
<script src="https://www.amcharts.com/lib/3/ammap.js" type="text/javascript"></script>
<script src="https://www.amcharts.com/lib/3/maps/js/worldHigh.js" type="text/javascript"></script>
<script src="https://www.amcharts.com/lib/3/themes/dark.js" type="text/javascript"></script>
<div id="mapdiv" style="width: 600px; height: 450px;"></div>
<script type="text/javascript">
var map = AmCharts.makeChart("mapdiv",{
  type: "map",
  theme: "dark",
  projection: "mercator",
  panEventsEnabled : true,
  color: '#fff',
  backgroundColor : "#fff",
  backgroundAlpha : 1,
  zoomControl: {
  zoomControlEnabled : true
},
dataProvider : {
  map : "worldHigh",
  getAreasFromMap : true,
  areas :
  [
    {
      "id": "BE",
      "showAsSelected": true
    },
    {
      "id": "FR",
      "showAsSelected": true
    },
    {
      "id": "IS",
      "showAsSelected": true
    },
    {
      "id": "IT",
      "showAsSelected": true
    },
    {
      "id": "GB",
      "showAsSelected": true
    },
    {
      "id": "VA",
      "showAsSelected": true
    },
    {
      "id": "BS",
      "showAsSelected": true
    },
    {
      "id": "CA",
      "showAsSelected": true
    },
    {
      "id": "US",
      "showAsSelected": true
    },
    {
      "id": "IN",
      "showAsSelected": true
    },
    {
      "id": "MX",
      "showAsSelected": true
    }
  ]
},
areasSettings : {
  autoZoom : true,
  color : "#F8F7FC",
  colorSolid : "#37248F",
  selectedColor : "#735DD0",
  outlineColor : "#37248F",
  rollOverColor : "#DDEBF7",
  rollOverOutlineColor : "#084B8A"
}
});
</script>

I have visited The Bahamas, Belgium, Canada, France, <a href="/books/iceland">Iceland</a>, India, <a href="/books/italy">Italy</a>, Mexico, United Kingdom, and live in the United States.

Between 2017 and 2019, I traveled 99,570 miles across 25 trips in 153 days. That's enough to circle the world 4 times. Looking forward to being able to travel again... <span role="img" aria-label="germ">🦠</span>
