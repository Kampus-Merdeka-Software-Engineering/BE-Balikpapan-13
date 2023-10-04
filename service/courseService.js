const { prisma } = require('../config/prisma');

async function getAllCourse() {
    try {
      const books = await prisma.course.findMany();
  
      return books;
    } catch (error) {
      console.error(error);
  
      throw new Error()
    }
}


module.exports = { getAllCourse };
  