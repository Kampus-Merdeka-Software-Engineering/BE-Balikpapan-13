const express = require('express');
const registrationRoutes = express.Router();
const {prisma} = require('../config/prisma');
const { createRegistrationControllers } = require('../controllers/registrationControllers');

registrationRoutes.post('/', createRegistrationControllers)

module.exports = {registrationRoutes}