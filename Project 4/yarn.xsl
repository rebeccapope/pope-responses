<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head><link rel="stylesheet" type="text/css" href="yarn.css" />
</head>
<body>
<script src="sorttable.js">
</script>
<h1>My Yarn Stash</h1>
<p><a href="https://github.com/rebeccapope/pope-responses/tree/master/Project%202/Project2.xml">Project 2</a></p>
<table class="sortable" border="1">
	<tr>
		<th>Picture</th>
		<th>Yarn Brand</th>
		<th>Yarn Name</th>
		<th>Length</th>
		<th>Thickness</th>
		<th>Patterns</th>
		<th>Fiber</th>
		<th>Washing Instructions</th>
	</tr>
	
	<xsl:for-each select="yarn_stash/yarn">
<tr>	
	<td><img src="{picture}"/></td>
	<td><xsl:value-of select="yarn_brand"/></td>
	<td><xsl:value-of select="yarn_name"/></td>
	<td><xsl:value-of select="length"/></td>
	<td><xsl:value-of select="thickness"/></td>
	<td><xsl:for-each select="pattern">
	<xsl:for-each select="pattern_url">
							<a class="reading_link"><xsl:attribute name="href"><xsl:value-of select="url" /></xsl:attribute>
							<xsl:value-of select="description" /></a>
						</xsl:for-each>
						</xsl:for-each></td>
	<td><xsl:value-of select="fiber"/></td>
	<td><xsl:value-of select="washing_instructions"/></td>
	</tr>
	</xsl:for-each>
</table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
	