<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version = "1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/> 
<xsl:template match="/">
<DIV class="WIDTH : 750px; margin : 0 auto; display: block;"><xsl:apply-templates /></DIV>
</xsl:template>

<xsl:template match="STUDENT">
<DIV style="background-color : #ccc; display : flex; justify-content : center; margin : 0 auto 25px auto; border : 1px solid black; ">
     <xsl:apply-templates select="PHOTO"/>
	 <DIV style="max-width : 500px"><xsl:apply-templates select="CONTENT"/></DIV>
</DIV> 
</xsl:template>

<xsl:template match="PHOTO">
<xsl:variable name="url" select="@SRC" />
<xsl:variable name="width" select="@WIDTH" />
<xsl:variable name="height" select="@HEIGHT" />
<img style="background-position : center center; background-size : contain; background-repeat : no-repeat; display: block; width : 150px; height : 150px;	border : 1px solid black;" SRC="{$url}" WIDTH="{@width}" HEIGHT="{@height}" />
</xsl:template>


<xsl:template match="CONTENT"> 
     <xsl:apply-templates select="NAME"/>
	 <xsl:apply-templates select="INFO"/>
	 <xsl:apply-templates select="DATE"/>
	 <xsl:apply-templates select="EMAIL"/>
	 <xsl:apply-templates select="PHONE"/>
	 <xsl:apply-templates select="HOBBY"/>
</xsl:template>


<xsl:template match="NAME">
<p style="display : block;	padding : 0px 10px 10px 10px;"><xsl:value-of select="."/></p>
</xsl:template>

<xsl:template match="INFO">
<p style="display : block;	padding : 0px 10px 10px 10px;"><xsl:value-of select="."/></p>
</xsl:template>

<xsl:template match="DATE">
<p style="display : block;	padding : 0px 10px 10px 10px;"><xsl:value-of select="."/></p>
</xsl:template>

<xsl:template match="EMAIL">
<p style="display : block;	padding : 0px 10px 10px 10px;"><xsl:value-of select="."/></p>
</xsl:template>

<xsl:template match="PHONE">
<p style="display : block;	padding : 0px 10px 10px 10px;"><xsl:value-of select="."/></p>
</xsl:template>

<xsl:template match="HOBBY">
<p style="display : block;	padding : 0px 10px 10px 10px;"><xsl:value-of select="."/></p>
</xsl:template>

</xsl:stylesheet> 