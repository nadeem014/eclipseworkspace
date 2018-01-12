<xsl:stylesheet version="1.0" extension-element-prefixes="dp dyn" exclude-result-prefixes="dp dyn" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dp="http://www.datapower.com/extensions" xmlns:dyn="http://exslt.org/dynamic">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<xsl:variable name="CustomHeader" select="dp:http-request-header('CustomHeader')"/>
		<xsl:variable name="Host" select="dp:http-request-header('Host')"/>
		<xsl:variable name="User-Agent" select="dp:http-request-header('User-Agent')"/>
		<html>
		    <body>
		        <h1>Heading 1</h1>
		        <p>
		        Custom Header Value is :
		        <xsl:value-of select="dp:sub-string('$CustomHeader')"/>
		        </p>
		        <p>
		        Host is:
		        <xsl:value-of select="$Host"/>
		        </p>
		        <p>
		        User-Agent is:
		        <xsl:value-of select="$User-Agent"/>		        
		        </p>
		    </body>
		</html>
	</xsl:template>
</xsl:stylesheet>