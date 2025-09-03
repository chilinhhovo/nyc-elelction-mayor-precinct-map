# NYC Mayoral Primary Election Map 🗽

An interactive map visualization showing precinct-level results from the 2025 New York City Democratic Mayoral Primary election. This map displays how every block voted in the ranked-choice voting primary, with Zohran Mamdani declared the winner following the final round tallies.

## Features

- **Interactive Precinct Map**: Explore election results at the precinct level across all five boroughs
- **Color-coded Visualization**: Each precinct is colored based on the winning candidate and their margin of victory
- **Address Search**: Search by address, neighborhood, or ZIP code to find specific locations
- **Hover Details**: View detailed voting results for each precinct on hover
- **Candidate Summary**: See overall vote totals and percentages for top candidates
- **Responsive Design**: Works on desktop and mobile devices

## Live Demo

The map shows certified first-round results of the Democratic primary's ranked-choice vote, with results updated as of July 7, 2025.

## Technology Stack

- **Frontend**: HTML5, CSS3, JavaScript (ES6+)
- **Mapping**: Mapbox GL JS v2.15.0
- **Geocoding**: Mapbox Geocoder v4.7.4
- **Data Format**: GeoJSON for precinct boundaries, JSON for election results
- **Styling**: Custom CSS with modern design principles

## Data Sources

- **Election Results**: NYC Board of Elections
- **Geographic Data**: U.S. Census Bureau, NYC Department of City Planning
- **Additional Data**: Associated Press via The New York Times

## Getting Started

### Prerequisites

You'll need one of the following to serve the files locally:
- Python 3.x
- Node.js
- PHP
- Any other local web server

### Setup

1. **Clone or download this repository**

2. **Get a Mapbox access token**
   - Sign up at [mapbox.com](https://www.mapbox.com/)
   - Create a new access token
   - Copy the token for the next step

3. **Configure your Mapbox token**
   ```bash
   # Run the setup script (recommended)
   chmod +x setup.sh
   ./setup.sh
   
   # OR manually copy the config file
   cp config.example.js config.js
   ```

4. **Edit config.js and add your token**
   ```javascript
   window.MAP_CONFIG = {
     MAPBOX_ACCESS_TOKEN: 'your_actual_mapbox_token_here'
   };
   ```

5. **Start a local server**
   
   Using Python:
   ```bash
   python3 -m http.server 8000
   ```
   
   Using Node.js:
   ```bash
   npx serve .
   # or
   npm start
   ```
   
   Using PHP:
   ```bash
   php -S localhost:8000
   ```

6. **Open your browser**
   Navigate to `http://localhost:8000`

### NPM Scripts

If you prefer using npm:

```bash
npm install        # Install development dependencies
npm start          # Start Python server on port 8000
npm run serve      # Start npx serve
npm run dev        # Start live-server with auto-reload
```

## Project Structure

```
nyc-elelction-mayor-precinct-mapping/
├── index.html                    # Main HTML file with embedded CSS/JS
├── config.example.js            # Mapbox token configuration template
├── config.js                   # Your Mapbox token (create from example)
├── precincts_ready.geojson     # NYC precinct boundary data
├── results.json                # Election results by precinct
├── setup.sh                   # Automated setup script
├── package.json               # Node.js dependencies and scripts
├── images/                    # Candidate photos
│   ├── Comptroller-Brad-Lander-scaled.jpg
│   ├── cuomo.jpeg
│   └── zohran-momdani-1-abc-gmh-250625_1750885971136_hpMain.avif
└── README.md                  # This file
```

## Data Format

### Election Results (`results.json`)
- **Structure**: Precinct-level results with candidate vote counts
- **Geographic ID**: Format `36XXX-YYYYY` (FIPS code + election district)
- **Candidates**: Includes all candidates with vote totals
- **Metadata**: Total votes, reporting status, scrape timestamp

### Precinct Boundaries (`precincts_ready.geojson`)
- **Format**: GeoJSON FeatureCollection
- **Properties**: Election district numbers, geographic identifiers
- **Geometry**: Polygon boundaries for each voting precinct

## Color Scheme

The map uses a three-candidate color scheme with intensity based on margin of victory:

- **Zohran Mamdani**: Orange gradient (#f4a582 → #d95f02 → #b2441b)
- **Andrew M. Cuomo**: Teal gradient (#a6dba0 → #1b9e77 → #166b5a)
- **Brad Lander**: Purple gradient (#c2a5cf → #7570b3 → #54508a)
- **Insufficient Data**: Light gray (#cccccc)

**Legend**: Light colors indicate narrow wins, dark colors indicate strong wins.

## Browser Support

- Chrome/Chromium 60+
- Firefox 55+
- Safari 11+
- Edge 79+

## Performance Notes

- The map loads ~4,000 precinct polygons
- Election results data contains 1M+ vote records
- Initial load may take 2-3 seconds on slower connections
- Optimized for 60fps interaction after initial load

## Development

### Making Changes

The project uses a single-file architecture with embedded CSS and JavaScript in `index.html`. Key sections:

- **Styles**: Lines 13-293 (CSS)
- **Map Logic**: Lines 362-695 (JavaScript)
- **Data Processing**: Lines 487-536 (GeoJSON + results joining)
- **Visualization**: Lines 540-585 (Mapbox layer styling)

### Adding New Candidates

1. Update the color scheme in the `fill-color` expression
2. Add candidate photos to the `images/` directory
3. Update CSS classes for candidate photos
4. Modify the candidate name mapping logic

## License

MIT License - see LICENSE file for details.

## Author

**Chi Vo** - Election Data Visualization

## Acknowledgments

- NYC Board of Elections for election data
- U.S. Census Bureau for geographic boundaries
- Mapbox for mapping platform
- The New York Times for additional data sourcing

---

*Last updated: July 7, 2025*