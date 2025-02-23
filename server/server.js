import dotenv from 'dotenv'
import express from 'express'
import connectMongoDB from './db/connectionMongoDB.js'
import cookieParser from 'cookie-parser'
import cors from 'cors'
import authRouter from './routers/auth.router.js'

dotenv.config()

const app = express()
const port = process.env.PORT
const uri = process.env.DATABASE_URI


app.use(express.json({ limit: "5mb" })); // DoS Attack
app.use(express.urlencoded({ extended: true }));
app.use(cookieParser());
app.use(cors())

app.use("/api/auth", authRouter)

app.get("/", (req, res) => {
    res.json({ message: "the first end point" })
})

app.listen(port,
    () => {
        console.log(`Server running on port http://localhost:${port}`)
        connectMongoDB()
    }
)