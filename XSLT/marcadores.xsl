<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/marcadores">
        <html>
            <head>
                <!-- CSS only -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
            </head>
            <body>
                <div class="container-fluid">
                <ul>
                <xsl:for-each select="pagina">
                    <xsl:sort select="nombre" order="descending"/>
                    <xsl:if test="nombre = 'Abrirllave'">
                        <li style="color:red"><xsl:value-of select="nombre"/></li>
                    </xsl:if>

                    <xsl:choose>
                        <xsl:when test="nombre = 'Abrirllave'">
                            <li style="color:blue"><xsl:value-of select="nombre"/></li>
                        </xsl:when>
                        <xsl:when test="nombre = 'Wikipedia'">
                            <li style="color:green"><xsl:value-of select="nombre"/></li>
                        </xsl:when>
                        <xsl:otherwise>
                            <li>No encotrado</li>
                        </xsl:otherwise>
                    </xsl:choose>


                </xsl:for-each>
                </ul>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">First</th>
                                <th scope="col">Last</th>
                                <th scope="col">Handle</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Jacob</td>
                                <td>Thornton</td>
                                <td>@fat</td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td colspan="2">Larry the Bird</td>
                                <td>@twitter</td>
                            </tr>
                        </tbody>
                    </table>

                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>