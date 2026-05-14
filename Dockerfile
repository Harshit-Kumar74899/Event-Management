FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN mkdir -p out/web

RUN cp -r web/* out/web/

RUN find src -name "*.java" > sources.txt && javac -cp "lib/*" -d out @sources.txt

EXPOSE 8080

CMD ["sh", "-c", "java -cp out:lib/* MainServer"]