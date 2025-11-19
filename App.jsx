import React from "react";

// Reusable Button Component
const Button = ({ text, bgColor, onClick }) => {
  const styles = {
    backgroundColor: bgColor || "#4f46e5",
    color: "white",
    padding: "10px 20px",
    border: "none",
    borderRadius: "8px",
    cursor: "pointer",
    margin: "8px",
    fontSize: "16px"
  };

  return <button style={styles} onClick={onClick}>{text}</button>;
};

// Header Component
const Header = ({ title }) => {
  return (
    <header
      style={{
        background: "#0ea5e9",
        padding: "20px",
        color: "white",
        textAlign: "center"
      }}
    >
      <h1>{title}</h1>
    </header>
  );
};

// Footer Component
const Footer = ({ message }) => {
  return (
    <footer
      style={{
        background: "#1e293b",
        padding: "15px",
        color: "white",
        textAlign: "center",
        marginTop: "20px"
      }}
    >
      <p>{message}</p>
    </footer>
  );
};

// Main App Component
const App = () => {
  const handleClick = () => {
    alert("Button clicked!");
  };

  return (
    <>
      <Header title="Welcome to My React Page" />

      <div style={{ textAlign: "center", marginTop: "40px" }}>
        <h2>Reusable Button Demo</h2>

        <Button text="Click Me" bgColor="#10b981" onClick={handleClick} />
        <Button text="Submit" bgColor="#f97316" onClick={() => alert("Submitted!")} />
        <Button text="Cancel" bgColor="#ef4444" onClick={() => alert("Cancelled!")} />
      </div>

      <Footer message="© 2025 MY React page" />
    </>
  );
};

export default App;
