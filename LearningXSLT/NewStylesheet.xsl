<xsl:stylesheet version="1.0" extension-element-prefixes="dp dyn" exclude-result-prefixes="dp dyn" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dp="http://www.datapower.com/extensions" xmlns:dyn="http://exslt.org/dynamic">
<xsl:output method="html"/>
<xsl:template match="/">
		<html>
			<body>
			<h2> Test Heading</h2>
				<table border="1">
					<tr>
						<td> Title</td>
						<td> Artist </td>
					</tr>
					<xsl:for-each select="catalog/cd">
					<tr>
						<td><xsl:value-of select="title"/></td>
						<td><xsl:value-of select="artist"/></td>
					</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>


