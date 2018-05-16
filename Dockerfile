FROM hashicorp/terraform:0.11.5

RUN apk add --no-cache \
        bash \
        py-pip \
	jq \
 && pip install --upgrade \
        pip \
        awscli


ENTRYPOINT ["/bin/bash"]
