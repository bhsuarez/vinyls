# Vinyls database

## Overview

This is a work in progress - app to organize my vinyl collection using
- Python
- docker
- flask

Some of my goals are:
- add vinyls to the database by barcode with information from [Discogs api](https://www.discogs.com/developers/#)
- recognize barcodes using `quagga2` javascript
- present the database using a flask app that can organize them in a catalog view or list view
- host it in a docker container to be easily deployed

### TODO
- change the postgres init to have auto-incrementing `album_id`
  - workaround applied, but still needs fixing
- addvinyl.html needs POST data value to confirm album has been added
- exception handling for UPC length
  - or anything that's not a UPC