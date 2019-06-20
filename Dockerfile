FROM centos:7
LABEL maintainer="Strongbrent"

# Install Dependencies
RUN yum -y update && yum clean all

RUN yum makecache \
  && yum -y install \
    sudo \
    curl \
    wget \
    which \
  && yum clean all

# Create test user and add to sudoers
RUN useradd -m -s /bin/bash testuser
RUN usermod -aG wheel testuser
RUN echo "testuser   ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers

# Switch to testuser
USER testuser
ENV HOME /home/testuser

# Change working directory
WORKDIR /home/testuser

CMD ["/bin/bash"]
