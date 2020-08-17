<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="swiper-container home-banner">
            <div class="swiper-wrapper">
                <xsl:apply-templates select="/BannerList/Banner" mode="Slider"></xsl:apply-templates>
            </div>
            <div class="down-page-icon">
                <a class="crolldown" href="#h-2">
                    <img src="./assets/icons/download.png" alt=""/>
                </a>
            </div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        </div>
    </xsl:template>
    <xsl:template match="Banner" mode="Slider">
        <xsl:if test="position()!=3">
            <div class="swiper-slide">
                <a>
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </a>
                <div class="content">
                    <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <div class="socail-icon">
                    <ul>
                        <li>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:text disable-output-escaping="yes">https://www.facebook.com/sharer/sharer.php?u=
                                </xsl:text>
                                    <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullUrl"></xsl:value-of>
                                </xsl:attribute>
                                <i class="fa fa-facebook"></i>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-instagram"></i>
                            </a>
                        </li>
                        <li>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:text disable-output-escaping="yes">
													https://twitter.com/home?status=
												</xsl:text>
                                    <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullUrl"></xsl:value-of>
                                </xsl:attribute>
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-youtube"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()=3">
            <div class="swiper-slide">
                <a>
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </a>
                <div class="icon">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="data-fancybox">
                            <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                        </xsl:attribute>
                        <img src="/Data/Sites/1/skins/default/assets/icons/play.png" alt=""/>
                        <p class="text">XEM VIDEO</p>
                    </a>
                </div>
                <div class="socail-icon">
                    <ul>
                        <li>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:text disable-output-escaping="yes">https://www.facebook.com/sharer/sharer.php?u=
                                </xsl:text>
                                    <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullUrl"></xsl:value-of>
                                </xsl:attribute>
                                <i class="fa fa-facebook-f"></i>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-instagram"></i>
                            </a>
                        </li>
                        <li>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:text disable-output-escaping="yes">
													https://twitter.com/home?status=
												</xsl:text>
                                    <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullUrl"></xsl:value-of>
                                </xsl:attribute>
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-youtube"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>