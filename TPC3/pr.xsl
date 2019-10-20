<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    
    <xsl:output method="xhtml" indent="yes" encoding="UTF-8" />
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Project Record</title>
                <meta charset="UTF-8"></meta>
            </head>
            <body>
                <xsl:apply-templates/>
                <hr/>
                <p align="center">
                    <xsl:value-of select="format-date(current-date(), '[D01]/[M01]/[Y0001]')"/>
                </p>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="pr">
        <div >
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="b">
        <b>
            <xsl:apply-templates/>
        </b>
    </xsl:template>
    
    <xsl:template match="i">
        <i>
            <xsl:apply-templates/>
        </i>
    </xsl:template>
    
    <xsl:template match="u">
        <u>
            <xsl:apply-templates/>
        </u>
    </xsl:template>
    
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>        
    </xsl:template>
    
    
    <xsl:template match="deliverables">
        <hr/>
        <h3>Deliverables</h3>
        <ul>
            <xsl:apply-templates/>
        </ul>  
    </xsl:template>
    
    <xsl:template match="deliverable">
        <li>
            <a href="{@path}"><xsl:value-of select="."/></a>
        </li>
    </xsl:template>
    
    <xsl:template match="workteam">
        <hr/>
        <h3>Workteam</h3>
        <ol>
            <xsl:apply-templates/>
        </ol>
        <hr/>
    </xsl:template>
    
    <xsl:template match="member">
        <li>
            <xsl:apply-templates/>
        </li>
    </xsl:template>
    
    <xsl:template match="abstract">
        <hr/>
        <h3>ABSTRACT</h3>
        <div>
            <xsl:apply-templates/>
        </div>
        <hr/>
    </xsl:template>
    
    
    
    <xsl:template match="meta">
        <h1 align="center">Project Record</h1>
        <hr/>
        <table style="width:100%">
            <tr align="left">
                <th>KEY NAME:</th><td><xsl:value-of select="keyname"/></td>
                <th>BEGIN DATE:</th><td><xsl:value-of select="bdate"/></td>
            </tr>
            <tr align="left">
                <th>TITLE:</th><td><xsl:value-of select="title"/></td>
                <th>END DATE:</th><td><xsl:value-of select="edate"/></td>
            </tr>
            <tr align="left">
                <th>SUBTITLE:</th><td><xsl:value-of select="subtitle"/></td>
                <th>SUPERVISOR</th><td><xsl:value-of select="supervisor"/></td>
            </tr>
        </table>
        <hr/>
    </xsl:template>
    
    
    <xsl:template match="name">
        <p><b>Name: </b> <xsl:value-of select="."/></p>
    </xsl:template>
    
    <xsl:template match="identifier">
        <p><b>ID: </b> <xsl:value-of select="."/></p>
    </xsl:template>
    
    <xsl:template match="email"> 
        <p><b>Email: </b><a href="mailto:{.}"><xsl:value-of select="."/></a></p>
    </xsl:template> 

    
</xsl:stylesheet>