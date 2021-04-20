FROM ohif/viewer:v4.9.8.14493

COPY entrypoint-wrapper.sh /usr/src/
RUN chmod 755 /usr/src/entrypoint-wrapper.sh

ENTRYPOINT [ "/usr/src/entrypoint-wrapper.sh" ]
CMD ["nginx", "-g", "daemon off;"]
