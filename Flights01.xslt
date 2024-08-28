<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<h2>Flights</h2>
			<table border="1">
				<tr bgcolor="aqua">
					<th style="text-align:left">Confirmation Code</th>
					<th style="text-align:left">Passenger</th>
					<th style="text-align:left">Flight#</th>
					<th style="text-align:left">Airline</th>
				</tr>
				<xsl:for-each select="//Flight">
					<tr>
						<td>
							<xsl:value-of select="ConfirmationCode"/>
						</td>
						<td>
							<xsl:value-of select="Passenger"/>
						</td>
						<td>
							<xsl:value-of select="FlightNumber"/>
						</td>
						<td>
							<xsl:value-of select="AirlineName"/>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</html>
	</xsl:template>
</xsl:stylesheet>