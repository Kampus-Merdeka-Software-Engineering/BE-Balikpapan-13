const {prisma} = require('../config/prisma')

const getVidioServices = async (id) =>{
    let id_course = parseInt(id)
    const vidio = await prisma.vidio.findMany({
        where : {
            id_course
        }
    })
    
    return vidio
}

module.exports = {getVidioServices}