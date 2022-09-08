<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:lang='fr']"/></title>

                <link rel="stylesheet" type="text/css" href="css.css" />

            </head>
            <body onload="Image_load()">
                <!-- Header -->
                <header id="header">
                    <i class="fa-solid fa-bars fa-2x" id="menu"><img class="menurizz" src="img/menu-outline.svg"/></i>
                    <ul class="navbar">
                        <li><a href="#informazioni">Informazioni</a></li>
                        <li><a href="#fogli">Pagine</a></li>
                        <li><a href="#glossario">Glossario</a></li>
                        <li><a href="#bibliografia">Bibliografia</a></li>
                    </ul>
                </header>
                <main>
                    <!-- Informazioni titolo -->
                    <section id="title">
                        <h1><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:lang='fr']"/></h1>
                    </section>
                    <!-- Caratteristiche -->
                    <section class="informazioni" id="informazioni">
                        <div>
                            <img class="propic" src="img/saussure.jpg" alt="author_img" />
                        </div>
                        <hr class="hr_body"/>
                        <div class="box_body">
                            <xsl:apply-templates select="//tei:msContents" />
                        </div>
                        <div class="box_body" id="order_2">
                            <xsl:apply-templates select="//tei:physDesc" />
                        </div>
                    </section>
                    <!-- Storia editoriale -->
                    <section class="informazioni" id="fogli">
                    <hr class="hr_body"/>
                        <div class="box_body">
                            <xsl:apply-templates select="//tei:history" />
                        </div>
                    </section>
                    <div class="container_50">
                    <div class="align_center">
                        <xsl:apply-templates select="//tei:facsimile" />
                        <hr class="hr_body_2"/>  
                    </div>          
                        <section class="pagina" id="sec_show">
                            <div>
                                <xsl:attribute name="id">
                                    <xsl:value-of select="//tei:div[@n='21']/@facs"/>
                                </xsl:attribute>
                                <div class="flexone">
                                    <h2 id="num_page">Foglio 21</h2>
                                    <input type="image" src="img/trad.svg" id="trad"></input>
                                </div>
                                <div>
                                    <div class="testo" id="trascrizione_JS">
                                        <h3>Trascrizione testo originale</h3>
                                        <xsl:apply-templates select="//tei:div[@n = '21']" />
                                    </div>
                                    <div class="testo" id="traduzione_JS">
                                        <h3>Traduzione italiana</h3>
                                        <xsl:apply-templates select="//tei:div[@type = 'Prol_3_NUM_CAR_21-TRADUZIONE']" />
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="pagina" id="sec_hidden">
                            <div>
                                <xsl:attribute name="id">
                                    <xsl:value-of select="//tei:div[@n='22']/@facs"/>
                                </xsl:attribute>
                                <div class="flexone">
                                    <h2>Foglio 22</h2>
                                    <input type="image" src="img/trad.svg" id="trad_2"></input>
                                </div>
                                <div>
                                    <div class="testo" id="trascrizione_JS_2">
                                        <h3>Trascrizione testo originale</h3>
                                        <xsl:apply-templates select="//tei:div[@n = '22']" />
                                    </div>
                                    <div class="testo" id="traduzione_JS_2">
                                        <h3>Traduzione italiana</h3>
                                        <xsl:apply-templates select="//tei:div[@type = 'Prol_3_NUM_CAR_22-TRADUZIONE']" />
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div id="box_bottoni">
                            <input type="image" src="img/indietro.svg" id="indietro"></input>
                            <span id="testo_foto"></span>
                            <input type="image" src="img/avanti.svg" id="avanti"></input>  
                    </div>  
                    <!-- Lista bottoni -->
                                <div class="lista_bottoni">
                                    <button id="cancella"><div class="button_text">Cancellature <img class="button_img" src="img/close-outline.svg"/> </div></button>
                                    <button id="correzioni"><div class="button_text">Correzioni <img class="button_img" src="img/color-wand-outline.svg"/></div></button>
                                    <button id="terminologia"><div class="button_text">Terminologia <img class="button_img" src="img/reader-outline.svg"/></div></button>
                                    <button id="glottonimi"><div class="button_text">Glottonimi <img class="button_img" src="img/school-outline.svg"/></div></button>
                                    <button id="toponimi"><div class="button_text">Toponimi <img class="button_img" src="img/location-outline.svg"/></div></button>
                                </div>
                    <!-- Appendice -->
                    <hr class="hr_body"/>
                    <section id="glossario">
                        <xsl:apply-templates select="//tei:back/tei:div/tei:list" />
                    </section>
                    <!-- Bibliografia -->
                    <section id="bibliografia">
                        <h1>Bibliografia</h1>
                        <xsl:apply-templates select="//tei:back/tei:div/tei:listBibl" />
                    </section>
                </main>
                <!-- footer -->
                <footer id="about">
                    <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt" />
                </footer>
                <!-- javaScript -->
                <script src="prolusioni3.js"></script>
            </body>
        </html>
    </xsl:template>

    <!-- Templates -->
    <!-- Caratteristiche -->
    <xsl:template match="tei:msContents">
        <h1>
            Informazioni generali
        </h1>
        <h3>
            Autore:
            <div class="no_weight">
                <xsl:element name="a">
                    <xsl:attribute name="href">
                        <xsl:value-of select="//tei:person[@xml:id='FDS']/tei:persName/tei:ref/@target" /> 
                    </xsl:attribute>
                    <xsl:attribute name="target">_blank</xsl:attribute>
                    <xsl:value-of select="tei:msItem/tei:author"/>
                </xsl:element>
            </div>
        </h3>
        <h3>
            Titolo:
            <div class="no_weight">
                <xsl:value-of select="tei:msItem/tei:title"/>
            </div>
        </h3>
        <h3>
            Documento:
            <div class="no_weight">
                <xsl:value-of select="../tei:msIdentifier/tei:idno"/>
            </div>
        </h3>
        <h3>Lingua:
            <div class="no_weight">
                <xsl:value-of select="//tei:language"/>
            </div>
        </h3>
        <h3>
            Acquisizione:
            <div class="no_weight">
                Repertorio della 
                <xsl:element name="a">
                    <xsl:attribute name="href">
                        <xsl:value-of select="../tei:msIdentifier/tei:repository/@ref"/> 
                    </xsl:attribute>
                    <xsl:attribute name="target">_blank</xsl:attribute>
                    <xsl:value-of select="../tei:msIdentifier/tei:repository"/>
                </xsl:element>,
                <xsl:value-of select="../tei:msIdentifier/tei:country"/>.
            </div>
        </h3>
        <h3>
            Data:
            <div class="no_weight">
                <xsl:value-of select="//tei:creation/tei:date"/>
            </div>
        </h3>
    </xsl:template>
    <!-- Informazioni -->
    <xsl:template match="tei:physDesc">
        <h3>
            Supporto:
            <div class="no_weight">
                <xsl:value-of select="tei:objectDesc/tei:supportDesc/tei:support"/>
            </div>
        </h3>
        <h3>Quantità:
            <div class="no_weight">
                <xsl:value-of select="tei:objectDesc/tei:supportDesc/tei:extent/tei:measure"/>
            </div>
        </h3>
        <h3>
            Condizioni:           
            <div class="no_weight">
                <xsl:value-of select="tei:objectDesc/tei:supportDesc/tei:condition"/>
            </div>
        </h3>
        <h3>Metodo di scrittura:
            <div class="no_weight">
                <xsl:value-of select="tei:handDesc/tei:p"/>
            </div>
        </h3>
        <!-- Galleria fogli -->
        <div class="slideshow-container">
            <div class="mySlides fade">
                <div class="numbertext">1 / 4</div>
                <img src="img/img1.png" style="width:100%"/>
                <div class="text">Lato spiegazzato della pagina 21</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">2 / 4</div>
                <img src="img/img2.png" style="width:100%"/>
                <div class="text">Cancellature e macchie d'inchiostro a pagina 22</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">3 / 4</div>
                <img src="img/img3.png" style="width:100%"/>
                <div class="text">Possibili marchi per provare il pennino</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">4 / 4</div>
                <img src="img/img4.png" style="width:100%"/>
                <div class="text">Macchie d'inchiostro sul retro della pagina 21</div>
            </div>

            <!-- Bottoni avanti/dietro -->
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
        <br />
        <!-- Cerchi per navigazione -->
        <div style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
            <span class="dot" onclick="currentSlide(4)"></span>
        </div>
    </xsl:template>
    <!-- Storia editoriale -->
    <xsl:template match="tei:history">
        <h1>Storia editoriale</h1>
        <p><xsl:value-of select="tei:origin/tei:p"/></p>
    </xsl:template>

    <!-- Template immagini e mappatura -->
    <xsl:template match="tei:surface">
        <xsl:element name="img">
            <xsl:attribute name="class">foto</xsl:attribute>
            <xsl:attribute name="display">none</xsl:attribute>
            <xsl:attribute name="usemap">#<xsl:value-of select="@xml:id"/></xsl:attribute>
            <xsl:attribute name="src">
                <xsl:value-of select="tei:graphic/@url" />
            </xsl:attribute>
        </xsl:element>
        
        <xsl:element name="map">
                <xsl:attribute name="class">
                sec_hidden
                </xsl:attribute>
                <xsl:attribute name="id">
                    <xsl:value-of select="@xml:id" />
                </xsl:attribute>
                <xsl:attribute name="style">
                background-repeat: no-repeat;
                background-image:url(
                <xsl:value-of select="tei:graphic/@url" />);
                background-size: cover;
        </xsl:attribute>
        <xsl:attribute name="name"><xsl:value-of select="@xml:id" /></xsl:attribute>
            <xsl:for-each select="current()/tei:zone">
                <xsl:variable name="ulx" select="@ulx" />
                <xsl:variable name="uly" select="@uly" />
                <xsl:variable name="lrx" select="@lrx" />
                <xsl:variable name="lry" select="@lry" />
                <xsl:variable name="ratio" select="800 div 4032" />
                
                <xsl:element name="area">
                    <xsl:attribute name="shape">rect</xsl:attribute>
                    <xsl:attribute name="coords">
                        <xsl:value-of select="concat(@ulx, ',', @uly, ',', @lrx, ',', @lry)" />
                    </xsl:attribute>
                    
                    <xsl:attribute name="id">
                        #<xsl:value-of select="@xml:id" />
                    </xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="starts-with(@xml:id, 'Full_PAG21')">
                            <xsl:attribute name="style">
                                position: absolute;
                               
                                width: 500px;
                                height: 795px;
                                opacity: 0.5;
                            </xsl:attribute>
                        </xsl:when>
                        <xsl:when test="starts-with(@xml:id, 'Full_PAG22')">
                            <xsl:attribute name="style">
                                position: absolute;
                               
                                width: 500px;
                                height: 795px;
                                opacity: 0.5;
                            </xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="style">
                                position: absolute;

                                top: <xsl:value-of select="concat(($uly * $ratio)-10, 'px')" />;
                                left: <xsl:value-of select="concat(68+($ulx * $ratio)-500, 'px')" />;
                                width: <xsl:value-of select="concat((($lrx - $ulx) * $ratio)-10, 'px')" />;
                                height: <xsl:value-of select="concat((($lry - $uly) * $ratio), 'px')" />;
                                opacity: 0.5;
                            </xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
    <!-- Inizio riga -->
    <xsl:template match="tei:lb">
        <xsl:element name="b">
            <xsl:attribute name="id">
                <xsl:value-of select="@facs"/>
            </xsl:attribute>
        </xsl:element>
    </xsl:template>
    <!-- Appendice -->
    <xsl:template match="tei:list">
    
        <h1>Glossario</h1>
        <xsl:for-each select="tei:label">
            <div class="label">
            <div class="gloss_title">
                <h2 class="h2_gloss">
                    <xsl:element name="i">
                        <xsl:attribute name="id">
                            <xsl:value-of select="tei:term[@xml:lang='fr']/@xml:id"/>
                        </xsl:attribute>
                        <xsl:value-of select="tei:term[@xml:lang='fr']" />,
                    </xsl:element>
                </h2>
                <div class="no_boldi">             
                    <xsl:value-of select="tei:term[@xml:lang='it']" />:
                </div>
            </div>
            <!-- VarTerm per ottenere attributo @ref (ita) -->
            <xsl:variable name="VarTerm" >
                <xsl:value-of select="tei:term[@xml:lang='it']/@ref"/>
            </xsl:variable>
            <xsl:for-each select="../tei:item/tei:gloss">
                <!-- if per controllare se gloss.target == VarTerm.ref => collega gloss al termine corrispondente --> 
                <xsl:if test ="@target = $VarTerm">
                    <xsl:value-of select="."/>
                    <hr class="hr_body_3"/>
                </xsl:if>
            </xsl:for-each>
            </div>
        </xsl:for-each>
    </xsl:template>

    <!-- Bibliografia -->
    <xsl:template match="tei:listBibl">
        <xsl:element name="ul">
            <xsl:for-each select="tei:bibl">
                    <xsl:element name="li">
                        
                        - <xsl:value-of select="tei:title"/>,
                        <xsl:for-each select="tei:author/tei:persName">
                            <i><xsl:value-of select="." /></i>,
                        </xsl:for-each>
                        <xsl:for-each select="tei:pubPlace/tei:placeName">
                        <xsl:value-of select="."/>,
                        </xsl:for-each>
                        <xsl:value-of select="tei:publisher"/>,
                        <xsl:value-of select="tei:date"/>
                        
                    </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <!-- Edizione digitale -->
    <xsl:template match="tei:editionStmt">
        <h2>About</h2>
        <h3><xsl:value-of select="tei:edition"/></h3>
        <br/>
        <xsl:for-each select="tei:respStmt">
                <h3><xsl:value-of select="tei:resp"/></h3>
                <xsl:for-each select="tei:persName">
                    <p><xsl:value-of select="."/></p>
                </xsl:for-each>
                <br/>
        </xsl:for-each>
    </xsl:template>

    <!-- Abbreviazioni e testo originale -->
    <xsl:template match="tei:abbr | tei:orig">
        <xsl:element name="span">
            <xsl:attribute name="class">abbr</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Espansioni e testo regolarizzato -->
    <xsl:template match="tei:expan | tei:reg">
        <xsl:element name="span">
            <xsl:attribute name="class">expan</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Cancellature -->
    <xsl:template match="tei:del">
        <xsl:element name="span">
            <xsl:attribute name="class">del</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Elementi non leggibili -->
    <xsl:template match="tei:gap">
        <xsl:element name="span">
            <xsl:attribute name="class">del</xsl:attribute>?
        </xsl:element>
    </xsl:template>

    <!-- Terminologia -->
    <xsl:template match="tei:term">
        <xsl:element name="span">
            <xsl:element name="a">
                <xsl:attribute name="class">terms</xsl:attribute>
                <xsl:attribute name="href"><xsl:value-of select="@ref"/></xsl:attribute>
                <xsl:value-of select="."/>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <!-- Glottonimi -->
    <xsl:template match="tei:lang">
        <xsl:element name="span">
            <xsl:attribute name="class">lang</xsl:attribute>
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template>
    
    <!-- Toponimi -->
    <xsl:template match="tei:name[@type='city']">
        <xsl:element name="span">
            <xsl:attribute name="class">top</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Enfasi -->
    <xsl:template match="tei:emph">
        <xsl:element name="u">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>


    <!-- Italic -->
    <xsl:template match="tei:hi[@rend='italic']">
        <xsl:element name="span">
            <xsl:element name="i">
                <xsl:value-of select="."/>
            </xsl:element>
        </xsl:element>
    </xsl:template>


</xsl:stylesheet>