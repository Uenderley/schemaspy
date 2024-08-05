FROM openjdk:11-jre-slim

# Instala dependências
RUN apt-get update && apt-get install -y graphviz curl

# Baixa o SchemaSpy
RUN mkdir -p /opt/schemaspy && \
    curl -Lo /opt/schemaspy/schemaspy.jar https://github.com/schemaspy/schemaspy/releases/download/v6.1.0/schemaspy-6.1.0.jar

# Define o ponto de entrada
ENTRYPOINT ["java", "-jar", "/opt/schemaspy/schemaspy.jar"]
