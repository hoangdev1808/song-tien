<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="row">
            <div class="col-xl-3 col-lg-4 col-md-5">
                <div class="nav-left">
                    <div class="block-title">
                        <h2>
                            <xsl:apply-templates select="/ZoneList/ModuleTitle"></xsl:apply-templates>
                        </h2>
                    </div>
                    <ul>
                        <xsl:apply-templates select="/ZoneList/Zone/Zone" mode="Left"></xsl:apply-templates>
                    </ul>
                    <a class="btn btn-new">
                        <xsl:attribute name="href">
                            <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text>xem thêm</xsl:text>
                        <em class="lnr lnr-arrow-right"></em>
                    </a>
                </div>
            </div>
            <div class="col-xl-9 col-lg-8 col-md-7">
                <nav class="nav-container">
                    <ul class="nav-lists">
                        <xsl:apply-templates select="/ZoneList/Zone/Zone" mode="Right"></xsl:apply-templates>
                    </ul>
                </nav>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Left">
        <li>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <h3>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </h3>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="Right">
        <li class="nav-list">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </a>
            <div class="list-content">
                <div class="desc">
                    <h4>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h4>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text>xem thêm</xsl:text>
                        <em class="lnr lnr-arrow-right"></em>
                    </a>
                </div>
            </div>
        </li>
    </xsl:template>
</xsl:stylesheet>