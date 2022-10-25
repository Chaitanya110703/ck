# Modular container with the MLCommons CM automation meta-framework

# OS version
ARG cm_os_name="rhel"
ARG cm_os_version="9"

FROM registry.access.redhat.com/ubi${cm_os_version}

ENV CM_OS_VERSION="${cm_os_version}"

# Maintained by the MLCommons taskforce on education and reproducibility
LABEL github="https://github.com/mlcommons/ck"
LABEL maintainer="https://bit.ly/mlperf-edu-wg"

# Prepare shell and entry point
SHELL ["/bin/bash", "-c"]
ENTRYPOINT ["/bin/bash", "-c"]

# Security for Git
ARG CM_GH_TOKEN

# Install system dependencies
# Notes: https://runnable.com/blog/9-common-dockerfile-mistakes
RUN dnf update -y
RUN dnf install -y python3 python-pip git wget sudo binutils

# Extra python deps
RUN python3 -m pip install requests

# CM version
ARG cm_version
ENV CM_VERSION=${cm_version}
RUN if [ "${CM_VERSION}" != "" ] ; then \
      python3 -m pip install cmind==${CM_VERSION} ; \
    else \
      python3 -m pip install cmind ; \
    fi

# Setup docker environment
ENTRYPOINT ["/bin/bash", "-c"]
ENV TZ=US/Pacific
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ >/etc/timezone

# Setup docker user
# See example in https://github.com/mlcommons/GaNDLF/blob/master/Dockerfile-CPU
RUN groupadd --gid 10001 cm
RUN useradd  --uid 10000 -g cm --create-home --shell /bin/bash cmuser
RUN echo "cmuser ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER cmuser:cm
WORKDIR /home/cmuser

# Check CM installation
#RUN hostnamectl > sys-version-os.log
RUN uname -a > sys-version-kernel.log
RUN python3 --version > sys-version-python3.log
RUN cm version > sys-version-cm.log

# CMD entry point
CMD /bin/bash
