# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Recipes Actions', type: :system do
  describe '/' do
    it 'shows the list of recipes' do
      VCR.use_cassette('recipes_list') do
        visit '/'

        expect(page).to have_content('Crispy Chicken and Rice with Peas & Arugula Salad')
        expect(page).to have_text('View Recipe').exactly(4).times
      end
    end
  end

  describe '/recipes/:id' do
    it 'shows the list of recipes' do
      VCR.use_cassette('recipe_show') do
        visit '/'

        first('.btn-primary').click

        expect(page).to have_content('Crispy Chicken and Rice with Peas & Arugula Salad')
        expect(page).to have_content('Crispy chicken skin, tender meat, and rich, tomatoey sauce form a winning trifecta of delicious in this one-pot braise. We spoon it over rice and peas to soak up every last drop of goodness, and serve a tangy arugula salad alongside for a vibrant boost of flavor and color. Dinner is served! Cook, relax, and enjoy!')
        expect(page).to have_content('Chef: Jony Chives')
        expect(page).to have_content('Tags: gluten free, healthy')
      end
    end
  end
end
