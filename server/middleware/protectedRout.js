import jwt from "jsonwebtoken"
import User from "../models/user.model.js"

async function protectedRout(req, res, next) {
    try {
        const token = req.cookies.jwt
        if (!token) return res.status(401).json({ error: "Unauthorized: No token" })

        const decoded = jwt.verify(token, process.env.JWT_SECRET)
        if (!decoded) return res.status(403).json({ error: "Unauthorized: Invalid token" })

        const user = await User.findById(decoded.userId)
        if (!user) return res.status(404).json({ error: "User not found" })

        req.user = user

        next()
    } catch (error) {
        console.log("Error in protected token", error.message);
        res.status(500).json({ error: "Internal Server Error: " + error.message });
    }
}
export default protectedRout