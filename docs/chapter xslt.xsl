<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:template match="/">
        <xsl:for-each select="chapter">
            <xsl:variable name="n" as="xs:int" select="title/@n"/>
            <xsl:result-document href="chapters/chapter{$n}.html"></xsl:result-document>
            
            <html>
                <head>
                    <title>History of the USSR</title>
                    <link rel="stylesheet" type="text/css" href="style.css" />
                </head>
                <!-- start of document-->
                <body>
                    <!-- navigation bar here-->
                    <header>
                        <nav>
                            <a href="index.html">Home</a>
                            <a href="corpus.html">Corpus</a>
                            <a href="methodology.html">Methodology</a> <!--so far this is the only link that works-->
                            <a href="analysis.html">Analysis</a>
                        </nav>
                    </header>
                   <div class="toc">
                       <ul><xsl:apply-templates/></ul>
                   </div>
                
                </body>
            </html>
         
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="chapter">
        <li><a><xsl-value-of select = "{title}"/></a></li>
    </xsl:template>
</xsl:stylesheet>