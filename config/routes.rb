
Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'club3/new'
  get 'giaodien/trangchu'
  get 'giaodien/datsan'
  get 'giaodien/tintuc'
  get 'giaodien/doibong'
  get 'giaodien/lienhe'
  get"dangnhap" => "users#login"
 get"xacnhan/:id" => "lichdau2#xacnhan"
 get"huy/:id" => "lichdau2#huy1"
  post"dangnhap" => "users#login_user"
  get"club2" => "club2#new"
  post"club2" => "club2#create"
  post"/timdoithu/:id/edit" =>"timdoithu#create1"
  delete"logout" => "giaodien#destroy"
  get"taoclub2" => "taoclub2#new"
  resources :theloais , :loaitins, :tintucs  ,:doibongs ,:users , :taoclub1 ,:timdoithu ,:lichdau2


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
