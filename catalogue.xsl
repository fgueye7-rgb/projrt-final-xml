<?xml version="1.0" encoding="UTF-8"?>
<!-- Projet final - Faty GUEYE, née le 07/01/2002 -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
<html>
<head>
<title>Catalogue de livres</title>
</head>
<body>
<h1>Catalogue de livres</h1>
<table border="1">
<tr>
<th>Cote</th>
<th>Titre</th>
<th>Auteur(s)</th>
<th>Annee</th>
<th>Prix</th>
<th>Type</th>
<th>Disponible</th>
</tr>
<xsl:for-each select="//document">
<tr>
<td><xsl:value-of select="@cote"/></td>
<td><xsl:value-of select="titre"/></td>
<td>
<xsl:for-each select="auteur">
<xsl:value-of select="."/>
<xsl:if test="position() != last()">, </xsl:if>
</xsl:for-each>
</td>
<td><xsl:value-of select="annee"/></td>
<td><xsl:value-of select="prix"/></td>
<td><xsl:value-of select="@type"/></td>
<td><xsl:value-of select="@disponible"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>

</xsl:stylesheet>