<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="block-section tbl-detail-service1 wow fadeInDown" data-wow-delay=".3s">
			<div class="container">
				<div class="tbl-dsv1-content">
					<div class="row">
						<div class="col-md-6 col-12">
							<div class="tbl-dsv1-content__image">
								<img>
								<xsl:attribute name="src">
									<xsl:value-of select="/ProductDetail/ProductImages[position() = 2]/ ImageUrl">
									</xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="/ProductDetail/Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</div>
						</div>
						<div class="col-md-6 col-12">
							<div class="tbl-dsv1-content__description">
								<div class="block__title">
									<h3>
										<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title">
										</xsl:value-of>
										<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
									</h3>
								</div>
								<div class="tbl-dsv1-content__description__list">
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent">
									</xsl:value-of>
								</div>
								<div class="tbl-dsv1-content__description__icon">
									<a class="icon__bg d-inline-block">
										<xsl:attribute name="href">
											<xsl:text disable-output-escaping="yes">
												https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
											<xsl:value-of select="/ProductDetail/FullUrl"></xsl:value-of>
										</xsl:attribute>
										<i class="fa fa-facebook"></i>
									</a>
									<a class="icon__bg d-inline-block">
										<xsl:attribute name="href">
											<xsl:text disable-output-escaping="yes">https://twitter.com/home?status=
											</xsl:text>
											<xsl:value-of select="/ProductDetail/FullUrl"></xsl:value-of>
										</xsl:attribute>
										<i class="fa fa-twitter"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="block-section tbl-detail-service2 wow fadeInDown" data-wow-delay=".3s">
			<div class="container">
				<div class="tbl-detail-service2__description">
					<div class="tab-panels">
						<ul class="tabs">
							<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Title">
							</xsl:apply-templates>
						</ul>
						<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Content">
						</xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
		<section class="block-section tbl-detail-service3 wow fadeInDown" data-wow-delay=".3s">
			<div class="container">
				<div class="tbl-detail-service3__content">
					<div class="block__title text-center">
						<h3>Giải pháp khác</h3>
					</div>
					<div class="solution-other">
						<div class="swiper-container solution__other">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
							</div>
						</div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="ProductAttributes" mode="Title">
		<li>
			<xsl:if test="position()=1">
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
			<xsl:attribute name="id">
				<xsl:text disable-output-escaping="yes">panel-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">panel active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
		</div>
	</xsl:template>

	<xsl:template match="ProductOther">
		<div class="swiper-slide item">
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
	</xsl:template>

</xsl:stylesheet>