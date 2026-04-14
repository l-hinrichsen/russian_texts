<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!--territory lookup table-->
    <xsl:key 
        name="territory-lookup"
        match="territoryInfo"
        use="@id"/>
    
    <!--html-->
    <xsl:template match="/">
        <html>
            <head>
                <title>Chapter</title>
                <link rel="stylesheet" href="sample.css"/>
            </head>
            <body>
                <xsl:apply-templates select="//title | //p"/>
                
                <!--=========================================================================================================-->
                <!--TIMELINE of events, by paragraph (to learn how to do it before doing propaganda/chapter or something else-->
                <h2>Event Timeline</h2>
                <svg width="600" height="300">
                    <xsl:for-each select="//p">
                        <xsl:variable name="position" select="position()"/>
                        <xsl:variable name="eventCount" select="count(.//event)"/>
                        
                        <!--to actually draw the bar-->
                        <rect 
                            x="{($position - 1) * 30}" 
                            y="{200 - ($eventCount * 20)}"
                            width="20" 
                            height="{$eventCount * 20}"
                            fill="blue"/>
                        <!--labels-->
                        <text 
                            x="{($position - 1) * 30}" 
                            y="225" 
                            font-size="10">
                            <xsl:value-of select="$position"/>
                        </text>
                    </xsl:for-each>    
                </svg>
                <!--End of timeline==========================================================================================-->
                
            </body>
        </html>
    </xsl:template>
    
    <!--title is h1-->
    <xsl:template match="title">
        <h1>
            <xsl:value-of select="."/>
        </h1>
    </xsl:template>
    
    <!--to break up by <p> and not render one chunk of text-->
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
        <!--variable from timeline-->
        <xsl:variable name="eventCount" select="count(.//event)"/>
    </xsl:template>
    
    <!--territory-->
    <xsl:template match="territory">
        
        <!--turns @id into $id-->
        <xsl:variable name="id" select="@id"/>
        
        <!--this part is actually done by the css-->
        <span class="popup">
            
            <!--makes sure the key() only applies to <territory>-->
            <span class="territory">
                <xsl:value-of select="."/>
            </span>
            
            <!--refers to the key, which refers to the xml definitions of all the @ids-->
            <span class="popuptext">
                <xsl:value-of select="key('territory-lookup', $id)"/>
            </span>         
        </span>
    </xsl:template>
    
    <!--Section for writing the rest of the popups;
        For now, each one just displays the element name as a placeholder -->
    <!--for each people-->
    <xsl:template match="people">
        <span class="popup">
            <span class="people">
                <xsl:value-of select="."/>
            </span>
            <span class="popuptext">Ethnicity</span>
        </span>
    </xsl:template>
    
    <!--for each person-->
    <xsl:template match="person">
        <span class="popup">
            <span class="person">
                <xsl:value-of select="."/>
            </span>
            <span class="popuptext">Person</span>
        </span>
    </xsl:template>
    
    <!--for each place-->
    <xsl:template match="place">
        <span class="popup">
            <span class="place">
                <xsl:value-of select="."/>
            </span>
            <span class="popuptext">Place</span>
        </span>
    </xsl:template>
    
    <!--for each event -->
    <xsl:template match="event">
        <span class="popup">
            <span class="event">
                <xsl:value-of select="."/>
            </span>
            <span class="popuptext">Event</span>
        </span>
    </xsl:template>
    
</xsl:stylesheet>

<!--thoughts================================================================================================-->
<!--I used this to also figure out how to link an svg file to the html to become the icon that shows in the tab 
    in browser, which was fun but also could be useful for us at some point-->
<!--still need to figure out how to get each distinct-value to show something different, which is in the works-->
<!--i think that defining our own functions could be useful for the <xsl:template match="[element name]"/> parts 
    because eventually I think we have to break that down by attribute or distinct-value-->
<!--in the section for breaking up elements by name, could use <g> and @color, then use @currentColor to make 
    a timeline of all elements frequency with their corresponding color. i think this would be useless but kinda
    cool, so just noting that it's possible-->