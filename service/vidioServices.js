const {prisma} = require('../config/prisma')

const getVidioServices = async (req, res) =>{
    const vidio = await prisma.vidio.findMany({
        where : {
            id_course: 1
        }
    })
    
    return vidio
}

module.exports = {getVidioServices}