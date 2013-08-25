<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:str="http://www.quickbundle.org" xmlns:fn="http://www.w3.org/2005/04/xpath-functions" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes" xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<!--导入全局定义-->
	<xsl:import href="../global.xsl"/>
	<!--忽略xml声明-->
	<xsl:output method="text" omit-xml-declaration="yes" encoding="UTF-8"/>
	<!--处理table-->
	<xsl:template match="table">
		<xsl:value-of select="$charLt"/>!--配置<xsl:value-of select="$tableFormatNameUpperFirst"/>的bean-->
	<xsl:value-of select="$charLt"/>bean id="I<xsl:value-of select="$tableFormatNameUpperFirst"/>Service" class="<xsl:value-of select="$javaPackageTableDir"/>.service.impl.<xsl:value-of select="$tableFormatNameUpperFirst"/>Service">
		<xsl:value-of select="$charLt"/>property name="dao" ref="I<xsl:value-of select="$tableFormatNameUpperFirst"/>Dao"/>
	<xsl:value-of select="$charLt"/>/bean>
	<xsl:value-of select="$charLt"/>bean id="I<xsl:value-of select="$tableFormatNameUpperFirst"/>Dao" class="<xsl:value-of select="$javaPackageTableDir"/>.dao.impl.<xsl:value-of select="$tableFormatNameUpperFirst"/>Dao">
		<xsl:value-of select="$charLt"/>property name="dataSource" ref="dataSource"/>
	<xsl:value-of select="$charLt"/>/bean>
	</xsl:template>
</xsl:stylesheet>