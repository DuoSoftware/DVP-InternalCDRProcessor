#FROM ubuntu
#RUN apt-get update
##RUN apt-get install -y git nodejs npm
#RUN git clone git://github.com/DuoSoftware/DVP-InternalCDRProcessor.git /usr/local/src/cdrprocessor_internal
#RUN cd /usr/local/src/cdrprocessor_internal; npm install
#CMD ["nodejs", "/usr/local/src/cdrprocessor_internal/app.js"]

#EXPOSE 8809

FROM node:argon
RUN git clone git://github.com/DuoSoftware/DVP-InternalCDRProcessor.git /usr/local/src/cdrprocessor_internal
RUN cd /usr/local/src/cdrprocessor_internal;
WORKDIR /usr/local/src/cdrprocessor_internal
RUN npm install
EXPOSE 8809
CMD [ "node", "/usr/local/src/cdrprocessor_internal/app.js" ]
