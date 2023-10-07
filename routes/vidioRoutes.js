const express = require('express');
const vidioRoutes = express.Router();
const {prisma} = require('../config/prisma');
const { getVidio } = require('../controllers/vidioControllers');

vidioRoutes.get('/:id_course', getVidio)

module.exports = {vidioRoutes}