require 'sinatra'
require 'json'

configure do
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") do |lib|
    require File.basename(lib, '.*')
  end
end

get '/' do
  'Die World!'
end

get '/roll' do
  render_results_in_json DiceRoller.roll
end

get '/roll/:number_of_dice' do
  render_results_in_json DiceRoller.roll(number_of_dice: number_of_dice)
end

get '/roll/:number_of_dice/d/:number_of_faces' do
  render_results_in_json DiceRoller.roll(number_of_dice: number_of_dice, number_of_faces: number_of_faces)
end

private

def number_of_dice
  params['number_of_dice'].to_i
end

def number_of_faces
  params['number_of_faces'].to_i
end

def render_results_in_json(results)
  DiceSerialiser.call(results).to_json
end
