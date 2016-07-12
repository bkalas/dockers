
```bash
docker build -t hlavki/karaf-4-cellar:4.0.5 -t hlavki/karaf-4-cellar -t karaf-4-cellar .
docker run --name="kacel1" -h kacel -d -e JAVA_MAX_MEM=256m -v ~/develop/utils/karaf-cellar-docker/deploy:/opt/deploy karaf-4-cellar
docker push hlavki/karaf-4-cellar
docker-compose up -d
```
