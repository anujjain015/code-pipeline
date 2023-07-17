#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /home/ec2-user/express-app

#navigate into our working directory where we have all our github files
cd /home/ec2-user/express-app

#install node modules
pip3 install -r requirements.txt

#start our python app in the background
FLASK_APP=app.py flask run --host=0.0.0.0
