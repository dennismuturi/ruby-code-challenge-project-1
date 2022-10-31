require 'bundler/setup'
Bundler.require
require_all 'app'

require_relative '..\app\models\author'
require_relative '..\app\models\magazine'
require_relative '..\app\models\articles'
