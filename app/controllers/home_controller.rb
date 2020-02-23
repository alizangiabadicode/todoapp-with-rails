class HomeController < ApplicationController

	def trash_em
		List.where(:completed => true).destroy_all
		redirect_to lists_url, notice: 'List marked items was successfully destroyed.'
	end

	def trash_all
		List.all.destroy_all
		redirect_to lists_url, notice: 'List completely was successfully destroyed'	
	end
end