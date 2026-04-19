<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns="http://www.w3.org/2000/svg"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" 
    exclude-result-prefixes="#all"
    version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <svg width="100%" height="300">
            <xsl:for-each select="//chapter">
                <xsl:variable name="position" select="position()"/>
                <xsl:variable name="count" select="count(.//rhetoric)"/>
                <xsl:variable name="barWidth" select="10"/>
                
                <rect 
                    x="{($position - 1) * $barWidth}" 
                    y="{200 - ($count * 20)}"
                    width="{$barWidth}" 
                    height="{$count * 20}"
                    fill="#e8922d"/>
                <!--will add in labels for chapter numbers and counts later-->

            </xsl:for-each>    
        </svg>
    </xsl:template>
    
</xsl:stylesheet>