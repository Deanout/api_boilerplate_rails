import { useState } from "react";
import logo from "./logo.svg";
import "./App.css";
import { useEffect } from "react";
import axios from "axios";

function App() {
  const [count, setCount] = useState(0);
  const [user, setUser] = useState([]);
  const client_id = "YkjLgFVPIWvuL_95qID-q4aqUumAutQPIc9wDdMVUd0";
  const client_secret = "WJzwtAH3u_zdQzToscVsh7BUBzyZ0Bh-nII1Mxuqr4Y";

  useEffect(() => {
    login();
  }, []);

  const login = () => {
    const data = {
      grant_type: "password",
      email: "dean@example.com",
      password: "password",
      client_id: client_id,
      client_secret: client_secret,
    };
    axios
      .post("http://localhost:3000/users/oauth/token", data)
      .then((response) => {
        setUser(response.data.user);
        console.log(response);
      })
      .catch((error) => {
        console.log(error);
      });
  };

  return (
    <div className="App">
      <h1>The API</h1>
      <h3>Current User: {user.email}</h3>
    </div>
  );
}

export default App;
