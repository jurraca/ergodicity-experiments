defmodule Ergo.Actor do 
	use Agent 

	def start_link({arg, name}) do 
		Agent.start_link(fn -> arg end, name: name)
	end

	def get(name) do 
		Agent.get(name, & &1)
	end

	def update(name) do 
		Agent.update(name, &(draw(&1)))
	end 

	def draw(state) do 
		Enum.random([0, 1]) |> coinflip(state)

	end

	def coinflip(0, state) do 
		state * 0.6 |> Float.round(2)
	end

	def coinflip(1, state) do 
		state * 1.5 |> Float.round(2)
	end 

	def via_tuple(name) do 
		{:via, Registry, {Ergo.Registry, name}}
	end 

end 