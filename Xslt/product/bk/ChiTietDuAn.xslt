<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="dnn-project-detail1 section wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="block-title">
                    <h1>
                        <xsl:value-of select="/ProductDetail/Title" disable-output-escaping="yes"></xsl:value-of>
                        <xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </h1>
                </div>
                <div class="dnn-project-detail1__content">
                    <div class="dnn-project-detail1__content__description">
                        <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent"></xsl:value-of>
                    </div>
                    <div class="dnn-project-detail1__content__slide">
                        <div class="swiper-container dnn-project-detail1__content__slide__gallery-top">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="/ProductDetail/ProductImages" mode="Top"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                    <div class="dnn-project-detail1__content__thumbs">
                        <div class="swiper-container-thumbs dnn-project-detail1__content__thumbs__gallery-thumbs">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="/ProductDetail/ProductImages" mode="Bottom"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev">
                            <div class="block-title"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section dnn-project-detail2 wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="block-title">
                    <h1>
                        <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/ProductAttributes/Title"></xsl:value-of>
                    </h1>
                </div>
                <div class="dnn-project-detail2__table">
                    <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/ProductAttributes/Content"></xsl:value-of>
                </div>
            </div>
        </section>
        <section class="section dnn-project-detail3">
            <div class="container">
                <div class="block-title">
                    <h1>sản phẩm đã cung cấp</h1>
                </div>
                <div class="dnn-project-detail3__slide">
                    <div class="swiper-container dnn-project-detail3__slide__product">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/ProductDetail/ProductRelated"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>
            </div>
        </section>
        <section class="section dnn-project-detail4">
            <div class="container">
                <div class="block-title">
                    <h1>dự án khác</h1>
                </div>
                <div class="dnn-project-detail4__list">
                    <div class="swiper-container dnn-project-detail4__list__slide">
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
    <xsl:template match="ProductImages" mode="Top">
        <div class="swiper-slide">
            <div class="dnn-project-detail1__content__slide__gallery-top__img">
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
    </xsl:template>
    <xsl:template match="ProductImages" mode="Bottom">
        <div class="swiper-slide">
            <div class="dnn-project-detail1__content__thumbs__gallery-thumbs__img">
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
    </xsl:template>
    <xsl:template match="ProductRelated">
        <div class="swiper-slide">
            <div class="row">
                <div class="col-xl-6 col-md-6">
                    <div class="dnn-project-detail3__slide__product__img">
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
                <div class="col-xl-6 col-md-6">
                    <div class="dnn-project-detail3__slide__product__desc">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title"></xsl:value-of>
                        </a>
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ProductOther">
        <div class="swiper-slide">
            <div class="dnn-project-detail4__list__slide__item">
                <div class="dnn-project-detail4__list__slide__item__img">
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
                </div>
                <div class="dnn-project-detail4__list__slide__item__description">
                    <div class="dnn-project-detail4__list__slide__item__description__title">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title"></xsl:value-of>
                        </a>
                    </div>
                    <div class="dnn-project-detail4__list__slide__item__description__content">
                        <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent"></xsl:value-of>
                    </div>
                    <div class="dnn-project-detail4__list__slide__item__description__read-more">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <span>
                                <xsl:text>Xem chi tiết</xsl:text>
                            </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>