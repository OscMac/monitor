require 'rubygems'
require 'mechanize'
require 'nokogiri'
require 'json'

agent = Mechanize.new
	a = agent.post('http://localhost:3000/history_thermostats.json',{
			"history_thermostat[temperature]" => 100, 
			"history_thermostat[humidity]" => 100,
			"history_thermostat[energy]" => 100,
			 serial: '0000-000-00-3', #numero serial del termostato
			 mail: 'luis@yahoo.com' , pass: 'usuariotres' #usuario y contraseña del dueño del termostato
			})