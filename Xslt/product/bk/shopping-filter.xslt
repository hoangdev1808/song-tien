<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="wrap">
            <div id="slider-range-min"></div>
            <div class="range-price">
                <label for="amount" data-index="0">Giá từ 0đ đến</label>
                <input id="amount" type="text" readonly=""></input>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
<div class="filter-wrap">
    <div class="product-filter-side-wrapper ajaxfilterresponse">
        <div class="mobile-filter">
            <em class="mdi mdi-chevron-left"></em>
            <span>Back</span>
        </div>
        <xsl:apply-templates select="/ProductFilter/Group" mode="Group1"></xsl:apply-templates>
    </div>
    <div class="filter-side-item filter-range">
        <span class="title-filter filter-title">
            <xsl:value-of disable-output-escaping="yes" select="/ProductFilter/RPrice"></xsl:value-of>
        </span>
        <div class="filter-range">
            <div id="slider-range"></div>
            <div class="price-range">
                <xsl:value-of select="/ProductFilter/FromPriceText"></xsl:value-of>
                <div class="sliderValue min-input" data-index="0"></div>
                <xsl:value-of select="/ProductFilter/ToPriceText"></xsl:value-of>
                <div class="sliderValue max-input" data-index="1"></div>
            </div>
            <div class="hidden">
                <a class="urlwithoutprice">
                    <xsl:attribute name="href">
                        <xsl:value-of select="/ProductFilter/UrlWithoutPrice"></xsl:value-of>
                    </xsl:attribute>
                </a>
                <a class="urlwithprice">
                    <xsl:attribute name="href">
                        <xsl:value-of select="/ProductFilter/UrlWithPrice"></xsl:value-of>
                    </xsl:attribute>
                </a>
                <a class="pricemin">
                    <xsl:value-of select="/ProductFilter/PriceMin"></xsl:value-of>
                </a>
                <a class="pricemax">
                    <xsl:value-of select="/ProductFilter/PriceMax"></xsl:value-of>
                </a>
            </div>
        </div>
    </div>
    <div class="hidden">
        <a class="urlwithoutprice">
            <xsl:attribute name="href">
                <xsl:value-of select="/ProductFilter/UrlWithoutPrice"></xsl:value-of>
            </xsl:attribute>
        </a>
        <a class="urlwithprice">
            <xsl:attribute name="href">
                <xsl:value-of select="/ProductFilter/UrlWithPrice"></xsl:value-of>
            </xsl:attribute>
        </a>
        <a class="pricemin">
            <xsl:value-of select="/ProductFilter/PriceMin"></xsl:value-of>
        </a>
        <a class="pricemax">
            <xsl:value-of select="/ProductFilter/PriceMax"></xsl:value-of>
        </a>
    </div>
</div>