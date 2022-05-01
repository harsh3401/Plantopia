<h1 align="center">Plantopia - A vegetation cover monitoring Application</h1>

<p align="center">
<a href="#"><img width=200px src="app/static/images/forest.png"  alt="Project logo"/></a></a>
 
</p>

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-table-of-contents)

# 📝 Table of Contents

- [About](#about)
- [Getting Started ](#getting_started)
- [Built Using](#built_using)
- [Packages](#packages)
- [Authors](#authors)
- [Contribution](#contribution)
- [Performance of Web App](#performance)

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-about-a-name--abouta)

# 🧐 About <a name = "about"></a>

**Vegetation cover** defines **the percentage of soil** which is **covered by trees and plants**. Vegetation cover plays **very important role** on **protecting the soil surface** from raindrop splashing, increasing soil organic matter, soil aggregate stability, water holding capacity, hydraulic conductivity, retarding and reducing surface water runoff, etc. In a wide range of environments, both water run-off and soil sediment loss decrease exponentially as the percentage of vegetation cover increases. (Elwell and Stocking, 1976; Lee and Skogerboe 1985, Francis and Thornes 1990).

A vegetation cover of **45-50%** is considered a **critical value** since above this value soils are adequately **protected** from **raindrop impact** and **soil erosion** is significantly **reduced**. This threshold may be modified for different types of vegetation, rain intensity and land attributes. In the case of **poor plant cover**, the **erosion processes** may be very **active** and **the regeneration of natural vegetation** may be **irreversible**. Vegetation cover can be measured in the field by assessing the percentage of the ground that it is covered by the existing annual or perennial vegetation. Aerial photographs or satellite images can also be used for measuring vegetation cover of extensive areas.

Vegetation cover is **key factor on land degradation**. Reduction in the perennial cover is regarded as an important indicator of the onset of desertification. Soil erosion and degradation begins only when a substantial portion of the land's surface is denuded of vegetation, then it proceeds with an accelerated mode, that cannot be arrested by land resistance alone. Vegetation cover increases **with increasing soil depth and thus decreasing longevity of drought**. In the soil depth class of 15-30 cm, the vegetation cover class of 25-50% had the maximum frequency of appearance (93%) in the semi-arid zone, whereas areas with soils having the same soil depth class had a higher vegetation cover with a 64% maximum frequency of appearance of the cover class 75-90% cover in the dry sub-humid zone.

This project will help in **automated monitoring** the vegetation cover in a particular area by using **GIS techniques**, thus giving insights for **future planning of land resources**. This project discusses the **importance of land vegetation cover** and **its impact on the environment**, it also discusses **the real-time monitoring of the vegetation cover** and its implementation and provides components **to generate timelapse GIFs** and **classify land cover for better assessment** of the land cover. We have also implemented change detection features to get an idea of the vegetation change over the years for further analysis.

<br/>
<a href="#">Click here to view the website</a>
</a>
<br/>

## 1.1 Problem Definition

To develop a **GIS based application** that can **monitor and display** the **changes in the vegetation cover** **for a particular area** and provide the **timelapse showing the change in the area with respect to the change in the NDVI over a particular time period**. The application should be **easily accessible** and should clearly give an **insight on the change**.

## 1.2 Scope of Project

The project outcome is a **web application** that will provide a **platform to visualize change, monitor NDVI area for a specific threshold and provide timelapse generation features**. In addition to these primary features classification of land cover based on multiple methods specifically for the **Mumbai** and **Thane** districts will provide an analytical viewpoint for landcover computed via ML algorithms.

The web app provides 4 pages each designated for a specific task:

1. **Homepage**: Here information about the **dataset** used, **methodologies** applied and the **references** are provided in addition to **general data about vegetation detection** via GIS systems.
2. **Classification Page**: This page provides the user **options to classify land cover** based on **multiple methods**. The **first method** includes using the **MODIS dataset** to divide the **landcover into multiple classes** and rendering the results in an **interactable map**. The **second method** is a more complex one where a **manually selected dataset** is created to get an **idea** of the various classes and an ML based classification algorithm is used.
3. **Timelapse Page**: This page provides the user with the ability to **generate vegetation change timelapses via manually selecting a region and a time period**. This timelapse image will be **added to the map** and can be exported to get the final result as a **GIF image** that can easily be shared.
4. **Change Detection Page**: This page provides the user the ability to **generate spectral change maps** that will be **visualized instantly post selecting the start and end year** for change detection. **The generated spectral map will be added to the map itself**.

### Constraints:

1. The landcover classification has been computed by two different methods, one is by directly using the **publicly available MODIS dataset** and the other by **manually, generating feature collections** and using that as the training data for building the model. Due to the involvement of this **manual effort**, change detection can only be performed on **selective regions** for now.
2. Change detection is being done by **geographically subtracting** the **two different samples of a region at two different time phases**. This can only give a mere idea regarding the areas where the change was observed and **can’t** necessarily provide a **detailed summary** of the specific affected areas.
3. The timelapse is a **visual representation** of the **change in vegetation** for a clipped region over a **specified period of time**. It needs **parameters** like **start year, end year, end month**, and the **actual region** that we want the program to present the change in the form of a GIF. Thus, this feature takes a **certain magnitude of computation time** based on these parameters. Possibilities are that the program might take **incredibly high computation time** for selected regions that are **too huge** or a **time interval** that is very lengthy.

## 1.3 Functional and Non-Functional Requirements

### The Functional Requirements are as followed:

<ol type="i">
  <li>	To provide a platform for monitoring of land vegetation cover and to present in a visually intuitive form.</li>
  <li>	To implement the best method for the detection of changes in the vegetation cover in a particular area.</li>
  <li>	The application should provide a Timelapse of the vegetation cover over the selected area in different periods of years with the ability to export and download the timelapse in a GIF format.</li>
  <li>	To implement and compare multiple classification methodologies and to get the best outcomes from the same by computing the results from the classification and show the results with proper legends on the Map interface.</li>
  <li>	User interface provided must be a responsive web interface that is displayed in an easy-to-interpret methodically laid out manner.</li>
 </ol>

### The Non-Functional Requirements are as followed:

<ol type="i">
<li>	To build a secure API, such that only authorized applications/users can access it by setting appropriate CORS (Cross-Origin Resource Sharing) configuration. </li>
<li>	To build an API having a fast response time (subject to complexity of model and text input) so the software will work for all use cases, provided the input is in plain text. </li>
<li>	To design a user-friendly interface, such that the end users will be able to accurately analyze, comprehend and summarize the text provided. </li>
<li>	To build a system that will be available 24/7 to the users with an internet connection.</li>
<li>	The software should be deployable on any server and should be accessible from any browser.</li>
<li>	The output should be reliable with good accuracy scores. </li>
</ol>

## 1.4 Application workflow Diagrams


The workflow diagrams are as followed:

<div align="center">
<br/>
<ul>
    <li>
        <h5> Classification Flow Diagram </h5>
        </br>
        <img src="./AboutProject/Classification%20Flow%20Diagram.svg" alt="Classification Flow Diagram" width="auto"/>
    </li>
    <br/>
   <li>
        <h5> Change Detection Flow Diagram </h5>
        </br>
        <img src="./AboutProject/Change%20Detection%20Flow%20Diagram.svg" alt="Change Detection Flow Diagram" width="auto"/>
    </li>
    <br/>
    <li>
        <h5> Timelapse Generation Flow Diagram </h5>
        </br>
        <img src="./AboutProject/Timelapse%20generation%20Flow%20Diagram.svg" alt="Timelapse Generation Flow Diagram" width="auto"/>
    </li>
</ul>
</div>


[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-getting-started-a-name--getting_starteda)

# 🏁 Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- [React](https://reactjs.org/)
- [Tailwind CSS](https://tailwindcss.com/)

### Installing

A step by step series of examples that tell you how to get a development env running.

- Clone this repository
- Open command line in the cloned folder,

  - To install dependencies, run `npm install`

  - To run the application for development,

    - then run `npm start` in the client folder to start the app

- Open [localhost:3000](localhost:3000) in the browser

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-built-using-a-name--built_usinga)

# :hammer_and_wrench: Built Using <a name = "built_using"></a>

- [React](https://reactjs.org/) - Web Framework
- [Tailwind CSS](https://tailwindcss.com/) - CSS Framework
- [GraphViz API](https://github.com/DomParfitt/graphviz-react#readme) - Library for visualization of the DFA
- [quickchart.io](https://quickchart.io/documentation/graphviz-api/) - API for visualization

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-authors-a-name--authorsa)

# 📦 Packages Used <a name = "packages"></a>

<div align="center">
 
| Packages  | Versions |
| ------------- |:-------------:|
| @craco/craco      | 6.4.0 |
| @headlessui/react     | 1.4.1 |
| @heroicons/react      | 1.0.5    |
|@hookform/resolvers|2.8.3|
|autoprefixer| 9.8.8|
|axios|0.23.0|
|bootstrap|5.1.3|
|cra-template|1.1.2|
|gh-pages|3.2.3|
|postcss|7.0.39|
|react|17.0.2|
|react-bootstrap|2.0.0|
|react-dom|17.0.2|
|react-fullscreen-image|0.0.3|
|react-hook-form|7.19.3|
|react-icons|4.3.1|
|react-router-dom|5.3.0|
|react-scripts|4.0.3|
|npm:@tailwindcss/postcss7-compat|2.2.17|
|svg-to-jsx|1.0.4|
|yup|0.32.11|
 
</div>

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-authors-a-name--authorsa)

# :pencil2: Authors <a name="authors"></a>

- [Anurag Ghosh](https://www.linkedin.com/in/anurag-g-a01531198)
- [Harsh Jain]()
- [Samved Joshi]()
- [Ishan Kulkarni](https://www.linkedin.com/in/kulkarniishan)

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-built-using-a-name--built_usinga)

# :brain: Contribution over Time <a name="contribution"></a>

<div align="center">
 <a href="https://www.apiseven.com/en/contributor-graph?chart=contributorOverTime&repo=harsh3401/mini_project">
  <img src="https://contributor-graph-api.apiseven.com/contributors-svg?chart=contributorOverTime&repo=harsh3401/mini_project" alt="Contribution image"/>
 </a>
 <br/>
 <a href = "https://contrib.rocks/image?repo=harsh3401/mini_project">
  <img src = "https://contrib.rocks/image?repo=harsh3401/mini_project"/>
</a>
</div>

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-authors-a-name--authorsa)

# :weight_lifting: Performance of Web App <a name = "performance"></a>

<div align="center">
<br/>
<ul>
    <li>
        <h3> Performance of the Web App on Desktop </h3>
        </br>
        <img src="./speedtestDesktop.svg" alt="performance in desktop" width="auto"/>
    </li>
    <br/>
    <li>
        <h3> Performance of the Web App on Mobile Device </h3>
        <br/>
        <img src="./speedtestMobile.svg" alt="performance in mobile Device" width="auto"/>
    </li>
</ul>
</div>
