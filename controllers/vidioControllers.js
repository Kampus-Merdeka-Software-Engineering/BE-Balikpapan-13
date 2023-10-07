const {getVidioServices} = require('../service/vidioServices')

const getVidio = async (req, res) => {
    const course = await getVidioServices(req, res)
    res.status(200).json(course)
}


    
module.exports = {
    getVidio
}