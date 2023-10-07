require('dotenv').config();
const express = require('express');
const cors = require('cors');
const app = express();
const {prisma} = require("./config/prisma");
const { registrationRoutes } = require('./routes/registrationRoutes');
const { courseRoutes } = require('./routes/courseRoutes');
// untuk mengaktifkan cors, agara API bisa diakses dari luar/front-end
app.use(cors()); 
// parse request body dari JSON Ke object
app.use(express.json()) 
//parse request body dari x-www-form-urlencoded ke object
app.use(express.urlencoded({extended:true}))  

app.use("/course", courseRoutes)

//rute untuk registration
app.use("/registration", registrationRoutes )
app.listen(3000, () => {
    console.log('server is running on port 3000');
});