path = require 'path'
express = require 'express'
morgan = require 'morgan'

app = express()

# port variables
port = 4000 || process.env.PORT

# import routes
indexRoutes = require './routes/index.routes'

# settings
app.set 'views', path.join __dirname, '../views'
app.set 'view engine', 'pug'

# middlewares
app.use morgan 'dev'

# routes
app.use '/', indexRoutes

# static
app.use express.static path.join __dirname, '../public'

# start server
app.listen port, => 
    console.log 'server on port', port
    return