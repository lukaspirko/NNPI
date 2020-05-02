<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:apply-templates select="shop"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="shop">
        <h2>
            <xsl:value-of select="@name"/>
        </h2>

        <xsl:apply-templates select="chargers"/>
        <xsl:apply-templates select="phones"/>
    </xsl:template>

    <xsl:template match="chargers">
        <div>
            <h3>Chargers</h3>
            <table border="1">
                <tr bgcolor="#9acd32">
                    <th style="text-align:left">Type</th>
                    <th style="text-align:left">Maker</th>
                    <th style="text-align:left">Price</th>
                    <th style="text-align:left">Performance</th>
                </tr>
                <xsl:for-each select="charger">
                    <tr>
                        <td>
                            <xsl:value-of select="@type"/>
                        </td>
                        <td>
                            <xsl:value-of select="maker"/>
                        </td>
                        <td>
                            <xsl:value-of select="price"/>
                            <xsl:value-of select="price/@currency"/>
                        </td>
                        <td>
                            <xsl:value-of select="performance"/><xsl:value-of select="performance/@units"/>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </div>
    </xsl:template>

    <xsl:template match="phones">
        <div>
            <h3>Phones</h3>
            <table border="1">
                <tr bgcolor="#9acd32">
                    <th style="text-align:left">Type</th>
                    <th style="text-align:left">Name</th>
                    <th style="text-align:left">Price</th>
                    <th style="text-align:left">Memory</th>
                    <th style="text-align:left">Guarantee</th>
                    <th style="text-align:left">Processor Sign</th>
                    <th style="text-align:left">Operation Memory</th>
                    <th style="text-align:left">Battery Capacity</th>
                    <th style="text-align:left">Charging Performance</th>
                    <th style="text-align:left">Connector</th>
                    <th style="text-align:left">Operating System</th>
                    <th style="text-align:left">Display Size</th>
                    <th style="text-align:left">Display Type</th>
                    <th style="text-align:left">Color</th>
                    <th style="text-align:left">Front Camera Resolution</th>
                    <th style="text-align:left">Screen Fineness</th>
                    <th style="text-align:left">Wheight</th>
                    <th style="text-align:left">Depth</th>
                    <th style="text-align:left">Width</th>
                    <th style="text-align:left">Height</th>
                    <th style="text-align:left">Durability</th>
                </tr>
                <xsl:for-each select="phone">
                    <tr>
                        <td>
                            <xsl:value-of select="@typeOfPhone"/>
                        </td>
                        <td>
                            <xsl:value-of select="name"/>
                            <xsl:value-of select="name/@model"/>
                        </td>
                        <td>
                            <xsl:value-of select="price"/>
                            <xsl:value-of select="price/@currency"/>
                        </td>
                        <td>
                            <xsl:value-of select="memory"/>
                            <xsl:value-of select="memory/@units"/>
                        </td>
                        <td>
                            <xsl:value-of select="guarantee"/>
                            <xsl:value-of select="guarantee/@units"/>
                        </td>
                        <td>
                            <xsl:value-of select="processorSign"/>
                            <xsl:value-of select="processorSign/@core"/>
                        </td>
                        <td>
                            <xsl:value-of select="operationMemory"/>
                            <xsl:value-of select="operationMemory/@units"/>
                        </td>
                        <td>
                            <xsl:value-of select="bateryCapacity"/>
                            <xsl:value-of select="bateryCapacity/@units"/>
                        </td>
                        <td>
                            <xsl:value-of select="chargingPerformance"/>
                            <xsl:value-of select="chargingPerformance/@units"/>
                        </td>
                        <td>
                            <xsl:value-of select="connector"/>
                        </td>
                        <td>
                            <xsl:value-of select="operatingSystem"/>
                            <xsl:value-of select="operatingSystem/@version"/>
                        </td>
                        <td>
                            <xsl:value-of select="displaySize"/>
                            <xsl:value-of select="displaySize/@units"/>
                        </td>
                        <td>
                            <xsl:value-of select="displayType"/>
                        </td>
                        <td>
                            <xsl:value-of select="color"/>
                        </td>
                        <td>
                            <xsl:value-of select="frontCameraResolution"/>
                            <xsl:value-of select="frontCameraResolution/@units"/>
                        </td>
                        <td>
                            <xsl:value-of select="screenFineness"/>
                            <xsl:value-of select="screenFineness/@units"/>
                        </td>
                        <td>
                            <xsl:value-of select="wheight"/>
                            <xsl:value-of select="wheight/@units"/>
                        </td>
                        <td>
                            <xsl:value-of select="depth"/>
                            <xsl:value-of select="depth/@units"/>
                        </td>
                        <td>
                            <xsl:value-of select="width"/>
                            <xsl:value-of select="width/@units"/>
                        </td>
                        <td>
                            <xsl:value-of select="height"/>
                            <xsl:value-of select="height/@units"/>
                        </td>
                        <td>
                            <xsl:value-of select="durability"/>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </div>
    </xsl:template>
</xsl:stylesheet>

