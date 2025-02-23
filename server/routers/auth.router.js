import express from 'express'
import { signup, login , me, logout } from '../controllers/auth.controller.js'
import protectedToken from '../middleware/protectedRout.js'

const router = express.Router()

router.post("/signup", signup)

router.post("/login", login)

router.post("/logout", logout)

router.get("/me" , protectedToken , me)

export default router   