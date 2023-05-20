<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>		
		    <title>AE3</title>
            <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
			<link rel="stylesheet" href="css/estilos.css"/>
            <link rel="stylesheet" href="css/mediaQueries.css"/>
            <link rel="stylesheet" href="css/formulario.css"/>
		</head>
        <body>

            <header>
                <xsl:value-of select="ite/@nombre"/>
            </header>
            <nav>
                <ul>
                    <li>
                            <a href="https://institutotecnologico.edix.com" target="_blank"><xsl:value-of select="ite/@web"/></a>
                    </li>
                    <li>
                            <a href="https://www.grupoproeduca.com/" target="_blank"><xsl:value-of select="ite/empresa"/></a>
                    </li>
                    <li>
                            <a href="tel:+34917873991"> <xsl:value-of select="ite/telefono"></xsl:value-of></a>
                    </li>
                </ul>
            </nav>

            <section id="director">
                <header>
                Director
                </header>
                <table>
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Despacho</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><xsl:value-of select="ite/director/nombre"></xsl:value-of></td>
                            <td><xsl:value-of select="ite/director/despacho"></xsl:value-of></td>
                        </tr>
                    </tbody>
                </table>
            </section>
            
            <section id="jefeDeEstudios">

                <header>Jefe de Estudios</header>

                <table>
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Despacho</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><xsl:value-of select="ite/jefe_estudios/nombre"/></td>
                            <td><xsl:value-of select="ite/jefe_estudios/despacho"/></td>
                        </tr>
                    </tbody>
                    
                </table>
            </section>
            <section id="profesores">
                <header>
                Profesores
                </header>
                <table>
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="ite/profesores/profesor">
                            <tr>
                                <td><xsl:value-of select="id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </section>
            <section id="ciclos">
                <header>Ciclos</header>
                <table>
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Grado</th>
                            <th>Decreto Título</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="ite/ciclos/ciclo">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="grado"/></td>
                                <td><xsl:value-of select="decretoTitulo/@año"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </section>
            <section id="contacto">
                <header>Contacto</header>
                <form action="procesarPeticion.jsp" method="post">
                    <fieldset>
                        <legend>Formulario de contacto</legend>
                        <label for="nombre">Nombre</label>
                        <input name="nombre" type="text"/>
                        <br/>
                        <label for="apellidos">Apellidos</label>
                        <input name="apellidos" type="text"/>
                        <br/>
                        <label for="email">Email</label>
                        <input name="email" type="email"/>
                        <br/>
                        <br/>
                        <br/>
                        <label for="ciclo">¿En qué ciclo estás interesad@?</label>
                        <br/>
                        <br/>
                        <input name="ciclo" type="radio" value="DAW"/>DAW
                        <input name="ciclo" type="radio" value="DAM"/>DAM
                        <input name="ciclo" type="radio" value="ASIR"/>ASIR
                        <br/>
                        <input type="submit" value="ENVIAR"/>
                    </fieldset>
                </form>
            </section>
            <footer>
                Web realizada por @JulianMendez. Todos los derechos reservados
            </footer>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
