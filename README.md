# NYC Mayoral Primary Election Results Map

An interactive map showing the results of the N.Y.C. Democratic Mayoral Primary election by precinct, built with Mapbox GL JS.

## Features

- **Interactive Map**: Zoom and pan to explore election results across NYC
- **Precinct-Level Data**: See results for individual election districts
- **Margin Visualization**: Color intensity shows the strength of each candidate's lead
- **Search Functionality**: Search by address, neighborhood, or ZIP code
- **Candidate Information**: View top candidates with vote counts and percentages
- **Responsive Design**: Works on desktop and mobile devices

## Setup

1. **Clone or download this repository**

2. **Get a Mapbox Access Token**
   - Sign up at [mapbox.com](https://www.mapbox.com/)
   - Create a new access token with default permissions
   - Copy the access token

3. **Configure the API Key**
   ```bash
   cp config.example.js config.js
   ```
   Edit `config.js` and replace `'your_mapbox_token_here'` with your actual Mapbox token.

4. **Serve the files**
   You need to serve the files from a local server (not just open index.html directly) due to CORS restrictions.
   
   **Option 1: Python**
   ```bash
   python3 -m http.server 8000
   ```
   
   **Option 2: Node.js**
   ```bash
   npx serve .
   ```
   
   **Option 3: PHP**
   ```bash
   php -S localhost:8000
   ```

5. **Open in browser**
   Navigate to `http://localhost:8000` in your web browser.

## File Structure

```
├── index.html              # Main HTML file
├── images/                 # Candidate photos
│   ├── cuomo.jpeg
│   ├── Comptroller-Brad-Lander-scaled.jpg
│   └── zohran-momdani-1-abc-gmh-250625_1750885971136_hpMain.avif
├── precincts_ready.geojson # Election district boundaries
├── results.json           # Election results data
├── config.example.js      # Configuration template
├── .gitignore            # Git ignore file
└── README.md             # This file
```

## Data Sources

- **Election Results**: N.Y.C. Board of Elections
- **Geographic Data**: U.S. Census; Dept. of City Planning
- **Additional Sources**: Associated Press via the New York Times

## Technical Details

- **Mapping Library**: Mapbox GL JS v2.15.0
- **Geocoding**: Mapbox Geocoder Plugin
- **Data Format**: GeoJSON for boundaries, JSON for election results
- **Styling**: Custom CSS with Helvetica Neue typography
- **Responsive**: Mobile-friendly design

## License

This project is open source. Please attribute appropriately when using the data or code.

## Credits

**By Chi Vo**  
*Updated July 7, 2025*

Additional work by Jonah Smith, Annie Daniel and Dan Simmons-Ritchie.
