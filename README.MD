# Mr. Haulage Fleet Analysis Project

*"Garbage in, Garbage out" - George Fuechsel, IBM*

----------------------------------

<img src="/images/logos/client_mr_haulage/mr_haulage_logo.png" alt="mr_haulage_logo" width="200"/>

----------------------------------

<img src="/images/logos/techmodal/techmodal_logo_small_black_on_white.png" alt="mr_haulage_logo" width="200"/>

----------------------------------


## Table of Contents

1. [Introduction](#introduction)
2. [Objectives](#objectives)
3. [Methodology](#methodology)
4. [Data Sources](#data-sources)
5. [Technologies Used](#technologies-used)
6. [Getting Started](#getting-started)
7. [File Structure](#file-structure)
8. [Results](#results)
9. [Limitations](#limitations)
10. [Future Work](#future-work)
11. [Contributing](#contributing)
12. [License](#license)
13. [Acknowledgements](#acknowledgements)


----------------------------------

## Introduction

Mr. Haulage Defence Couriers is a family-run box delivery firm with a longstanding contract to deliver supplies within the UK for the Defence sector. This project aims to provide data-driven insights to assist Mr. Haulage in making informed decisions about replacing his aging fleet.


----------------------------------

## Objectives

- To analyse the type, volume, and frequency of deliveries from the historical data provided.
- To evaluate the costs associated with the available truck sizes.
- To make recommendations for optimising fleet size, thereby enabling maximum profit and efficient operational management.


----------------------------------

## Methodology

Various data analysis techniques were employed, including:
- Time-Series Analysis
- Cost-Benefit Analysis
- Capacity Planning

The project uses Python & Pandas for data manipulation and data visualisation in Jupyter Notebooks via Pycharm Pro IDE.


----------------------------------

## Data Sources

The primary data source is the historical order data provided by Mr. Haulage spanning from 22nd August 2021 to 10th April 2023. The dataset includes information such as Order ID, Customer ID, Order Date, Order Time, Item Serial, Box Type, Delivery Region, and Delivery Distance.


----------------------------------

## Technologies Used

- Python
- Jupyter Notebooks
- Pandas
- Matplotlib
- Seaborn
- Prophet for time-series forecasting


----------------------------------

## Getting Started

1. Clone the repository | link
2. Navigate to the project directory
3. Install required packages
4. Open the Jupyter Notebooks to view the analysis


----------------------------------

## File Structure

- `datasets/`: Folder containing the dataset
- `notebooks/`: Jupyter Notebooks for analysis
- `README.md`: This README.md file
- `requirements.txt`: Required Python packages


----------------------------------

## Results

The analysis suggests that Option 4 provides the most cost-efficient and scalable solution for Mr. Haulage. For a detailed summary of the findings, please refer to the Jupyter Notebooks.


----------------------------------

## Limitations

- The analysis makes several assumptions, and it is strongly advised to consult with Mr. Haulage and the Fleet Manager for further validation.


----------------------------------

## Future Work

- Incorporate more granular data for better route planning.
- Extend the analysis to include predictive modelling for future years.
- Complete the sql script & database normalisation to conduct data queries (.gitignore for now)
- Finish the client PowerPoint for in person presentation of my findings (.gitignore for now)

----------------------------------

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


----------------------------------

## License

[MIT License](LICENSE)


----------------------------------

## Acknowledgements

- Mr. Haulage Defence Couriers for providing the dataset.
- Open-source libraries and tools used in this project.
- Techmodal Ltd for providing me the opportunity to conduct this data analysis which I very much enjoyed! 

----------------------------------

