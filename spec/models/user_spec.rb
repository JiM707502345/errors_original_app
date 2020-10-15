require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '登録できる時' do
      it '全てが存在する時' do
        expect(@user).to be_valid
      end
    end
    context '登録できない時' do
      it 'nameが空の時' do
        @user.name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Name can't be blank")
      end
      it 'emailが空の時' do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it 'passwordが空の時' do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'password_confirmationがpasswordと一致しない時' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'gender_idが空の時' do
        @user.gender_id = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Gender can't be blank")
      end
      it 'gender_idが1の時' do
        @user.gender_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include('Gender must be other than 1')
      end
      it 'ageが空の時' do
        @user.age = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Age can't be blank")
      end
    end
  end
end
