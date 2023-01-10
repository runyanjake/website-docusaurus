FROM node:latest

WORKDIR /etc/

RUN npx @docusaurus/init@latest init jake-site classic

# Overwrite the Docusaurus sturcture with the modified files.
# TODO

EXPOSE 2345
EXPOSE 3000

# Move into the docusaurus folder structure.
WORKDIR /etc/jake-site

CMD [ "npx", "docusaurus", "start", "-h0.0.0.0" ]


