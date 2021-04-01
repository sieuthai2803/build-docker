cmd /c docker build -t echange-minimal .
cmd /c docker stop ech-minimal
cmd /c docker rm ech-minimal
cmd /c docker run -d -p 9090:9090 -p 8080:8080 -p 9009:9009 -p 9005:9005 --name ech-minimal exchange-minimal