const {prisma} = require('../config/prisma')
const createRegistrationService = async () => {
    const registration = await prisma.registration.findMany()
    return registration
}

module.exports = {createRegistrationService}