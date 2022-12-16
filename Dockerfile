FROM debian:11.5-slim
COPY expect.exp /root/
RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y libfreetype6 expect curl
RUN ln -sf /lib64/ld-linux-x86-64.so.2 /lib64/ld-lsb-x86-64.so.2 && \
    ln -sf /lib64/ld-linux-x86-64.so.2 /lib64/ld-lsb-x86-64.so.3
RUN curl -o /root/GeneiousFloatingLicenseManager_linux64_2_1_4_with_jre.sh https://assets.geneious.com/installers/licensingUtility/2_1_4/GeneiousFloatingLicenseManager_linux64_2_1_4_with_jre.sh && \
    chmod +x /root/GeneiousFloatingLicenseManager_linux64_2_1_4_with_jre.sh
RUN /root/expect.exp
