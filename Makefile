# $FreeBSD$

PORTNAME=	memcache
PORTVERSION=	3.0.9
CATEGORIES=	databases
PKGNAMEPREFIX=	php70-pecl-
DIST_SUBDIR=	PECL

USE_GITHUB=	yes
GH_ACCOUNT=	websupport-sk
GH_PROJECT=	pecl-memcache
GH_TAGNAME=	4991c2f

COMMENT=	Memcached extension

LICENSE=	PHP30
LICENSE_FILE=	${WRKSRC}/LICENSE

OPTIONS_DEFINE=	EXAMPLES

CONFIGURE_ARGS=	--with-zlib-dir=/usr
USE_CSTD=	gnu89
USE_PHP=	zlib session
USE_PHP_BUILD=	yes
USE_PHPEXT=	yes
USE_PHPIZE=	yes
USES=		dos2unix tar:tgz

post-install-EXAMPLES-on:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}/
	${INSTALL_DATA} ${WRKSRC}/example.php ${STAGEDIR}${EXAMPLESDIR}/

.include <bsd.port.mk>
