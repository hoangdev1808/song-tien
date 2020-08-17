<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <div class="block-title">
            <h1>
                <xsl:value-of disable-output-escaping="yes" select="/ProductList/ModuleTitle"></xsl:value-of>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </h1>
        </div>
        <div class="dnn-home-3__slide-home-pro">
            <div class="swiper-container home-pro">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
                </div>
            </div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
            <div class="dnn-home-3__slide-home-pro__btn">
                <a class="btn btn__new">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                        <xsl:text>/san-pham/bep-gas</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <span>
                        <xsl:text>xem thêm</xsl:text>
                        <em class="ri-arrow-right-line"></em>
                    </span>
                </a>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Product">
        <div class="swiper-slide">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <div class="home-pro__img">
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
                </div>
                <div class="home-pro__name">
                    <p><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></p>
                    <em class="ri-arrow-right-line"></em>
                </div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>