<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:template match="/">
    <html>
        <head>
            <link rel="stylesheet" type="text/css" href="event timeline.css" />
        </head>
        <body>
        <div class="timeline">
            <div class="container left">
                <div class="content">
                    <ul>
                        <xsl:apply-templates select="//date" mode="date"/>
                    </ul>
                </div>
            </div>
            <div class="container right">
                <div class="content">
                    <ul>
                        <xsl:apply-templates select="//date" mode="date"/>
                    </ul>
                </div>
            </div>
        </div>
        </body>    
    </html>
    </xsl:template>
    
    <xsl:template match="//p/date" mode="date">

        <li>
            <strong>
                <xsl:choose>
                    <xsl:when test='@month="Early"'>
                        Early
                    </xsl:when>
                    <xsl:when test='@month="Late"'>
                        Late
                    </xsl:when>
                    <xsl:when test='@month="Spring"'>
                        Spring
                    </xsl:when>
                    <xsl:when test='@month="Summer"'>
                        Summer
                    </xsl:when>
                    <xsl:when test='@month="Fall"'>
                        Fall
                    </xsl:when>
                    <xsl:when test='@month="Winter"'>
                        Winter
                    </xsl:when>
                    <xsl:when test='@month=1'>
                        January
                    </xsl:when>
                    <xsl:when test='@month=2'>
                        February
                    </xsl:when>
                    <xsl:when test='@month=3'>
                        March
                    </xsl:when>
                    <xsl:when test='@month=4'>
                        April
                    </xsl:when>
                    <xsl:when test='@month=5'>
                        May
                    </xsl:when>
                    <xsl:when test='@month=6'>
                        June
                    </xsl:when>
                    <xsl:when test='@month=7'>
                        July
                    </xsl:when>
                    <xsl:when test='@month=8'>
                        August
                    </xsl:when>
                    <xsl:when test='@month=9'>
                        September
                    </xsl:when>
                    <xsl:when test='@month=10'>
                        October
                    </xsl:when>
                    <xsl:when test='@month=11'>
                        November
                    </xsl:when>
                    <xsl:when test='@month=12'>
                        December
                    </xsl:when>
                </xsl:choose>
                <xsl:value-of select="@day"/>
                    <xsl:if test='@day'>, </xsl:if>
                <xsl:value-of select="@year"/>
            </strong>
            <br/>
            <xsl:value-of select="."/>
        </li>
    </xsl:template>
</xsl:stylesheet>
