Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })


  get("/square/:input", {:controller => "calculations", :action => "square"})
  get("/square_root/:input", {:controller => "calculations", :action => "square_root"})
  get("/random/:input_min/:input_max", {:controller => "calculations", :action => "random"})
  get("/payment/:input_rate/:input_years/:input_principal", {:controller => "calculations", :action => "payment"})
end

