import express from "express";
import esp32Routes from "./routes/esp32.routes.js"
import indexRoutes from "./routes/index.routes.js"


const app = express()
app.use(express.json())

app.use(indexRoutes)
app.use('/api',esp32Routes)

app.use((req,res,next)=>{
    res.status(404).json({
        message: 'EndPoint not Found'
    })
})

export default app;