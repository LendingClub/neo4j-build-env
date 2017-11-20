# neo4j-build-env

This provides a simple build environment for JVM apps needing to build/test against neo4j.

It is meant to be invoked as so:

```bash
docker run -it -v $(pwd):/build neo4j-build-env <build command>
```

For instance:

```bash
docker run -it -v $(pwd):/build neo4j-build-env ./gradlew clean check
```


  
