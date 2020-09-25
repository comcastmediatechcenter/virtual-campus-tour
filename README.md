# Virtual Campus Tour
A guided tour of campus with 360 degree photos and info spots about different locations. Using [Panolens.js](https://github.com/pchen66/panolens.js) to render the photos and [W3 CSS](https://www.w3schools.com/w3css/) to handle the majority of the stylesheets.
## Development installation
[Install NodeJS](https://nodejs.org/en/), clone the repository, run `npm install`, and then run `npm start` or `node index.js`. The server will be running at `http://localhost:5678`, and can be accessed on other devices by using the host machines IP in place of `localhost`.
## Project Overview
When started, the contents of `locations.json` is read and corresponding pages are created. New ones can be added and removed by appending or deleting from the file. The following is a brief description of what each variable does in relation to the output.
 - `name`: The title of the page
 - `url`: The URL of the page
 - `image`:
 - `tooltips`: An array of tooltip objects that show information panels with the following components
    - `header`: The header of the tooltip box
    - `body`: The body text. HTML styling is allowed
    - `pos`: An array of integers for the location, in (X, Y, Z) format. Can be obtained by inspecting element on a rendered 360 photo and clicking while holding the alt key
 - `paths`: An array of tooltip objects that show places the user can go
    - `label`: The label that floats above the tooltip icon
    - `dest`: The URL destination that the user will be taken to upon clicking the tooltip
    - `pos`: An array of integers for the location, in (X, Y, Z) format. Can be obtained by inspecting element on a rendered 360 photo and clicking while holding the alt key
