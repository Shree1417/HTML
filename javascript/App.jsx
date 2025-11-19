import React, { useState } from "react";

// Reusable TextInput Component
const TextInput = ({ label, value, onChange, type = "text" }) => {
  return (
    <div style={{ marginBottom: "16px" }}>
      <label style={{ fontWeight: "bold" }}>{label}: </label>
      <input
        type={type}
        value={value}
        onChange={onChange}
        style={{
          padding: "8px",
          border: "1px solid #777",
          borderRadius: "6px",
          width: "250px"
        }}
      />
    </div>
  );
};

// Main App Component
const App = () => {

  const [text, setText] = useState("");

  const [darkMode, setDarkMode] = useState(false);

  const appStyle = {
    backgroundColor: darkMode ? "#1e293b" : "#f1f5f9",
    color: darkMode ? "white" : "black",
    minHeight: "100vh",
    padding: "30px"
  };

  
  //  Product List & Filter & Hover Highlight
  const products = [
    { id: 1, name: "Laptop" },
    { id: 2, name: "Headphones" },
    { id: 3, name: "Keyboard" },
    { id: 4, name: "Mouse" },
    { id: 5, name: "Monitor" }
  ];

  const [filter, setFilter] = useState("");
  const [hovered, setHovered] = useState(null);

  const filteredProducts = products.filter((item) =>
    item.name.toLowerCase().includes(filter.toLowerCase())
  );

 //  Grid & List Layout Toggle
 const [layout, setLayout] = useState("grid");

  const productContainerStyle = {
    display: "grid",
    gridTemplateColumns: layout === "grid" ? "1fr 1fr 1fr" : "1fr",
    gap: "12px",
    marginTop: "15px"
  };

  //  Signup Form with Reusable Inputs + Validation
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const emailValid = /\S+@\S+\.\S+/.test(email);
  const formValid = name && emailValid && password;

  const handleSubmit = (e) => {
    e.preventDefault();
    alert("Form submitted!");
  };

  const handleClear = () => {
    setName("");
    setEmail("");
    setPassword("");
  };

  return (
    <div style={appStyle}>
      <h1>React Tasks</h1>

      <section>
        <h2>1. Live Text Preview</h2>
        <input
          type="text"
          placeholder="Type something…"
          value={text}
          onChange={(e) => setText(e.target.value)}
          style={{ padding: "10px", width: "250px" }}
        />
        <p><strong>Preview:</strong> {text}</p>
      </section>
      <hr />
      <section>
        <h2>2. Dark / Light Mode</h2>
        <button
          onClick={() => setDarkMode(!darkMode)}
          style={{
            padding: "10px 20px",
            borderRadius: "8px",
            background: darkMode ? "#0ea5e9" : "#1e40af",
            color: "white",
            border: "none"
          }}
        >
          Toggle Theme
        </button>
      </section>
      <hr />
      <section>
        <h2>3. Product List + Filter + Hover + Layout</h2>

        <input
          type="text"
          placeholder="Filter products…"
          value={filter}
          onChange={(e) => setFilter(e.target.value)}
          style={{ padding: "10px", width: "250px" }}
        />

        <br /><br />

        <button
          onClick={() => setLayout("grid")}
          style={{ marginRight: "10px", padding: "8px 16px" }}
        >
          Grid
        </button>
        <button
          onClick={() => setLayout("list")}
          style={{ padding: "8px 16px" }}
        >
          List
        </button>

        <div style={productContainerStyle}>
          {filteredProducts.map((item) => (
            <div
              key={item.id}
              onMouseEnter={() => setHovered(item.id)}
              onMouseLeave={() => setHovered(null)}
              style={{
                padding: "15px",
                borderRadius: "10px",
                backgroundColor: hovered === item.id ? "#38bdf8" : "#94a3b8",
                color: "white",
                cursor: "pointer",
                textAlign: "center"
              }}
            >
              {item.name}
            </div>
          ))}
        </div>
      </section>

      <hr />

      <section>
        <h2>7. Signup Form (Controlled + Validation)</h2>

        <form onSubmit={handleSubmit}>
          <TextInput
            label="Name"
            value={name}
            onChange={(e) => setName(e.target.value)}
          />

          <TextInput
            label="Email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            type="email"
          />
          {!emailValid && email && (
            <p style={{ color: "red" }}>Invalid email format</p>
          )}

          <TextInput
            label="Password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            type="password"
          />

          <button
            type="submit"
            disabled={!formValid}
            style={{
              padding: "10px 20px",
              background: formValid ? "#16a34a" : "#6b7280",
              color: "white",
              border: "none",
              borderRadius: "6px",
              cursor: formValid ? "pointer" : "not-allowed",
              marginRight: "12px"
            }}
          >
            Submit
          </button>

          <button
            type="button"
            onClick={handleClear}
            style={{
              padding: "10px 20px",
              background: "#ef4444",
              color: "white",
              border: "none",
              borderRadius: "6px",
              cursor: "pointer"
            }}
          >
            Clear
          </button>
        </form>

        {/* Form Data Preview */}
        <div style={{ marginTop: "20px", padding: "10px" }}>
          <h3>Form Data Preview:</h3>
          <p><strong>Name:</strong> {name}</p>
          <p><strong>Email:</strong> {email}</p>
          <p><strong>Password:</strong> {password}</p>
        </div>
      </section>
    </div>
  );
};

export default App;
