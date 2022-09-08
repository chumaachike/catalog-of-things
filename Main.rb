# require_relative './classes/operation'
require_relative 'app'

def main
    app = App.new()
    app.display_menu
end
main