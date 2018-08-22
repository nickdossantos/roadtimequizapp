Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'quizzes#index'
  get '/quizzes/final_exam', to: 'quizzes#final_exam'
  resources :quizzes
  get '/quizzes/add_questions', to: 'quizzes#add_questions', as: 'add_questions'
end
