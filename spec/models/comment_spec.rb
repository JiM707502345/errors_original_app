require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメントする' do
    context 'コメントできる時' do
      it 'textが存在する時' do
        expect(@comment).to be_valid
      end
    end

    context 'コメントできない時' do
      it 'textが空の時コメントできない' do
        @comment.text = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Text can't be blank")
      end
      it 'コメントがuserに紐づいていない時' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('User must exist')
      end
      it 'コメントがerrorに紐づいていない時' do
        @comment.error = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Error must exist')
      end
    end
  end
end
