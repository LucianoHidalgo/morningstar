def obtenerDatosGraficoPromedio(querySet):
	promedio = []
	xlabels = []

	for elemento in querySet :
		
		if elemento.semestre_etiqueta is not None :
			val = str(elemento.anio) + "-" + elemento.semestre_etiqueta
		else :
			val = str(elemento.anio) + "-" + str(elemento.semestre)
		xlabels.append(val)
		promedio.append(float(elemento.promedio))
	return [xlabels, promedio]

