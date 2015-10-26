<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head><link rel="stylesheet" type="text/css" href="yarn.css" />
</head>
<body>
<h1>My Yarn Stash</h1>
<table border="1">
	<tr>
		<th>Yarn Brand</th>
		<th>Yarn Name</th>
		<th>Colors</th>
		<th>Length</th>
		<th>Thickness</th>
		<th>Projects</th>
		<th>Fiber</th>
		<th>Washing Instructions</th>
	</tr>
	<xsl:for-each select="yarn_stash/yarn">
<tr>	
	<td><xsl:value-of select="yarn_brand"/></td>
	<td><xsl:value-of select="yarn_name"/></td>
	<td><ul>
		<xsl:for-each select="colors/color">
		<li><xsl:value-of select="." /></li>
		</xsl:for-each>
		</ul></td>
	<td><xsl:value-of select="length"/></td>
	<td><xsl:value-of select="thickness"/></td>
	<td><ul>
		<xsl:for-each select="projects/project_type">
		<li><xsl:value-of select="." /></li>
		</xsl:for-each>
		</ul></td>
	<td><xsl:value-of select="fiber"/></td>
	<td><xsl:value-of select="washing_instructions"/></td>
	</tr>
	</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
	