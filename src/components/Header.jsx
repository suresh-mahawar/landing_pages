import React from "react";

function Header() {
  return (
    <header className="header">
      <h1 className="logo">Sukun Cloud Consulting</h1>
      <nav>
        <a href="#about">About</a>
        <a href="#services">Services</a>
        <a href="#whyme">Why Me</a>
        <a href="#contact">Contact</a>
      </nav>
    </header>
  );
}

export default Header;