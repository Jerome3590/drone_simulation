# COVID-19 Telehealth Drone Simulation: New Mexico Case Study

## Project Overview

This project simulates a drone-based telehealth system designed to address hospital capacity issues and improve healthcare delivery during the COVID-19 pandemic in New Mexico. The simulation models the deployment of unmanned aerial vehicles (UAVs) to deliver medical monitoring equipment and provide 5G connectivity for remote patient monitoring, reducing the burden on hospital beds and enabling at-home care.

## Background

New Mexico has been identified as one of the worst states for available hospital beds during the COVID-19 pandemic. This project explores a novel solution using drone technology to:

- Deliver telehealth monitoring kits to patients' homes
- Provide 5G connectivity in areas with limited network coverage
- Enable remote patient monitoring to reduce hospital admissions
- Optimize resource allocation and cost-effectiveness

## Key Components

### 1. Drone Types Modeled

- **Elroy Air Chaparral**: Cargo delivery drones for transporting 300-500 lbs of medical supplies over 300-mile range
- **HAWK 30 5G**: Communications drones providing 5G network coverage for remote areas

### 2. Telehealth Equipment

- **emfit QS sensors**: Patient monitoring devices ($250 each)
- **cosinuss° Two**: Advanced health monitoring sensors ($300 each)
- **5G SIM cards and network infrastructure**: For connectivity in underserved areas

### 3. Cost Analysis

- Complex COVID-19 hospitalization (ICU/ventilator): $272,593
- Non-complex COVID-19 hospitalization: $98,336
- Drone operation cost: ~$50,000/month per aircraft
- 5G/IoT analytics: $3,690 per person

## Technical Architecture

### Simulation Framework

- Built using R with the `simmer` discrete event simulation library
- Models patient arrivals, resource allocation, and system capacity
- Incorporates real COVID-19 data from New Mexico

### Data Sources

- New Mexico COVID-19 hospitalization data
- EPA geocoding data
- Hospital capacity and location data
- ZIP+4 geocoded patient data
- County-level COVID-19 community levels

### Key Simulation Parameters

- Number of drones (cargo and 5G support)
- Hospital bed capacity (up to 3,509 beds modeled)
- Health help desk capacity
- Patient arrival patterns based on historical COVID-19 data
- Flight time and routing algorithms

## Project Structure

```text
drone_simulation/
├── README.md                              # This file
├── covid19_telehealth_simulation.qmd      # Main simulation document
├── telehealth_kit_simulation_5g.qmd       # 5G-focused simulation
├── nm_covid_data.qmd                      # New Mexico COVID data analysis
├── data_visualization.qmd                 # Output analysis and visualization
├── uav_flight_plan.Rmd                    # UAV flight planning
├── data/                                  # Input datasets
│   ├── county/                           # County-level data
│   ├── hospitals/                        # Hospital information
│   ├── patients/                         # Patient data
│   ├── geocode/                          # Geographic data
│   └── shapefiles/                       # GIS shapefiles
├── data_out/                             # Simulation output files
├── images/                               # Visualizations and diagrams
├── website/                              # Generated HTML reports
└── extras/                               # Additional analysis files
```

## Key Features

### Simulation Capabilities

- **Parametric modeling**: Adjustable drone fleet size and simulation timeframes
- **Resource optimization**: Models hospital beds, drones, and help desk capacity
- **Patient flow simulation**: Tracks patient journeys from home monitoring to potential hospitalization
- **Cost-benefit analysis**: Compares telehealth costs vs. traditional hospitalization

### Geographic Analysis

- ZIP+4 level patient location mapping
- Hospital assignment based on proximity
- Flight path optimization for drone operations
- Coverage area analysis for 5G network deployment

### Performance Metrics

- Resource utilization rates
- Patient wait times
- System capacity analysis
- Cost per patient served
- Break-even analysis for drone fleet size

## Technologies Used

- **R**: Primary programming language
- **simmer**: Discrete event simulation framework
- **Quarto/R Markdown**: Reproducible research and reporting
- **AWS S3**: Cloud storage for datasets
- **Leaflet**: Interactive mapping
- **ggplot2**: Data visualization
- **sf/sp**: Spatial data analysis

## Key Research Questions

1. **Optimal Fleet Size**: How many drones are needed for effective coverage?
2. **Cost Effectiveness**: What is the break-even point compared to traditional hospitalization?
3. **Coverage Analysis**: Which areas benefit most from drone-delivered telehealth?
4. **Resource Allocation**: How to optimize the distribution of monitoring equipment?
5. **Network Planning**: Where should 5G support drones be deployed for maximum impact?

## Business Case

The simulation addresses critical healthcare challenges:

- **Hospital Capacity**: Reduces strain on limited hospital beds
- **Rural Healthcare**: Improves access in underserved areas
- **Cost Reduction**: Potentially significant savings vs. hospitalization costs
- **Emergency Response**: Rapid deployment capability for health crises
- **Scalability**: Flexible system that can adapt to changing demand

## Output and Results

The project generates comprehensive reports including:

- Interactive visualizations of simulation results
- Resource utilization analysis
- Cost-benefit comparisons
- Geographic coverage maps
- Performance metrics dashboards

Results are published to AWS S3 and can be viewed through generated HTML reports in the `website/` directory.

## Usage

### Prerequisites

- R (4.0+)
- Required R packages (see library statements in .qmd files)
- AWS credentials for S3 access (if using cloud datasets)

### Running the Simulation

1. Open the main simulation file: `covid19_telehealth_simulation.qmd`
2. Adjust parameters as needed (drone count, simulation time, etc.)
3. Execute the R chunks to run the simulation
4. View results in the generated HTML output

### Customization

The simulation is highly parametric and can be adapted for:

- Different geographic regions
- Various drone specifications
- Alternative healthcare scenarios
- Different cost structures

## Future Enhancements

- Integration with real-time weather data for flight planning
- Machine learning models for demand prediction
- Integration with hospital management systems
- Expanded drone types and capabilities
- Real-time optimization algorithms

## Contributors

This project appears to be developed as part of healthcare innovation research, combining simulation modeling, geospatial analysis, and healthcare economics to address real-world challenges in medical service delivery.

## License

[License information not specified in the original files]

---

*This simulation project demonstrates the potential of drone technology to revolutionize healthcare delivery, particularly in crisis situations and underserved areas.*
