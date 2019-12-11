require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')
require_relative('models/house')
also_reload('./models/*')

# index
get '/students' do
  @students = Student.all()
  erb(:index)
end
# show
get '/students/:id' do
  @student = Student.find(params[:id].to_i())
  erb(:show)
end

# new

# create
get '/students/new' do
  erb(:new)
end




# edit

# update

# destroy
