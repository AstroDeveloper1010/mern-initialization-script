# Shell script to initialise a MERN project.

# Initialization
echo "Enter the name of your project: "
read projectName
mkdir $projectName
cd $projectName

# Create server directory
mkdir server
cd server

# Initialize node js server
npm init

# Install express js and mongoose
npm i express mongoose

# Create server.js file
echo "const express = require('express');
      const mongoose = require('mongoose');
      
      const app = express();
      
      app.use(express.json());
      
      // connect to mongodb
      mongoose.connect('
          mongodb://localhost/${projectName}', {
          useNewUrlParser: true,
          useUnifiedTopology: true
      });
      
      const port = 4000 || process.env.PORT;
      app.listen(port, () => {
          console.log(`app is listening on port ${port}`);
      });"

> server.js

# Create models and routes
mkdir models routes

# Create a demo route and model
echo "const express = require('express');
      const router = express.Router();
      const model = require('../models/model');

      // define sample route
      router.get('/', (req, res) => {
        res.join({message: 'Route is working'});
      });

      module.exports = router;"
      
> routes/route.js

echo "const mongoose = require('mongoose');
      
      const schema = new mongoose.Schema({
        name: String,
        type: production
      });

      module.exports = mongoose.model('model', schema);"

> models/model.js

# Return to the project directory
cd ..

# Create client directory
mkdir client
cd client

# Initialize React app
npx create-react-app

# Return to the project directory
cd ..

echo "Project initialized successfully. Start building your MERN app"