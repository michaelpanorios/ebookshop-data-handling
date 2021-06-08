<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
    <body>
        <h1>Books</h1>
        <xsl:apply-templates select="//book"/>
    </body>
</html>
</xsl:template>


<xsl:template match="//book">
    <p>
        <xsl:apply-templates select="book_titles_info"/>
        <xsl:apply-templates select="cost_information/start_value"/>
        <xsl:apply-templates select="cost_information/end_value"/>
        <xsl:apply-templates select="other_information/availability"/>
    </p>
</xsl:template>


<xsl:template match="book_titles_info">
     Title: <span style="color:#ff0000">
    <xsl:value-of select="@title"/></span>
    <br/>
     Subtitle: <span style="color:#ff0000">
     <xsl:value-of select="@subtitle"/></span>
     <br/>
</xsl:template>

<xsl:template match="cost_information/start_value">
     Start value: <span style="color:#ff0000">
     <xsl:value-of select="."/></span>
     <br/>
</xsl:template>

<xsl:template match="cost_information/end_value">
     End value: <span style="color:#ff0000">
     <xsl:value-of select="."/></span>
     <br/>
</xsl:template>

<xsl:template match="other_information/availability">
     Availability: <span style="color:#ff0000">
     <xsl:value-of select="."/></span>
     <br/>
</xsl:template>
</xsl:stylesheet>
