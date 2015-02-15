# ユーザーを作成し、公開鍵を設定する。
# ユーザーが既に存在する場合、公開鍵の追記のみ行う。
define :user_with_key, { uid: nil, public_key: nil, password: nil } do
  uid = params[:uid]
  username = params[:name]
  public_key = params[:public_key]
  password = params[:password]

  user username do
    uid uid
    username username
    password password if password
    home "/home/#{username}"
    action :create
    not_if "id #{username}"
  end

  directory "/home/#{username}/.ssh" do
    mode '700'
    owner username
    group username
    action :create
    not_if "test -e /home/#{username}/.ssh"
  end

  file "/home/#{username}/.ssh/authorized_keys" do
    mode '600'
    owner username
    group username
    action :create
    not_if "test -e /home/#{username}/.ssh/authorized_keys"
  end

  execute "set public-key to #{username}" do
    command "echo #{public_key} >> /home/#{username}/.ssh/authorized_keys"
    not_if "grep #{public_key} /home/#{username}/.ssh/authorized_keys"
  end
end
