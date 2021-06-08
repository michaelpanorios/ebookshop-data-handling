<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
    <body>
        <h1>Books to buy</h1>
        <xsl:apply-templates select="//book"/>
    </body>
</html>
</xsl:template>

<xsl:template match="//book">
    <p>
        <xsl:apply-templates select="book_titles_info"/>
        <xsl:apply-templates select="book_characteristics"/>
    </p>
</xsl:template>

<xsl:template match="book_titles_info">
     Title: <span style="color:#ff0000">
    <xsl:value-of select="@title"/></span>
    <br/>
</xsl:template>

<xsl:template match="book_characteristics">
     Publisher: <span style="color:#ff0000">
    <xsl:value-of select="publisher"/></span>
    <br/>
     Year: <span style="color:#ff0000">
     <xsl:value-of select="publisher/@publisher_year"/></span>
     <br/>
</xsl:template>




</xsl:stylesheet>