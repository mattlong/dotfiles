# require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

if ENV['RAILS_ENV']
  require 'rubygems'
  require 'hirb'
  require 'active_record'
  # Hirb.enable
  # ActiveRecord::Base.logger = Logger.new(STDOUT)
end
