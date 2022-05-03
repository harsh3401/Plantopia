<h1 align="center">Plantopia - A vegetation cover monitoring Application</h1>

<p align="center">
<a href="#"><img width=200px src="app/static/images/forest.png"  alt="Project logo"/></a></a>
 
</p>

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-table-of-contents)

# 📝 Table of Contents

- [About](#about)
- [Getting Started ](#getting_started)
- [Built Using](#built_using)
- [Libraries and Packages Used](#packages)
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
        <h4> Classification Flow Diagram </h4>
        </br>
        <img src="./AboutProject/Classification%20Flow%20Diagram.svg" alt="Classification Flow Diagram" width="auto"/>
    </li>
    <br/>
   <li>
        <h4> Change Detection Flow Diagram </h4>
        </br>
        <img src="./AboutProject/Change%20Detection%20Flow%20Diagram.svg" alt="Change Detection Flow Diagram" width="auto"/>
    </li>
    <br/>
    <li>
        <h4> Timelapse Generation Flow Diagram </h4>
        </br>
        <img src="./AboutProject/Timelapse%20generation%20Flow%20Diagram.svg" alt="Timelapse Generation Flow Diagram" width="auto"/>
    </li>
</ul>
</div>

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-getting-started-a-name--getting_starteda)

# 🏁 Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- [Python](https://www.python.org/)
- [Flask](https://reactjs.org/)
- [Voila](https://github.com/voila-dashboards/voila)
- [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML)
- [Tailwind CSS](https://tailwindcss.com/)

### Installing

A step by step series of examples that tell you how to get a development env running.

- Clone this repository
- Open command line in the cloned folder,
  
  - To create a virtual environment, run `virtualenv venv` and activate it by running `./Scripts/activate `.
  
  - To install the requirements, First navigate to the virtual environment folder by using `cd venv`, then install the requirements by running `pip install -r requirements.txt`.
  
  - Then go to the `.env` file and change the authentication id.
  
  - Then run the voila server by using `voila --Voila.tornado_settings="{'headers':{'Content-Security-Policy':\"frame-ancestors 'self' http://127.0.0.1:5000\"}}"` command.
  
  - Then navigate to the root folder by using `cd ..` command.
  
  - To run the application for development,

    - then run `python run.py` to start the web app.

- Open [localhost:5000](localhost:5000) in the browser to view the web app.

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-built-using-a-name--built_usinga)

# :hammer_and_wrench: Built Using <a name = "built_using"></a>

- [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML) - Webpage
- [Tailwind CSS](https://tailwindcss.com/) - CSS Framework
- [Python](https://www.python.org/) - Backend
- [Flask](https://reactjs.org/) - Backend
- [Google Earth Engine](https://earthengine.google.com/) - GIS Tool
- [Jupyter Notebook](https://jupyter.org/) - For different services
- [Voila](https://github.com/voila-dashboards/voila) - Convertion of Jupyter notebook to web application
- [Heroku](https://www.heroku.com/)- Deployment

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-authors-a-name--authorsa)

# 📦 Libraries and Packages Used <a name = "packages"></a>

<div align="center">
 
| Libraries/Packages | Versions |
| ------------- |:-------------:|
| anyio | 3.5.0| 
| argon2-cffi | 21.3.0| 
| argon2-cffi-bindings | 21.2.0| 
| asttokens | 2.0.5| 
| attrs | 21.4.0| 
| Babel | 2.10.1| 
| backcall | 0.2.0| 
| beautifulsoup4 | 4.11.1| 
| bleach | 5.0.0| 
| blessings | 1.7| 
| bqplot | 0.12.33| 
| branca | 0.5.0| 
| cachetools | 5.0.0| 
| certifi | 2021.10.8| 
| cffi | 1.15.0| 
| charset-normalizer | 2.0.12| 
| click | 8.1.2| 
| colorama | 0.4.4| 
| colour | 0.1.5| 
| cycler | 0.11.0| 
| debugpy | 1.6.0| 
| decorator | 5.1.1| 
| defusedxml | 0.7.1| 
| earthengine-api | 0.1.306| 
| ee | 0.2| 
| ee-extra | 0.0.13| 
| entrypoints | 0.4| 
| executing | 0.8.3| 
| fastjsonschema | 2.15.3| 
| ffmpeg-python | 0.2.0| 
| filelock | 3.6.0| 
| Flask | 2.1.1| 
| folium | 0.12.1.post1| 
| fonttools | 4.33.2| 
| future | 0.18.2| 
| gdown | 4.4.0| 
| geeadd | 0.5.5| 
| geemap | 0.13.2| 
| geocoder | 1.38.1| 
| geojson | 2.5.0| 
| google-api-core | 2.7.2| 
| google-api-python-client | 1.12.11| 
| google-auth | 2.6.6| 
| google-auth-httplib2 | 0.1.0| 
| google-cloud-core | 2.3.0| 
| google-cloud-storage | 2.3.0| 
| google-crc32c | 1.3.0| 
| google-resumable-media | 2.3.2| 
| googleapis-common-protos | 1.56.0| 
| httplib2 | 0.20.4| 
| httplib2shim | 0.0.3| 
| idna | 3.3| 
| importlib-metadata | 4.11.3| 
| importlib-resources | 5.7.1| 
| ipyevents | 2.0.1| 
| ipyfilechooser | 0.6.0| 
| ipykernel | 6.13.0| 
| ipyleaflet | 0.16.0| 
| ipython | 7.23.1| 
| ipython-genutils | 0.2.0| 
| ipytree | 0.2.1| 
| ipywidgets | 7.7.0| 
| itsdangerous | 2.1.2| 
| jedi | 0.18.1| 
| Jinja2 | 3.1.1| 
| json5 | 0.9.6| 
| jsonschema | 4.4.0| 
| jupyter-client | 7.2.2| 
| jupyter-core | 4.10.0| 
| jupyter-server | 1.16.0| 
| jupyterlab | 3.3.4| 
| jupyterlab-pygments | 0.2.2| 
| jupyterlab-server | 2.13.0| 
| jupyterlab-widgets | 1.1.0| 
| kiwisolver | 1.4.2| 
| logzero | 1.7.0| 
| MarkupSafe | 2.1.1| 
| matplotlib | 3.5.1| 
| matplotlib-inline | 0.1.3| 
| mistune | 0.8.4| 
| nbclassic | 0.3.7| 
| nbclient | 0.5.13| 
| nbconvert | 6.5.0| 
| nbformat | 5.3.0| 
| nest-asyncio | 1.5.5| 
| notebook | 6.4.11| 
| notebook-shim | 0.1.0| 
| packaging | 21.3| 
| pandocfilters | 1.5.0| 
| parso | 0.8.3| 
| pickleshare | 0.7.5| 
| Pillow | 9.1.0| 
| plotly | 5.7.0| 
| prometheus-client | 0.14.1| 
| prompt-toolkit | 3.0.29| 
| protobuf | 3.20.1| 
| psutil | 5.9.0| 
| pure-eval | 0.2.2| 
| pyasn1 | 0.4.8| 
| pyasn1-modules | 0.2.8| 
| pycparser | 2.21| 
| PyCRS | 1.0.2| 
| Pygments | 2.11.2| 
| pyparsing | 3.0.8| 
| pyrsistent | 0.18.1| 
| pyshp | 2.2.0| 
| PySocks | 1.7.1| 
| python-box | 6.0.2| 
| python-dateutil | 2.8.2| 
| pytz | 2022.1| 
| pyzmq | 22.3.0| 
| ratelim | 0.1.6| 
| requests | 2.27.1| 
| rsa | 4.8| 
| sankee | 0.0.7| 
| Send2Trash | 1.8.0| 
| six | 1.16.0| 
| sniffio | 1.2.0| 
| soupsieve | 2.3.2.post1| 
| stack-data | 0.2.0| 
| tenacity | 8.0.1| 
| terminado | 0.13.3| 
| tinycss2 | 1.1.1| 
| tornado | 6.1| 
| tqdm | 4.64.0| 
| traitlets | 5.1.1| 
| traittypes | 0.2.1| 
| uritemplate | 3.0.1| 
| urllib3 | 1.26.9| 
| voila | 0.3.5| 
| wcwidth | 0.2.5| 
| webencodings | 0.5.1| 
| websocket-client | 1.3.2| 
| websockets | 10.3| 
| Werkzeug | 2.1.1| 
| whitebox | 2.1.2| 
| whiteboxgui | 0.7.0| 
| widgetsnbextension | 3.6.0| 
| xyzservices | 2022.4.0| 
| zipp | 3.8.0| 

</div>

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-authors-a-name--authorsa)

# :pencil2: Authors <a name="authors"></a>

[![](https://img.shields.io/badge/LinkedIn-_Anurag_Ghosh-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/anurag-g-a01531198)

[![](https://img.shields.io/badge/LinkedIn-_Harsh_Jain-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/)

[![](https://img.shields.io/badge/LinkedIn-_Samved_Joshi-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/)

[![](https://img.shields.io/badge/LinkedIn-_Ishan_Kulkarni-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/kulkarniishan)



[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/colored.png)](#-built-using-a-name--built_usinga)

# :brain: Contribution over Time <a name="contribution"></a>

<div align="center">
 <a href="https://www.apiseven.com/en/contributor-graph?chart=contributorOverTime&repo=harsh3401/mini_project">
  <img src="https://contributor-graph-api.apiseven.com/contributors-svg?chart=contributorOverTime&repo=harsh3401/mini_project" alt="Contribution image"/>
 </a>
 <br/>
 <br/>
 <h2>Contributors</h2>
 <br/>
 <a href = "https://contrib.rocks/image?repo=harsh3401/mini_project">
  <img src = "https://contrib.rocks/image?repo=harsh3401/mini_project"/>
</a>
</div>
<br/>

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
