<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    
    <xsl:output method="xhtml" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <xsl:result-document href="website/index.html">
            <html>
                <head>
                    <title>Arqueositios</title>
                    <meta charset="UTF-8"></meta>
                    
                </head>
                <body>
                    <h1>Arqueositios</h1>
                    <ol>
                        <xsl:apply-templates/>
                    </ol>
                </body>
            </html> 
        </xsl:result-document>
        
        <xsl:apply-templates mode="individual"/>
    </xsl:template>
    
    
    <xsl:template match="ARQELEM" mode="individual">
        <xsl:result-document href="website/{generate-id()}.html">
            <html>
                <head>
                    <title>Arqueostio : Página Individual</title>
                    <meta charset="UTF-8"></meta>
                    
                </head>
                <body>
                    <h1>
                        <xsl:value-of select="IDENTI"/>
                    </h1>
                    
                    <hr/>
                    
                    <table>
                        <xsl:apply-templates/>                               
                    </table>
                     
                    
                    <hr/>
                    <address>
                        <a href="index.html#{generate-id()}">Voltar ao indice</a>
                    </address>
                </body>
            </html> 
        </xsl:result-document>
    </xsl:template>
    
    
    <xsl:template match="ARQELEM">
        <li id="{generate-id()}">
            <a href="{generate-id()}.html">
                <xsl:value-of select="IDENTI"/>
            </a>         
        </li>
    </xsl:template>
    
    
    <xsl:template match="LUGAR">
        <tr><th align="left">Lugar:</th><td><xsl:value-of select="."/></td></tr>
    </xsl:template>
    
    <xsl:template match="FREGUE">
        <tr><th align="left">Freguesia:</th><td><xsl:value-of select="."/></td></tr>
    </xsl:template>
    
    <xsl:template match="CONCEL">
        <tr><th align="left">Concelho:</th><td><xsl:value-of select="."/></td></tr>
    </xsl:template>
    
    <xsl:template match="CODADM">
        <tr><th align="left">Codadm:</th><td><xsl:value-of select="."/></td></tr>
    </xsl:template>
    
    <xsl:template match="LATITU">
        <tr><th align="left">Latitude:</th><td><xsl:value-of select="."/></td></tr>
    </xsl:template>
    
    <xsl:template match="LONGIT">
        <tr><th align="left">Longitude:</th><td><xsl:value-of select="."/></td></tr>
    </xsl:template>
    
    <xsl:template match="ALTITU">
        <tr><th align="left">Altitude:</th><td><xsl:value-of select="."/></td></tr>
    </xsl:template>
    
    <xsl:template match="LIGA">
        <a href="{@TERMO}"><xsl:value-of select="."/></a>
    </xsl:template>
    
    <xsl:template match="QUADRO">
        <tr><th align="left">Quadro:</th><td><xsl:apply-templates/></td></tr>
    </xsl:template>
    
    <xsl:template match="DESARQ">
        <tr><th align="left">Descrição Arqueológica:</th><td><xsl:apply-templates/></td></tr>
    </xsl:template>
    
    <xsl:template match="INTERP">
        <tr><th align="left">Interpretação:</th><td><xsl:apply-templates/></td></tr>
    </xsl:template>
    
    <xsl:template match="DEPOSI">
        <tr><th align="left">Depósito:</th><td><xsl:apply-templates/></td></tr>
    </xsl:template>
    
    <xsl:template match="BIBLIO">
        <tr><th align="left">Bibliografia:</th><td><xsl:apply-templates/></td></tr>
    </xsl:template>
    
    <xsl:template match="TRAARQ">
        <tr><th align="left">Trabalho Arqueológico:</th><td><xsl:apply-templates/></td></tr>
    </xsl:template>
    
    <xsl:template match="DATA">
        <tr><th align="left">Data:</th><td><xsl:apply-templates/></td></tr>
    </xsl:template>
    
    <xsl:template match="ACESSO">
        <tr><th align="left">Acesso:</th><td><xsl:apply-templates/></td></tr>
    </xsl:template>
    
    <xsl:template match="AUTOR">
        <tr><th align="left">Autor:</th><td><xsl:apply-templates/></td></tr>
    </xsl:template>
    
    <xsl:template match="CRONO">
        <tr><th align="left">Cronologia:</th><td><xsl:apply-templates/></td></tr>
    </xsl:template>
    
    <xsl:template match="INTERE">
        <tr><th align="left">Interesse:</th><td><xsl:apply-templates/></td></tr>
    </xsl:template>
    
    <xsl:template match="DESCRI">
        <tr><th align="left">Descrição:</th><td><xsl:apply-templates/></td></tr>
    </xsl:template>
    
    <xsl:template match="IMAGEM">
        <tr><th align="left">Imagem:</th><td><xsl:value-of select="@NOME"/></td></tr>
    </xsl:template>
    
    <xsl:template match="TIPO">
        <tr><th align="left">Tipo:</th><td><xsl:value-of select="@ASSUNTO"/></td></tr>
    </xsl:template>
    
    <xsl:template match="IDENTI">
        
    </xsl:template>
    
</xsl:stylesheet>