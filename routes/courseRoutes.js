const express = require('express');
const courseRoutes = express.Router();
const {prisma} = require('../config/prisma');
const {getcourseController} = require('../controllers/courseControllers')

courseRoutes.get('/', getcourseController)


module.exports = {courseRoutes}