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
        <svg width="1500" height="500">
            <xsl:for-each select="//chapter">
                <xsl:variable name="position" select="position()"/>
                <xsl:variable name="count" select="count(.//rhetoric)"/>
                
                <!--spacing variables-->
                <xsl:variable name="step" select="15"/>
                <xsl:variable name="barWidth" select="15"/>
                <xsl:variable name="x" select="($position - 1) * $step"/>
                
                <!--bars-->
                <rect 
                    x="{$x}" 
                    y="{200 - ($count * 10)}"
                    width="{$barWidth}" 
                    height="{($count * 10)}"
                    fill="#e8922d"/>
                
                <!--chapter labels-->
                <text 
                    x="{$x + ($barWidth div 2)}"
                    y="210"
                    font-size="12"
                    text-anchor="middle"
                    fill="black">
                    <xsl:value-of select="position()"/>
                </text>
                
            </xsl:for-each>   
        </svg>
    </xsl:template>
    
</xsl:stylesheet>