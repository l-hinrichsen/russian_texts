<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns="http://www.w3.org/2000/svg"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" 
    exclude-result-prefixes="#all"
    version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    <!--constants-->
    <xsl:variable name="pi" select="math:pi()"/>
    <xsl:variable name="cx" select="100"/>
    <xsl:variable name="cy" select="100"/>
    <xsl:variable name="cr" select="100"/>
    <xsl:variable name="start-angle" select="0"/>
    
    <!--the first one-->
    <xsl:template match="/">
        
        <!--counts-->
        <xsl:variable name="generality" as="xs:integer" select="count(//rhetoric[@type='generality'])"/>
        <xsl:variable name="total" select="count(//rhetoric)"/>
        
        <!--angle in radians-->
        <xsl:variable name="angle" select="($generality div $total) * 2 * $pi"/>
        
        <!--start point-->
        <xsl:variable name="x1" select="$cx + $cr * math:cos($start-angle)"/>
        <xsl:variable name="y1" select="$cy - $cr * math:sin($start-angle)"/>
        
        <!--end point-->
        <xsl:variable name="x2" select="$cx + $cr * math:cos($angle)"/>
        <xsl:variable name="y2" select="$cy - $cr * math:sin($angle)"/>
        
        <!--large arc thing; the "if" is to account for some calculus principle that deals with angles >180 degrees-->
        <xsl:variable name="large-arc" select="if ($angle > $pi) then 1 else 0"/>
        
        <svg width="200" height="200" viewBox="0 0 400 400">     
            <!--slice for generality-->
            <path fill="orange" stroke="black">
                <xsl:attribute name="d">
                    M <xsl:value-of select="$cx"/>,<xsl:value-of select="$cy"/>
                    L <xsl:value-of select="$cx + $cr"/>,<xsl:value-of select="$cy"/>
                    A <xsl:value-of select="$cr"/>,<xsl:value-of select="$cr"/>
                    0 <xsl:value-of select="$large-arc"/> 1
                    <xsl:value-of select="$x2"/>,<xsl:value-of select="$y2"/>
                    Z
                </xsl:attribute>
            </path>
            
            <!--slice for everything else-->
            <path fill="lightgray" stroke="black">
                <xsl:attribute name="d">
                    M <xsl:value-of select="$cx"/>,<xsl:value-of select="$cy"/>
                    L <xsl:value-of select="$x2"/>,<xsl:value-of select="$y2"/>
                    A <xsl:value-of select="$cr"/>,<xsl:value-of select="$cr"/>
                    0 <xsl:value-of select="if ($angle &lt; $pi) then 1 else 0"/> 1
                        <xsl:value-of select="$cx + $cr"/>,<xsl:value-of select="$cy"/>
                        Z
                </xsl:attribute>
            </path>         
        </svg>
    </xsl:template>  
</xsl:stylesheet>