package ar.edu.unlam.eduweb

import grails.transaction.Transactional

@Transactional
class TemaForoService {

    def temasAbiertosDeCurso(Curso cursoInstance) {
		TemaForo.findAllByCursoAndBloqueado(cursoInstance,false)

    }
	
	def comentariosDeTema(TemaForo temaForoInstance) {
		Comentario.findAllByTemaForo(temaForoInstance)

	}
	
	
}
