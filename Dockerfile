FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN mkdir -p out

RUN javac -cp "lib/*" -d out src/*.java

EXPOSE 8080

CMD ["sh", "-c", "java -cp out:lib/* MainServer"]