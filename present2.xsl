<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <html>
        <body>
            <h1>Sorted Books</h1>
            <xsl:apply-templates select="//book_titles_info">
                <xsl:sort order="ascending" select="@title" data-type="text"></xsl:sort>
            </xsl:apply-templates>

        </body>
    </html>

    
</xsl:template>

<xsl:template match="book_titles_info">
    <xsl:value-of select="@title"/>
    <br/>
</xsl:template>

</xsl:stylesheet>