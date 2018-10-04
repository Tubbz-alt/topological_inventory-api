=begin
Topological Inventory

Topological Inventory

OpenAPI spec version: 0.0.1
Contact: you@your-company.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end
Rails.application.routes.draw do

  def add_swagger_route http_method, path, opts = {}
    full_path = path.gsub(/{(.*?)}/, ':\1')
    match full_path, to: "#{opts.fetch(:controller_name)}##{opts[:action_name]}", via: http_method
  end

  add_swagger_route 'GET', '/0.0.1/providers', controller_name: 'users', action_name: 'list_providers'
  add_swagger_route 'GET', '/0.0.1/service_offerings', controller_name: 'users', action_name: 'list_service_offerings'
  add_swagger_route 'GET', '/0.0.1/service_parameters_sets', controller_name: 'users', action_name: 'list_service_parameters_sets'
  scope "api" do
    scope "0.0.1" do
      resources :sources, only: [:create, :destroy, :index, :show, :update]
    end
  end
end
