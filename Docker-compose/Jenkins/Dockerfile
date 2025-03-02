# Use the official Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root user to install dependencies
USER root

# Install Docker inside Jenkins container (needed for building Docker-based projects)
RUN apt-get update && apt-get install -y docker.io

# Switch back to Jenkins user
USER jenkins

# Pre-install Jenkins plugins (use correct names)
RUN jenkins-plugin-cli --plugins \
    git \
    docker-workflow \
    pipeline-stage-view \
    github \
    workflow-job \
    configuration-as-code

# Expose necessary ports
EXPOSE 8080 50000

# Set up Jenkins startup
CMD ["jenkins.sh"]
