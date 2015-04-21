# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Create the one and only system user - as requested by the client
User.create({username: "zerowaste@prc.org", password: "recycle1", password_confirmation: "recycle1", role: "admin" })