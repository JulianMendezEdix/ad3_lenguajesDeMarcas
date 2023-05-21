<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <ite>
            <nombre><xsl:value-of select="ite/@nombre"/></nombre>
            <web><xsl:value-of select="ite/@web"/></web>
            <director>
                <nombre><xsl:value-of select="ite/director/nombre"/></nombre>
                <despacho><xsl:value-of select="ite/director/despacho"/></despacho>
            </director>
            <jefe_estudios>
                <nombre><xsl:value-of select="ite/jefe_estudios/nombre"/></nombre>
                <despacho><xsl:value-of select="ite/jefe_estudios/despacho"/></despacho>
            </jefe_estudios>
            <profesores>
                <xsl:for-each select="ite/profesores/profesor">
                    <profesor>
                        <xsl:attribute name="id">
                            <xsl:value-of select="id"/>
                        </xsl:attribute>
                        <nombre><xsl:value-of select="nombre"/></nombre>
                    </profesor>
                </xsl:for-each>
            </profesores>
            <ciclos>
                <xsl:for-each select="ite/ciclos/ciclo">
                    <ciclo>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@id"/>
                        </xsl:attribute>
                        <nombre><xsl:value-of select="nombre"/></nombre>
                        <grado><xsl:value-of select="grado"/></grado>
                        <decretoTitulo>
                            <año>
                                <xsl:value-of select="decretoTitulo/@año"/>
                            </año>
                        </decretoTitulo>
                    </ciclo>
                </xsl:for-each>
            </ciclos>
        </ite>   
    </xsl:template>
</xsl:stylesheet>
