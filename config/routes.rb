Exam::Application.routes.draw do
	root :to => "forms#new"
	resources :forms
	match "/forms/:id/edit" => "forms#edit"
	match "/forms/:id" => "forms#show"
	match "admin" => "forms#index" 

end
