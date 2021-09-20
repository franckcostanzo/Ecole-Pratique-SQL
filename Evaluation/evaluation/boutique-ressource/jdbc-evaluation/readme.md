# Initiation à JDBC

## Récupération du projet
```
git clone ...
```

## Installation du projet
```
mvn install
```

## Compilation du projet
```
mnv clean package
```

## Script SQL 
```
./src/sql/boutique.sql
```
#
# Création manuelle du projet

## Exécuter la commande :
```
mvn archetype:generate "-DgroupId=com.mycompany.cinema" "-DartifactId=core" "-DarchetypeArtifactId=maven-archetype-quickstart" "-DinteractiveMode=false"
```

## Ajouter des configurations dans le fichier pom.xml

```xml
<dependencies>
...
  <dependency>
      <groupId>org.mariadb.jdbc</groupId>
      <artifactId>mariadb-java-client</artifactId>
      <version>2.6.2</version>
  </dependency>
 ...
</dependencies>
```
```xml
<properties>
  <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
  <maven.compiler.source>11</maven.compiler.source>
  <maven.compiler.target>11</maven.compiler.target>
</properties>
```
```xml
<build>
  <pluginManagement>
    <plugins>
      <plugin>
        <artifactId>maven-jar-plugin</artifactId>
        <version>3.0.2</version>
        <configuration>
          <archive>
            <manifest>
              <mainClass>com.mycompany.cinema.App</mainClass>
            </manifest>
          </archive>
        </configuration>
      </plugin>
    </plugins>
  </pluginManagement>
</build>
```
