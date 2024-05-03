<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : newstylesheet.xsl
    Created on : May 3, 2024, 2:55 PM
    Author     : admin
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Stylsheet</title>
            </head>
            <body>
                <h2>Books</h2>
                <table border = "1">
                    <tr bgcolor="lightblue">
                        <th>title</th>
                        <th>author</th>
                        <th>price</th>
                        <th>genre</th>
                    </tr>
                    
                   <xsl:for-each select="books/book">
                       <tr>
                       <td><xsl:value-of select="title"/></td>
                       <td><xsl:value-of select="author"/></td>
<xsl:choose>
<xsl:when test="price >25">
<td bgcolor="#ff0000"><xsl:value-of select="price"/></td>
</xsl:when>
<xsl:otherwise>
<td><xsl:value-of select="price"/></td>
</xsl:otherwise>
</xsl:choose>

                             <xsl:choose>
                                <xsl:when test="genre='Mystery'">
                                    <td bgcolor="#ff0000"><xsl:value-of select="genre"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td><xsl:value-of select="genre"/></td>
                                </xsl:otherwise>
                            </xsl:choose>

    
</tr>

                   </xsl:for-each>                 
                
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
