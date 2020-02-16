defmodule Ergo.Dyn do 
	use DynamicSupervisor

	def start_link(_) do 

		DynamicSupervisor.start_link(__MODULE__, :no_args, name: Ergo.Dyn)
	end 

	def init(:no_args) do 
		DynamicSupervisor.init(strategy: :one_for_one, restart: :temporary)
	end 

	def start_child(name) do 
		DynamicSupervisor.start_child(__MODULE__, {Ergo.Actor, {100, name})
	end 

end 