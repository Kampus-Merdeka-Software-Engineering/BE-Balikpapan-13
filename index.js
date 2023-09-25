const http = require("http");
const PORT = 4000;
 
const server = http.createServer((req, res) => {
  if (req.url === "/" && req.method === "GET") {
    res.write("Dari main route");
    res.end();
  }
 
  if (req.url === "/about" && req.method === "GET") {
    res.write("About Page ");
    res.end();
  }
 
  if (req.url === "/blogs/:id" && req.method === "GET") {
    const id = req.params.id;
    res.write(`Blog dengan id ${id}`);
    res.end();
  }
});
 
server.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`)
})