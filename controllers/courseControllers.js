const {getcourseService} = require('../service/courseService')

const getcourseController = async (req, res) => {
    const course = await getcourseService()
    res.status(200).json(course)
}


    
module.exports = {
    getcourseController
}