<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="block-title text-center">
            <h2>
                <xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
            </h2>
        </div>
        <div class="row">
            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
            <div class="block-item">
                <a class="btn btn-new" href="http://preview5744.canhcam.com.vn/tin-tuc-1">xem thêm
                            
                    
                    <em class="lnr lnr-arrow-right"></em>
                </a>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
      <xsl:if test="position()&gt;0 and position()&lt;5">
        <div class="col-xl-3 col-md-4 col-6">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <div class="h-3__item">
                    <figure>
                        <div class="img">
                            <img >
                              <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                              </xsl:attribute>
                              <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                              </xsl:attribute>
                            </img>
                        </div>
                        <figcaption>
                            <div class="title">
                                <h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
                            </div>
                            <div class="desc">
                                <p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
                            </div>
                        </figcaption>
                    </figure>
                </div>
            </a>
        </div>
      </xsl:if>
    </xsl:template>
</xsl:stylesheet>