# ユーザー情報の設定

include_recipe 'define/user_with_key.rb'

user_with_key 'tamano' do
  uid 501
  public_key \
    'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC92O5coDbXvHUXWB40IZm7XStaHFjnKgvTS/kvjYYO4KhVRdQi9iGg0DTH5GLfpIkPGuLI1UI' \
    '4NXR6/0N7R57HpRdi+1axY/4En+qdcGR/FzLUAkCfnUgwMrcWFW/QG2gaGrf9zReXuAIYl2J/zDnxFbeGbdqiigG+9xWKSSSqXYs6Wpj2VdkaJ6' \
    'n1Ngvk9ypfX5EJ14JbJxf1wKkwbCwy29hs8rsm62thygQng1ue0K9sAZmfChZd/hXgGRDUHZjo3wm2GUfn2jWo5bT4HX7qwzCdC/pd0OHZNNefp' \
    'uvvS+nhd5xNzC2saOvI8kb0UvgzJFV/52prHVJ7boMX6A8L tamano@tamano-mba.local'
end
