<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<section class="block-section service-4 wow fadeInDown" data-wow-delay=".3s">
			<div class="container">
				<div class="service-4__content">
					<div class="block__title text-center">
						<h3>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h3>
					</div>
					<div class="service-4__content__list">
						<div class="row">
							<xsl:apply-templates select="Product"></xsl:apply-templates>
						</div>
					</div>
					<div class="block__btn text-center">
						<a class="btn btn__new" href="">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:text disable-output-escaping="yes">xem thêm</xsl:text>
						</a>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Product">
		<div class="col-md-4 col-sm-6">
			<div class="item">
				<div class="item__image">
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
					<div class="item__title">
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
				</div>
				<div class="item__description lcl lcl-3">
					<div class="desc">
						<p>
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</p>
					</div>
					<a class="read-more">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>