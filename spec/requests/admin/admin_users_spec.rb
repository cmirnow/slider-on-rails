require 'rails_helper'

RSpec.describe 'Admin::AdminUsers', type: :request do
  # render_views
  let(:admin_user) { AdminUser.create!(email: 'admin@example.com', password: 'password') }

  before(:each) do
    sign_in admin_user
  end

  describe 'edit' do
    it 'renders admin form' do
      get "/admin/admin_users/#{admin_user.id}/edit"
      expect(assigns(:admin_user)).to eq admin_user
    end
  end

  describe 'update' do
    it 'updates admin' do
      patch "/admin/admin_users/#{admin_user.id}", params: { id: admin_user, admin_user: { email: 'user@example.com' } }
      admin_user.reload
      expect(admin_user.email).to eq 'user@example.com'
    end
  end
end
