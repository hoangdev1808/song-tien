<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="block-section shopping-list tbl-product wow fadeInDown" data-wow-delay=".3s">
			<div class="container">
				<div class="shopping-list__content">
					<div class="block__title text-uppercase text-center">
						<h3>
							<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
						</h3>
					</div>
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<div class="block-product">
			<div class="list__title d-flex align-content-center">
				<h4 class="text-uppercase">
					<xsl:value-of disable-output-escaping="yes" select="Title">

					</xsl:value-of>
				</h4>
				<a class="ml-auto">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
					<span class="material-icons">keyboard_arrow_right</span>
				</a>
			</div>
			<div class="list-product">
				<div class="row">
					<xsl:apply-templates select="Product"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Product">
		<div class="col-lg-3 col-md-4 col-sm-6">
			<div class="product__item">
				<div class="product__image">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="product__desc">
					<div class="product__name">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="product__infor">
						<div class="product__price">
							<p class="sale">
								<xsl:value-of disable-output-escaping="yes" select="Price"></xsl:value-of>
							</p>
							<xsl:if test="OldPrice != ''">
								<p class="promotion">
									<xsl:value-of disable-output-escaping="yes" select="OldPrice"></xsl:value-of>
								</p>
							</xsl:if>
						</div>
						<div class="icon">
							<a href="">
								<span class="lnr lnr-cart"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>