# Use the official AdGuardHome image as the base
FROM adguard/adguardhome:latest

# Set the working directory
WORKDIR /opt/adguardhome

# Copy the AdGuardHome configuration file
COPY ./AdGuardHome.yaml /opt/adguardhome/AdGuardHome.yaml

# Expose the necessary ports
EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 67/udp
EXPOSE 68/tcp
EXPOSE 68/udp
EXPOSE 80
EXPOSE 443
EXPOSE 853
EXPOSE 3000

# Start AdGuardHome
CMD ["/opt/adguardhome/AdGuardHome", "-c", "/opt/adguardhome/AdGuardHome.yaml"]
