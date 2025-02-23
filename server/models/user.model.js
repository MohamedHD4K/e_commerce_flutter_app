import mongoose from "mongoose";

const userScheima = new mongoose.Schema({
    username: {
        type: String,
        required: true,
        unique: true,
    },
    fullName: {
        type: String,
        required: true,
    },
    password: {
        type: String,
        required: true,
    },
    email: {
        type: String,
        required: true,
    },
    profileImg: {
        type: String,
        default: ""
    },
    address: {
        type: String,
        default: ""
    },
    gender: {
        type: Boolean,
        default: null,
    },
    age: {
        type: Number,
        default: null,
    },
})

const User = mongoose.model("User", userScheima);
export default User
