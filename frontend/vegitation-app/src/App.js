import React from "react";
import Navbar from "./components/Navbar/Navbar";
import Home from "./components/Home/Home";
import Aboutus from "./components/Aboutus/Aboutus";
import "./App.css";

function App() {
  return (
    <div className="App ">
      <Navbar />
      <Home/>
      <Aboutus/>
    </div>
  );
}

export default App;
