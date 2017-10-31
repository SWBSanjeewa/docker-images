# Jenkins Windows JNLP Slaves Docker Image

Run jenkins slave permanently on windows docker environment.

# How to Build

docker build . -t jenkins-jnlp-slave-windowsservercore --build-arg BASE_URL=<jenkins_url>


# How to Run

docker run --restart=always jenkins-jnlp-slave-windowsservercore -jnlpUrl <jenkins_url>/computer/windows-docker-slave/slave-agent.jnlp -secret <slave_secret>
