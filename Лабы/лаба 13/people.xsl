<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/cd">
<html>
<head>
<title>Величайшие</title>
</head>
<body>
    <table border="1">
        <tr bgcolor="blue">
            <th>Name</th>
            <th>Surname</th>
            <th>Type</th>
        </tr>
        <xsl:for-each select="people">
        <xsl:sort select="name"/>
            <tr>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="surname"/></td>
                <td><xsl:value-of select="type"/></td>
            </tr>
        </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>