
	require 'httparty'
	require 'openssl'
    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
	URL = 'https://sepa.utem.cl/rest/api/v1'
      AUTH = {username: '2E5Vw7WUCm', password: '0754e0cbf6df85c40be0715e643c9f1c'}
	  ASIGNATURAS= '/docencia/asignaturas/{INF}/cursos'
			  
	     respuestas = HTTParty.get(URL+ASIGNATURAS, basic_auth: AUTH)
	     nombres = []
		 respuestas.each do |asignatura|
		 nombres << asignatura['nombre']
		end
		[
				{
						"nombre": "string",
						"codigo": "string",
						"departamento": {
								"facultad": {
										"sigla": "string",
										"nombre": "string"
								},
								"nombre": "string",
								"id": 0
						},
						"creditos": 0,
						"horasSemanales": 0,
						"fechaCreacion": "2018-11-13T01:51:51.853Z"
				}
		]
puts nombres

ASIGNATURAS= "/docencia/asignaturas/{INF}/cursos"
respuesta = HTTParty.get((URL+ASIGNATURAS, basic_auth: AUTH)
asig = []
cont = 0
respuesta.each do |asignatura|
	if f['curso']['anio']==2015	
		cont = cont + 1
		asig << "Las asignaturas de informatica el 2015 fueron #{cont}"
	   end	
	end
	{
			"nombre": "string",
			"codigo": "string",
			"departamento": {
					"facultad": {
							"sigla": "string",
							"nombre": "string"
					},
					"nombre": "string",
					"id": 0
			},
			"creditos": 0,
			"horasSemanales": 0,
			"fechaCreacion": "2018-11-20T03:55:33.830Z"
	}
	puts asig

	DOCENTES= "/academia/docentes"
	respuesta = HTTParty.get(URL+DOCENTES, basic_auth: AUTH)
	anio = []
	respuesta.each do |docentes|
			anio << f['anio']
		if f['anio']<=1980 
			promedio = promedio + f['nota'].to_f
			count1= count1 + 1
		end
	end
	puts anio
	