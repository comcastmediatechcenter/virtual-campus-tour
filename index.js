const express = require('express');
const app = express();
const yaml = require('js-yaml');
const fs = require('fs');

app.set("view engine", "ejs");
app.use(express.static("public"));

//var locations = require("./locations.json").locations;
var locations = yaml.load(fs.readFileSync("./locations.yaml")).locations;
locations.forEach(function(location){
  app.get(location.url, function(req, res){
    res.render("location.ejs", {location: location});
  });
});

app.get("/", function(req, res){
  res.render("directory.ejs", {locations: locations});
});

app.listen(5678, function(){ console.log("Started on port 5678"); });
