<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">

    <xsl:variable name="territories" as="map(xs:string, xs:string)">
        <xsl:map>
            <xsl:map-entry key="'volga'" select="'The Volga River is the longest river in Europe. It flows through
                western Russia into the Caspian Sea and has been an important trade route for centuries.
                Many major Russian cities are along the river, like Volgograd, Yaroslavl, and Tver.'"/>
            <xsl:map-entry key="'dnieper'" select="'The Dnieper River is one of the major rivers of Eastern Europe,
                and it flows through Russia, Belarus, and Ukraine. It has been important to trade and migration.'"/>
            <xsl:map-entry key="'ural'" select="'The Ural Mountains form a boundary between Europe and
                Asia. They stretch from the Arctic Ocean to Kazakhstan. The region is rich in
                natural resources and is important for mining and industry.'"/>
        </xsl:map>
    </xsl:variable>
</xsl:stylesheet>

<!--error from recitation 4/14 was that key="volga" was used instead of key="'volga'", etc; wasn't actually giving the xs:string that we said we'd give it-->