FROM languagetool/languagetool:latest

# Render expects your app to listen on port 10000
EXPOSE 10000

# Override the default CMD to run LT on Render’s expected port
CMD ["java", "-cp", "languagetool-server.jar", "org.languagetool.server.HTTPServer", "--port", "10000"]
