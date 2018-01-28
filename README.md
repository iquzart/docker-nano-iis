# Basi IIS for Docker Windows Demo
Simple Docker Image on Microsoft Nano Server with IIS

# Build Image
docker build -t nano-iis .
# Run Container
docker run -d --name myapp -p 80:80 nano-iis
# Inspect IP
$ip = docker inspect -f "{{.NetworkSettings.Networks.nat.IPAddress}}" myapp
# Test
Start-Process -FilePath http://$ip
 
