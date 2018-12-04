Rails.application.routes.draw do
  devise_for :users
  # Routes for the Sequence resource:

  # CREATE
  get("/sequences/new", { :controller => "sequences", :action => "new_form" })
  post("/create_sequence", { :controller => "sequences", :action => "create_row" })

  # READ
  get("/sequences", { :controller => "sequences", :action => "index" })
  get("/sequences/:id_to_display", { :controller => "sequences", :action => "show" })

  # UPDATE
  get("/sequences/:prefill_with_id/edit", { :controller => "sequences", :action => "edit_form" })
  post("/update_sequence/:id_to_modify", { :controller => "sequences", :action => "update_row" })

  # DELETE
  get("/delete_sequence/:id_to_remove", { :controller => "sequences", :action => "destroy_row" })

  #------------------------------

  # Routes for the index resource:
  get("/", { :controller => "yogaflows", :action => "main_index"})
 
  # Routes for the Friend resource:

  # CREATE
  get("/friends/new", { :controller => "friends", :action => "new_form" })
  post("/create_friend", { :controller => "friends", :action => "create_row" })

  # READ
  get("/friends", { :controller => "friends", :action => "index" })
  get("/friends/:id_to_display", { :controller => "friends", :action => "show" })

  get("/friends/flows", {:controller => "friends", :action => "show_flows"})

  # UPDATE
  get("/friends/:prefill_with_id/edit", { :controller => "friends", :action => "edit_form" })
  post("/update_friend/:id_to_modify", { :controller => "friends", :action => "update_row" })

  # DELETE
  get("/delete_friend/:id_to_remove", { :controller => "friends", :action => "destroy_row" })

  #------------------------------

  # Routes for the Favorite resource:

  # CREATE
  get("/favorites/new", { :controller => "favorites", :action => "new_form" })
  post("/create_favorite", { :controller => "favorites", :action => "create_row" })

  # READ
  get("/favorites", { :controller => "favorites", :action => "index" })
  get("/favorites/:id_to_display", { :controller => "favorites", :action => "show" })

  # UPDATE
  get("/favorites/:prefill_with_id/edit", { :controller => "favorites", :action => "edit_form" })
  post("/update_favorite/:id_to_modify", { :controller => "favorites", :action => "update_row" })

  # DELETE
  get("/delete_favorite/:id_to_remove", { :controller => "favorites", :action => "destroy_row" })

  #------------------------------

  # Routes for the Pose resource:

  # CREATE
  get("/poses/new", { :controller => "poses", :action => "new_form" })
  post("/create_pose", { :controller => "poses", :action => "create_row" })

  # READ
  get("/poses", { :controller => "poses", :action => "index" })
  get("/poses/test", { :controller => "poses", :action => "index_test" })
  get("/poses/:id_to_display", { :controller => "poses", :action => "show" })

  # UPDATE
  get("/poses/:prefill_with_id/edit", { :controller => "poses", :action => "edit_form" })
  post("/update_pose/:id_to_modify", { :controller => "poses", :action => "update_row" })

  # DELETE
  get("/delete_pose/:id_to_remove", { :controller => "poses", :action => "destroy_row" })

  #------------------------------

  # Routes for the Yogaflow resource:

  # CREATE
  get("/yogaflows/new", { :controller => "yogaflows", :action => "new_form" })
  post("/create_yogaflow", { :controller => "yogaflows", :action => "create_row" })
  

  # READ
  get("/yogaflows", { :controller => "yogaflows", :action => "index" })
  get("/yogaflows/:id_to_display", { :controller => "yogaflows", :action => "show" })

  get("/users/:user_id", { :controller => "yogaflows", :action => "show_myflows" })


  # UPDATE
  get("/yogaflows/:prefill_with_id/edit", { :controller => "yogaflows", :action => "edit_form" })
  post("/update_yogaflow/:id_to_modify", { :controller => "yogaflows", :action => "update_row" })

  # DELETE
  get("/delete_yogaflow/:id_to_remove", { :controller => "yogaflows", :action => "destroy_row" })

  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
