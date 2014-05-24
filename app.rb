require 'sinatra'

get '/' do 

erb :index, layout: :default_layout

end

post '/' do 

  if ((params[:work] == '2') && (params[:consider] == '2') && (params[:interest] == '1')) || 
    ((params[:work] == '1') && (params[:consider] == '2') && (params[:interest] == '1')) 
      
      erb :rational, layout: :default_layout
  
  elsif ((params[:work] == '2') && (params[:consider] == '2') && (params[:interest] == '2')) ||
    ((params[:work] == '2') && (params[:consider] == '1') && (params[:interest] == '2'))

      erb :guardian, layout: :default_layout

  elsif ((params[:work] == '1') && (params[:consider] == '2') && (params[:interest] == '2')) ||
    ((params[:work] == '1') && (params[:consider] == '1') && (params[:interest] == '2'))

      erb :artisan, layout: :default_layout

  elsif ((params[:work] == '2') && (params[:consider] == '1') && (params[:interest] == '1')) ||
    ((params[:work] == '1') && (params[:consider] == '1') && (params[:interest] == '1'))
    
      erb :idealist, layout: :default_layout
  end
end