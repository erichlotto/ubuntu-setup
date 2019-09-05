#!/bin/bash

echo '<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My Page</title>
  </head>
  <body></body>
</html>' > ~/Templates/webpage.html

echo "#!/bin/bash
" >  ~/Templates/script.sh
sudo chmod +x ~/Templates/script.sh

touch ~/Templates/document
