<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    
    <xsl:import href="information_key.xsl"/>
    
    <xsl:template match="/">
        <xsl:for-each select="//chapter">
            <xsl:variable name="n" as="xs:int" select="title/@n"/>
            <xsl:result-document href="chaptersREAL/chapter{$n}.html">
                
                <html>
                    <head>
                        <title>History of the USSR</title>
                        <link rel="stylesheet" type="text/css" href="../style.css" />
                    </head>
                    <!-- start of document-->
                    <body>
                        <!-- navigation bar here-->
                        <header>
                            <nav>
                                <a href="../index.html">Home</a>
                                <a href="../corpus.html">Corpus</a>
                                <a href="../methodology.html">Methodology</a>
                                <a href="../analysis.html">Analysis</a>
                            </nav>
                        </header>
                        
                        <!--header w chapter name-->
                        <h1 id="chapter{$n}">
                            <xsl:value-of select="title"/>
                        </h1>
                        
                        <!--table of contents-->
                        <div class="toc_container">
                            <div class="toc">
                                <ul>
                                    <xsl:apply-templates select="//chapter">
                                        <xsl:with-param name="current_chap" select="$n"/> <!-- basically this adds a global parameter that keeps track of which chapter we're on-->
                                    </xsl:apply-templates>
                                </ul>
                            </div>
                            <div class = "text">
                                <xsl:apply-templates select="p"/>
                            </div>
                            <div class="buttons">
                                <!-- go back-->
                                <div class="back">
                                    <a href = "chapter{$n - 1}.html">Back</a>
                                </div>
                                <!--go forward-->
                                <div class="forward">
                                    <a href = "chapter{$n + 1}.html">Forward</a>
                                </div>
                            </div>
                        </div>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
    
    <!--template for paragraph-->
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <!--======section for information keys ==========-->
    <!--territory-->
    <xsl:template match="territory">
        <span class="popup">
            <span class="territory">
                <xsl:value-of select="normalize-space(.)"/>
            </span>
            
            <xsl:variable name="info"
                select="if (@id)
                then map:get($territories, @id)
                else ()"/>
            
            <xsl:if test="$info">
                <span class="popuptext">
                    <xsl:value-of select="$info"/>
                </span>
            </xsl:if>
        </span>
    </xsl:template>
    <!--person-->
    <xsl:template match="person">
        <span class="popup">
            <span class="territory">
                <xsl:value-of select="normalize-space(.)"/>
            </span>
            
            <xsl:variable name="info"
                select="if (@id)
                then map:get($person, @id)
                else ()"/>
            
            <xsl:if test="$info">
                <span class="popuptext">
                    <xsl:value-of select="$info"/>
                </span>
            </xsl:if>
        </span>
    </xsl:template>
    <!--place-->
    <xsl:template match="place">
        <span class="popup">
            <span class="territory">
                <xsl:value-of select="normalize-space(.)"/>
            </span>
            
            <xsl:variable name="info"
                select="if (@id)
                then map:get($place, @id)
                else ()"/>
            
            <xsl:if test="$info">
                <span class="popuptext">
                    <xsl:value-of select="$info"/>
                </span>
            </xsl:if>
        </span>
    </xsl:template>
    <!--people-->
    <xsl:template match="people">
        
        <span class="popup">
            <span class="territory">
                <xsl:value-of select="normalize-space(.)"/>
            </span>
            
            <xsl:variable name="info"
                select="if (@id)
                then map:get($people, @id)
                else ()"/>
            
            <xsl:if test="$info">
                <span class="popuptext">
                    <xsl:value-of select="$info"/>
                </span>
            </xsl:if>
        </span>
    </xsl:template>
    <!--religion-->
    <xsl:template match="religion">
        <span class="popup">
            <span class="territory">
                <xsl:value-of select="normalize-space(.)"/>
            </span>
            
            <xsl:variable name="info"
                select="if (@id)
                then map:get($religion, @id)
                else ()"/>
            
            <xsl:if test="$info">
                <span class="popuptext">
                    <xsl:value-of select="$info"/>
                </span>
            </xsl:if>
        </span>
    </xsl:template>
    <!--system-->
    <xsl:template match="system">
        <span class="popup">
            <span class="territory">
                <xsl:value-of select="normalize-space(.)"/>
            </span>
            
            <xsl:variable name="info"
                select="if (@id)
                then map:get($system, @id)
                else ()"/>
            
            <xsl:if test="$info">
                <span class="popuptext">
                    <xsl:value-of select="$info"/>
                </span>
            </xsl:if>
        </span>
    </xsl:template>
    
    <!--template for table of contents-->
    <xsl:template match="chapter">
        <xsl:param name="current_chap" as="xs:int"/>
        
        <li class="{if (title/@n = $current_chap) then 'current' else ''}">
            <a href="chapter{title/@n}.html#chapter{title/@n}">
                <xsl:value-of select="title"/>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>