<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>History of the USSR</title>
                <link rel="stylesheet" href="../style.css"/>
            </head>
            <body>
                
                <header>
                    <nav>
                        <a href="../index.html">Home</a>
                        <a href="../corpus.html">Corpus</a>
                        <a href="../methodology.html">Methodology</a>
                        <a href="../analysis.html">Analysis</a>
                    </nav>
                </header>
                
                <h1>Table of Contents</h1>
                
                <div class="main_TOC">
                    <ul>
                        <xsl:apply-templates select="//chapter"/>
                    </ul>
                </div>
                
                <div class="buttons">
                    <div class="back">
                        <a href = "../corpus.html">Back</a>
                    </div>
                    <div class="forward">
                        <a href="chapter1.html">Start</a>
                    </div>
                </div>
                
            </body>
        </html>
    </xsl:template>
    
    <!--template for table of contents-->
    <xsl:template match="chapter">
        <xsl:variable name="n" as="xs:int" select="title/@n"/>
        <li>
            <a href="chapter{title/@n}.html#chapter{title/@n}">
                Chapter
                <xsl:value-of select="title"/>
            </a>
        </li>
    </xsl:template>  
</xsl:stylesheet>