---
layout: default
title: Travel
---

<div id="home">
  <h1>I have traveled to...</h1>

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
  backgroundColor : "#535364",
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
    }
  ]
  },
  areasSettings : {
  autoZoom : true,
  color : "#B4B4B7",
  colorSolid : "#3c7",
  selectedColor : "#3c7",
  outlineColor : "#666666",
  rollOverColor : "#9EC2F7",
  rollOverOutlineColor : "#000000"
  }
  });
  </script>

  <p>The Bahamas</p>
  <p>Belgium</p>
  <p>Canada</p>
  <p>France</p>
  <p><a href="/books/iceland">Iceland</a></p>
  <p>India</p>
  <p><a href="/books/italy">Italy</a></p>
  <p>United Kingdom</p>
  <p>United States</p>

</div>

<h2>TripIt says I've traveled 99,570 miles across 25 trips in 153 days since 2017. That's enough to circle the world 4 times!</h2>
