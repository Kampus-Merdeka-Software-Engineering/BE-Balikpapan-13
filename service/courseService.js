const {prisma} = require('../config/prisma')

const getcourseService = async () => {
    const course = await prisma.course.findMany()
    return course
}

module.exports = {getcourseService}