{Router} = require 'express'

router = Router()

# routes

router.get '/', (req, res) =>
    res.render 'index', {Title: 'inicio'}
    return

router.get '/about', (req, res) =>
    res.render 'about', {Title: 'sobre nosotros'}
    return

# export module
module.exports = router