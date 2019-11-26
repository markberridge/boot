Build
-----

```./gradlew build```

Run Locally
-----------

Start a local DynamoDB instance on `http://localhost:8000`:

```docker run -p 8000:8000 amazon/dynamodb-local```

Start the app under the `localDynamo` spring profile:

```java -Dspring.profiles.active=localDynamo -jar build/libs/boot.jar```

Check dependency versions
---

Check dependency versions using https://github.com/ben-manes/gradle-versions-plugin

```./gradlew dependencyUpdates```