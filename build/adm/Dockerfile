FROM ubuntu:20.04


RUN apt-get update
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg

RUN mkdir -p /etc/apt/keyrings

RUN curl -fsSL "https://pkgs.k8s.io/core:/stable:/v1.27/deb/Release.key" | gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

RUN echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.27/deb/ /" | tee /etc/apt/sources.list.d/kubernetes.list

RUN apt-get update -y
RUN apt-get install -y kubectl


COPY --from=golang:1.21 /usr/local/go/ /usr/local/go/
 
ENV PATH="/usr/local/go/bin:${PATH}"

RUN mkdir /workspace


WORKDIR /workspace

COPY . .

WORKDIR /workspace/adm


RUN mkdir -p /root/.kube

RUN mv config /root/.kube/config


RUN go build -o runo .


CMD ["/workspace/adm/runo"]