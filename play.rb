
# module MakeModule
#   ActiveMpdel::Commpn
#   class_methods do
#     def exec
#       puts "MakeModule#exec"
#     end
#   end
# end
#
# class UseModuleClass
#   include MakeModule
# end
#
# UseModuleClass.new.exec
require "date"

puts Time.now
puts Date.today - 1
puts DateTime.now
puts ENV["TZ"]
