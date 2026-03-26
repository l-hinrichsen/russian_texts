<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" 
        include-content-type="no" indent="yes"/>
        <!-- Start of XSLT -->
    <xsl:template match ="/">
        <html>
            <head>
                <title>Project XSLT</title>
                <link rel="stylesheet" type="text/css" href="style.css" />
            </head>
            <body>
                <header>
                    <nav>
                        <a href="index.html">Home</a>
                        <a href="Proj_XSLT.html">Corpus</a>
                        <a href="methodology.html">Methodology</a> <!--so far this is the only link that works-->
                        <a href="analysis.html">Analysis</a>
                    </nav>
                </header>
                    <xsl:apply-templates select = "//chapter"/>               
            </body>
        </html>
    </xsl:template>
    <xsl:template match ="event">
        <strong><xsl:apply-templates/></strong>
    </xsl:template>
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>      
    </xsl:template>
</xsl:stylesheet>