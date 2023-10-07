const {prisma} = require('../config/prisma');
const { createRegistrationService } = require('../service/registrationServices');
const createRegistrationControllers = async (req, res) => {
    const {name, email, number, course, gender} = req.body;
    console.log(req.body);
    
    const createRegistration = await prisma.registration.create({
        data: {
            name,
            email,
            number,
            course,
            gender
        }
    })
    const registration = await createRegistrationService()
    res.status(201).json({
        message: "registration is success",
        data: createRegistration
    })
}

module.exports = {
    createRegistrationControllers
}