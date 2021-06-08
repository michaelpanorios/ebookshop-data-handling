<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

<html>
    <body>
        <h1>Table of filtered</h1>
        <table border="5" cellpadding="5">
            <tr>
                <th>Title</th>
                <th>Subtitle</th>
                <th>End value</th>
            </tr>
            <xsl:for-each select="online_bookshop/book_list/book">
                <xsl:sort  select="number(cost_information/end_value)" order="descending" data-type="number"></xsl:sort>
                <tr>
                    <td>
                        <xsl:value-of select="book_titles_info/@title"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:choose>
                                <xsl:when test="((book_titles_info/@subtitle='') or (not(book_titles_info/@subtitle)))">-</xsl:when>
                                <xsl:otherwise><xsl:value-of select="book_titles_info/@subtitle"></xsl:value-of></xsl:otherwise>
                        </xsl:choose>
                    </td>
                    <td>
                        <xsl:value-of select="cost_information/end_value"></xsl:value-of>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>