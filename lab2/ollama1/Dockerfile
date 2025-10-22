# Use Ollama Docker Image as the base
FROM ollama/ollama:0.12.1

ENV APP_HOME=/home

WORKDIR $APP_HOME

#copy the start script
COPY . .

# Change the permission of the start script
RUN chmod +x pull-llm.sh

# Run the start script 
ENTRYPOINT ["/usr/bin/bash", "pull-llm.sh"]