FROM titom73/mkdocs AS MKDOCS_BUILD

MAINTAINER Software Shinobi "troy@softwareshinobi.online"

##########################################
##
## install pip deps
##

RUN pip install markupsafe==2.0.1

##########################################
##
## Copy mkdocs content
##

WORKDIR /docs

COPY . . 

##########################################

RUN mkdocs build

##########################################

FROM mengzyou/bbhttpd:1.35

COPY --from=MKDOCS_BUILD --chown=www:www /docs/site /home/www/html
