require 'spec_helper'

describe "Post pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "post creation" do
    before { visit '/create_post'}

    describe "with invalid information" do

      it "should not create a post" do
        expect { click_button "Сохранить" }.not_to change(Post, :count)
      end

      describe "error messages" do
        before { click_button "Сохранить" }
        it { should have_content('Формы заполнены неправильно') }
      end
    end

    describe "with valid information" do

      before { fill_in 'Заголовок', with: "Lorem ipsum" }
      before { fill_in 'Статья', with: "Lorem ipsum" }
      it "should create a post" do
        expect { click_button "Сохранить" }.to change(Post, :count).by(1)
      end
    end
  end

  describe "post destruction" do
    before { FactoryGirl.create(:post, user: user) }

    describe "as correct user" do
      before { visit user_path(user) }

      it "should delete a post" do
        expect { click_link "Удалить" }.to change(Post, :count).by(-1)
      end
    end
  end
end