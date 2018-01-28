# Indicates that the nanoserver image will be used as the base image
FROM microsoft/iis:nanoserver

# Metadata indicating an image maintainer
MAINTAINER Muhammed Iqbal

# Delete the default website files
RUN powershell -Command Remove-Item -Recurse C:\inetpub\wwwroot\*

# Copy the contents of websrc folder into the default website folder
COPY ./app c:/inetpub/wwwroot

# Sets a command or process that will run each time a container is run from the new image
CMD [ "CMD" ]
