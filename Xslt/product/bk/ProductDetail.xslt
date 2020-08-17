<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="dnn-detail1 section wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="dnn-detail1__content">
                    <div class="row">
                        <div class="col-md-7">
                            <div class="dnn-detail1__content__slide">
                                <div class="swiper-container dnn-detail1__content__slide__gallery-top">
                                    <div class="swiper-wrapper">
                                        <xsl:apply-templates select="/ProductDetail/ProductImages"></xsl:apply-templates>
                                    </div>
                                </div>
                            </div>
                            <div class="thumbs">
                                <div class="swiper-container-thumbs dnn-detail1__content__slide__gallery-thumbs">
                                    <div class="swiper-wrapper">
                                        <xsl:apply-templates select="/ProductDetail/ProductImages"></xsl:apply-templates>
                                    </div>
                                </div>
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>
                        </div>
                        <div class="col-md-5 dnn-detail1__content__product-detail">
                            <div class="block-title">
                                <h1>
                                    <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title"></xsl:value-of>
                                    <xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                                </h1>
                            </div>
                            <div class="table-responsive">
                                <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent"></xsl:value-of>
                            </div>
                            <div class="dnn-detail1__content__product-detail__contact">
                                <a class="btn btn__contact">
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="Url"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:text>
                                Liên hệ
                            </xsl:text>
                                </a>
                                <ul>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text>https://twitter.com/home?status=</xsl:text>
                                                <xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
                                            </xsl:attribute>
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                                <xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
                                            </xsl:attribute>
                                            <i class="fa fa-facebook"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section dnn-detail2 wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="dnn-detail2__desciption">
                    <div class="tab-panels">
                        <ul class="tabs">
                            <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Title"></xsl:apply-templates>
                        </ul>
                        <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Content"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </section>
        <section class="section dnn-detail wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="block-title">
                    <h1>Sản phẩm cùng loại</h1>
                </div>
                <div class="dnn-detail__list">
                    <div class="swiper-container dnn-detail__list__slide">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/ProductDetail/ProductRelated"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </section>
        <section class="section dnn-detail wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="block-title">
                    <h1>Sản phẩm khác</h1>
                </div>
                <div class="dnn-detail__list__other">
                    <div class="swiper-container dnn-detail__list__other__slide">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="ProductImages">
        <div class="swiper-slide">
            <div class="img">
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ProductAttributes" mode="Title">
        <li>
            <xsl:if test="position()=1">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="rel">
                <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </li>
    </xsl:template>
    <xsl:template match="ProductAttributes" mode="Content">
        <div class="panel">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="article">
                <xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
                <div class="button-read">
                    <div id="toggle">Xem thêm</div>
                    <em class="ri-arrow-down-line"></em>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ProductRelated">
        <div class="swiper-slide">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <div class="dnn-detail__list__other__slide__img">
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
                <div class="dnn-detail__list__other__slide__name">
                    <p>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </p>
                    <em class="ri-arrow-right-line"></em>
                </div>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="ProductOther">
        <div class="swiper-slide">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <div class="dnn-detail__list__other__slide__img">
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
                <div class="dnn-detail__list__other__slide__name">
                    <p>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </p>
                    <em class="ri-arrow-right-line"></em>
                </div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>