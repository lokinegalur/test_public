import express from "express"
import mysql from "mysql"
import path from "path"
const app = express()

// DATABASE CONNECTION DETAILS
// const path = path()
require('dotenv').config({ path: path.resolve(__dirname, '.env') })
const db_host = process.env.DB_HOST;
const db_port = process.env.DB_PORT;
const db_user = process.env.DB_USER
const db_password = process.env.DB_PASSWORD;
const database = process.env.DATABASE_NAME;
const db = mysql.createConnection({
    host: db_host,
    user: db_user,
    password: db_password,
    database: database
})
console.log(process.env)
app.get("/",(req,res)=>{
    res.json("hello this is the backend")
})

app.get("/books",(req,res)=>{
    const q = "SELECT * FROM books"
    db.query(q,(err,data)=>{
        if(err) return res.json(err)
        return res.json(data)
    })
})

app.post("/books", (req, res) => {
    const q = "INSERT INTO books(`title`, `desc`, `price`, `cover`) VALUES (?)";
  
    const values = [
      req.body.title,
      req.body.desc,
      req.body.price,
      req.body.cover,
    ];
  
    db.query(q, [values], (err, data) => {
      if (err) return res.send(err);
      return res.json(data);
    });
  });

app.listen(8800, ()=>{
    console.log("Connected to backend :)")
})
