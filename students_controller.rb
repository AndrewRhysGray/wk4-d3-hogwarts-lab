require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')
require_relative('models/house')
also_reload('./models/*')

# index
get '/students/?' do
  @students = Student.all()
  erb(:index)
end
# show
get '/students/:id' do
  @student = Student.find( params[:id].to_i() ) #this one
  erb(:show)
end

# new

# create
get '/students/new' do
  # @student = Student.new
  erb(:new)
end

# post '/students/?' do
#   @student = Student.new(params)
#   @student.save
# erb(:create)
# end




# edit

# update

# destroy
