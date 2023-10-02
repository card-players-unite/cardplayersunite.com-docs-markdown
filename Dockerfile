FROM titom73/mkdocs AS MKDOCS_BUILD

MAINTAINER Software Shinobi "troy@softwareshinobi.online"

##########################################
##
## Set build directory
##



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

##COPY mkdocs.yml             mkdocs.yml

##COPY .custom-styling.css    custom-styling.css

##COPY docs-content           docs-content

##########################################

RUN mkdocs build

RUN ls -lha

##########################################

FROM mengzyou/bbhttpd:1.35

COPY --from=MKDOCS_BUILD --chown=www:www /docs/site /home/www/html
