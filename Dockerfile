FROM abhirupguha/dotnet_ubu:4233
MAINTAINER abhirupguha
COPY . /myapp
WORKDIR /myapp

RUN ["dotnet", "restore"]
RUN ["dotnet", "build","-c","Release"]


EXPOSE 80/tcp
ENV ASPNETCORE_URLS http://*:80

ENTRYPOINT ["dotnet", "run"]
