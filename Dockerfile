FROM ghcr.io/languagetool-org/languagetool:latest

# Render expects port 10000
EXPOSE 10000

# Override default port (8010) with one Render supports
CMD ["java", "-cp", "languagetool-server.jar", "org.languagetool.server.HTTPServer", "--port", "10000"]
