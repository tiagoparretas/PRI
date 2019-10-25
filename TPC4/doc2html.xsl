<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    
    <xsl:template match="doc">
        <html>
            <head>
                <title>
                    <xsl:value-of select="./tit"/>
                </title>
                <meta charset="UTF-8"/>
                <link rel="stylesheet" href="/w3.css"/>
            </head>
            <body>
                <header>
                    <h1 ><xsl:value-of select="./tit"/></h1>
                </header>
                <div>
                    <div>
                        <h6>
                            <b>Província: </b>
                            <xsl:value-of select="./prov"/>
                        </h6>
                        <h6>
                            <b>Local: </b>
                            <xsl:value-of select="./local"/>
                        </h6>
                        <h6>
                            <b>Musico: </b>
                            <xsl:value-of select="./musico"/>
                        </h6>
                        <h6>
                            <b>Ficheiro: </b>
                            <xsl:value-of select="./file"/>
                        </h6>
                        <h6>
                            <b>Duração: </b>
                            <xsl:value-of select="./duracao"/>
                        </h6>
                    </div>
                    <xsl:apply-templates/>    
                </div>
                <footer class="w3-container w3-padding-64 w3-white w3-center w3-large">
                    <h6>Powered by: <a href="https://www.w3schools.com/w3css/default.asp">w3.css</a></h6>
                </footer>
                
            </body>
        </html>     
    </xsl:template>
    
    
    <xsl:template match="obs">
        <div>
            <h5><b>Observações:</b></h5>
            <ul>
                <xsl:for-each select="./file">
                    <li><xsl:value-of select="."/></li>
                </xsl:for-each>
            </ul>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="obs/file"/>
    
    <xsl:template match="intxt">
        <b>Instrumento Extra - </b> <i><xsl:apply-templates/></i>
    </xsl:template>
    
    <xsl:template match="inst">
        <b>Instrumento - </b> <i><xsl:apply-templates/></i>
    </xsl:template>
    
    <xsl:template match="prov"/>
    <xsl:template match="local"/>
    <xsl:template match="musico"/>
    <xsl:template match="file"/>
    <xsl:template match="duracao"/>
    <xsl:template match="tit"/>
    

    
</xsl:stylesheet>