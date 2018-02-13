FROM hashicorp/terraform:0.11.3

RUN apk add --no-cache \
        bash \
        py-pip \
	jq \
 && pip install --upgrade \
        pip \
        awscli