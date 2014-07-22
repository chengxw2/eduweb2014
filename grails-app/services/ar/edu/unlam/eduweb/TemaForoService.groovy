package ar.edu.unlam.eduweb

import grails.transaction.Transactional

@Transactional
class TemaForoService {

    def temasAbiertosDeForo() {
		TemaForo.list()

    }
	
	def temasDeCurso() {
	
		}
	
	def mostrarTema() {
	
		}
}
