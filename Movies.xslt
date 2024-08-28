<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Root template to match the Collection element -->
    <xsl:template match="/Collection">
        <html>
            <head>
                <title>Movie Collection</title>
                <style>
                    table {
                        width: 50%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h2>Movie Collection</h2>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Director</th>
                        <th>Year</th>
                        <th>Rating</th>
                    </tr>
                    <!-- Loop through each Movie element -->
                    <xsl:for-each select="Movie">
                        <tr>
                            <td><xsl:value-of select="Title"/></td>
                            <td><xsl:value-of select="Director"/></td>
                            <td><xsl:value-of select="Year"/></td>
                            <td><xsl:value-of select="Rating"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
