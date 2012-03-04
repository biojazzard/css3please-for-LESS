#
# css3please-for-LESS
# by Alfredo Llanos 2012 @biojazzard
#

STYLE_LESS = ./less/style.less
STYLE_CSS = ./css/style.css
STYLE_CSS_MIN = ./css/style.min.css

LESS_COMPRESSOR ?= `which lessc`
WATCHR ?= `which watchr`

#
# LESSC REQUIRED
#

build:
	lessc ${STYLE_LESS} > ${STYLE_CSS}
	lessc --compress ${STYLE_LESS} > ${STYLE_CSS_MIN}

#
# WATCH LESS FILES
#

watch:
	echo "Watching less files..."; \
	watchr -e "watch('less/.*\.less') { system 'make css3please' }"
