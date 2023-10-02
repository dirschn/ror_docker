# RoR Docker

Setting this docker image up will give you a running Ruby on Rails webserver whose root page shows an image of Mouse!

To get it running, you'll either need to download as a zip or clone it if you have git already set up.

Once it's on your machine, extract it (Mac will have automatically done this for you). Once it's extracted, navigate to the folder in your terminal and run these commands:

Build the image
`docker build -t mouse-server .`
(This one may take a while to complete)

Run the container
`docker run -d -p 3000:3000 mouse-server`

Once you're done, fire up your browser and navigate to http://localhost:3000 and you should be served a picture of Mouse!
