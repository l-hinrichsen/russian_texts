<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:template match="/">
    <html>
        <head>
            <link rel="stylesheet" type="text/css" href="event_timeline.css" />
        </head>
        <body>
            <button style="position: fixed; right: 0; border: 4px solid#8b0000;margin: 20px;padding: 10px;background-color: #dc8546;" onclick="myFunction()">Hide Minor Events</button>
            <script>
                function myFunction() {
                const div = document.getElementById("minor");
                if (div.style.display === "none") {
                div.style.display = "block";
                } else {
                div.style.display = "none";
                }
                }
            </script>
            
        <div class="timeline">
                    <ul>
                        <xsl:apply-templates select="//date" mode="date">
                            <xsl:sort select="@year" order="ascending" data-type="number"/>
                        </xsl:apply-templates>
                    </ul>
        </div>
        </body>    
    </html>
    </xsl:template>
    
    <xsl:template match="//p/date" mode="date">

        <xsl:element name="div">
            <xsl:attribute name="class">
                <xsl:apply-templates select="'container'"/>
            </xsl:attribute>
            <xsl:attribute name="order">
                <xsl:number format="0" level="any"/>
            </xsl:attribute>
            <xsl:attribute name="id">
                <xsl:apply-templates select="@date_type"/>
            </xsl:attribute>
            
        <xsl:element name="div">
            <xsl:attribute name="class">
                <xsl:apply-templates select="'content'"/>
            </xsl:attribute>    
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
        </xsl:element>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
