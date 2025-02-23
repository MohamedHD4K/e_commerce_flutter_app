import User from '../models/user.model.js'
import bcrypt from 'bcryptjs'
import generatTokenAndSetCookie from '../lib/utils/generatTokenAndSetCookie.js'

export const signup = async (req, res) => {
    const { fullName, username, password, email, gender, address, profileImg, age } = req.body

    try {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/;
        if (!emailRegex.test(email)) return res.status(400).json({ error: "Invalid email format" });

        if (password.length < 6) return res.status(400).json({ error: "password must be at least 6 characters long" });

        const existingUser = await User.findOne({ username })
        if (existingUser) return res.status(400).json({ error: "username already taken" });

        const existingEmail = await User.findOne({ email })
        if (existingEmail) return res.status(400).json({ error: "email already taken" });

        const salt = await bcrypt.genSalt(10)
        const hashedPassword = await bcrypt.hash(password, salt)
        console.log(hashedPassword);
        const newUser = new User({
            fullName,
            username,
            password: hashedPassword,
            email,
            gender,
            address,
            profileImg,
            age
        })

        if (newUser) {
            await newUser.save()
            generatTokenAndSetCookie(newUser._id, res)

            res.status(201).json({ newUser, message: "Signup successful" })

        } else return res.status(401).json({ error: "Invaled user data" })

        console.log(newUser);
    } catch (error) {
        console.log("Error in singup controller", error.message);
        return res.status(500).json({ error: "Internal server error" });
    }

}

export const login = async (req, res) => {
    const { username, password } = req.body

    try {
        if (password.length < 6) return res.status(400).json({ error: "password must be at least 6 characters long" });

        const user = await User.findOne({ username })
        if (!user) return res.status(400).json({ error: "Invaled username" });

        const truepassword = bcrypt.compareSync(password, user.password)
        if (!truepassword) return res.status(400).json({ error: "Invaled username or password" });

        generatTokenAndSetCookie(user._id, res)

        console.log(user);

        res.status(201).json({ user, message: "Login successful" })
    } catch (error) {
        console.log("Error in login controller", error.message);
        return res.status(500).json({ error: "Internal server error" });
    }

}

export const logout = (req, res) => {
    try {
        res.clearCookie("jwt", {
            httpOnly: true,
            secure: process.env.NODE_ENV === "production",
            sameSite: "strict"
        });

        console.log("User logged out successfully");
        res.status(200).json({ message: "Logout successful" });
    } catch (error) {
        console.log("Error in logout controller", error.message);
        return res.status(500).json({ error: "Internal server error" });
    }
}

export const me = (req, res) => {
    const user = req.user
    try {
        res.status(200).json(user)
    } catch (error) {
        console.log("Error in get me controller", error.message);
        return res.status(500).json({ error: "Internal server error" });
    }
}