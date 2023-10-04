// init express
const express = require('express');
const app = express();
const cors = require('cors');
const port = 3000;


// init middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));


// routing
app.get('/', async (req, res) => {
    // import course service untuk mengambil data pada database
    const {getAllCourse } = require('./service/courseService');

    let courses = await getAllCourse();

    res.json(courses);
});


// listen
app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});