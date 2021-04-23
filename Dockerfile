FROM ohif/viewer:v2.9.0.7055

COPY entrypoint-wrapper.sh /usr/src/
RUN chmod 755 /usr/src/entrypoint-wrapper.sh

ENTRYPOINT [ "/usr/src/entrypoint-wrapper.sh" ]
CMD ["nginx", "-g", "daemon off;"]
