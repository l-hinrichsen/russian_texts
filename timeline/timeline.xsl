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
                
                <rect 
                    x="{($position - 1) * 30}" 
                    y="{200 - ($count * 20)}"
                    width="10" 
                    height="{$count * 20}"
                    fill="blue"/>

            </xsl:for-each>    
        </svg>
    </xsl:template>
    
</xsl:stylesheet>