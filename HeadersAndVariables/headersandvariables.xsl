<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" extension-element-prefixes="dp dyn" exclude-result-prefixes="dp dyn" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dp="http://www.datapower.com/extensions" xmlns:dyn="http://exslt.org/dynamic">
	<xsl:output method="html"/>
		<xsl:template match="/">
		<xsl:variable name="customheader" select="dp:http-request-header('CustomHeader')"/>
		<html>
			<body>
				<h2> Data from header </h2>
				<p> Customer header value: <xsl:value-of select="$customheader"/> </p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>