require('dotenv').config();
const express = require('express');
const cors = require('cors');
const app = express();
const {prisma} = require("./config/prisma");
const { registrationRoutes } = require('./routes/registrationRoutes');
const { courseRoutes } = require('./routes/courseRoutes');
const { vidioRoutes } = require('./routes/vidioRoutes');
// untuk mengaktifkan cors, agara API bisa diakses dari luar/front-end
app.use(cors()); 
// parse request body dari JSON Ke object
app.use(express.json()) 
//parse request body dari x-www-form-urlencoded ke object
app.use(express.urlencoded({extended:true}))  

app.use("/vidio", vidioRoutes)
app.use("/course", courseRoutes)

//rute untuk registration
app.use("/registration", registrationRoutes )
const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
    console.log('server is running on port '+ PORT);
});