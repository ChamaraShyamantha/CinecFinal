const express = require("express");
const mongoose = require("mongoose");
const User = require("../modules/users");

const RouterAuthentication = express.Router();

RouterAuthentication.post("/api/signup", async (req, res) => {
  try {
    const { name, email, password, address, contactNo } = req.body;

    const exitingUser = await User.findOne({ email });
    if (existingUser) {
      return res
        .status(400)
        .json({ msg: "User with same email already exists!" });
    }

    let user = new User({
      email,
      password,
      name,
      address,
      contactNo,
    });

    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});
module.exports = RouterAuthentication;