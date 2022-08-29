FROM public.ecr.aws/docker/library/nginx:1.19-alpine
ENV ASPNETCORE_URLS=http://+:8080
WORKDIR /app
COPY /aspnetapp/bin/Debug/netcoreapp3.1/* ./
ENTRYPOINT ["dotnet", "aspnetapp.dll"]
