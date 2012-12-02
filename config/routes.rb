Exam::Application.routes.draw do
	root :to => "forms#new"
	resources :forms

end
