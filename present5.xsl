<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
    <body>
        <h1>Books publisher after 2014</h1>
        <table border="5" cellpadding="5">
            <tr>
                <th>Title</th>
            </tr>
            <xsl:for-each select="online_bookshop/book_list/book[book_characteristics/publisher[@publisher_year >= 2014]]">
                <tr>
                    <td>
                        <xsl:value-of select="book_titles_info/@title"></xsl:value-of>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>