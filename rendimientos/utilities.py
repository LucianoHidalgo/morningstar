def obtenerDatosGraficoPromedio(querySet):
	promedio = []
	xlabels = []

	for elemento in querySet :
		if elemento.semestre in [1,2] :
			val = str(elemento.anio) + "-" + str(elemento.semestre)
			xlabels.append(val)
			promedio.append(float(elemento.promedio))
	return [xlabels, promedio]

