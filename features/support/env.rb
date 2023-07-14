  require 'em/pure_ruby'
  require "appium_lib"
  require "allure-cucumber"
  require "fileutils"
  require 'cucumber'
  require_relative "app_helpers.rb"
  require 'pry'

  World(AppHelpers)

  FileUtils.rm_f(Dir.glob("logs/*.json"))
  FileUtils.rm_f(Dir.glob("logs/*.png"))
  caps = Appium.load_appium_txt file: File.expand_path("./capabilities/emulatorAndroid.txt"), verbose: true
  Appium::Driver.new(caps, true)
  Appium.promote_appium_methods Object