require 'rails_helper'

RSpec.describe Error, type: :model do
  before do
    @error = FactoryBot.build(:error)
  end

  describe '失敗投稿' do
    context '投稿できる時' do
      it '全てが存在する時' do
        expect(@error).to be_valid
      end
      it 'in_my_head_id以外が存在する時' do
        @error.in_my_head = nil
        expect(@error).to be_valid
      end
      it 'frequency_id以外が存在する時' do
        @error.frequency_id = nil
        expect(@error).to be_valid
      end
      it 'in_my_head_idとfrequency_id以外が存在する時' do
        @error.in_my_head_id = nil
        @error.frequency_id = nil
        expect(@error).to be_valid
      end
    end

    context '投稿できない時' do
      it 'industory_idが1の時' do
        @error.industry_id = 1
        @error.valid?
        expect(@error.errors.full_messages).to include('Industry must be other than 1')
      end
      it 'own_error_idが1の時' do
        @error.own_error_id = 1
        @error.valid?
        expect(@error.errors.full_messages).to include('Own error must be other than 1')
      end
      it 'human_factor_idが1の時' do
        @error.human_factor_id = 1
        @error.valid?
        expect(@error.errors.full_messages).to include('Human factor must be other than 1')
      end
      it 'tryが空の時' do
        @error.try = nil
        @error.valid?
        expect(@error.errors.full_messages).to include("Try can't be blank")
      end
      it 'errorが空の時' do
        @error.error = nil
        @error.valid?
        expect(@error.errors.full_messages).to include("Error can't be blank")
      end
      it 'learningが空の時' do
        @error.learning = nil
        @error.valid?
        expect(@error.errors.full_messages).to include("Learning can't be blank")
      end
      it 'next_actionが空の時' do
        @error.next_action = nil
        @error.valid?
        expect(@error.errors.full_messages).to include("Next action can't be blank")
      end
      it '投稿がuserと紐づかない時' do
        @error.user = nil
        @error.valid?
        expect(@error.errors.full_messages).to include('User must exist')
      end
    end
  end
end
