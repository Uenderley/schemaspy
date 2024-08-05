# schemaspy
schemaspy

1º Create the image
docker build -t schemaspy-with-graphviz .

2º Execute the command.
docker run -v /home/user/schemaspy/modelo:/output -v /home/user/schemaspy/drivers:/drivers -v /home/user/schemaspy/config:/config schemaspy-with-graphviz -configFile /config/stagepostgres.properties

3º Open the file
index.html
