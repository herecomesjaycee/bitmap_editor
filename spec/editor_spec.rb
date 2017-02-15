require_relative '../app/bitmap_editor'
require_relative 'spec_helper'


describe BitmapEditor do
subject(:be){described_class.new}

before :each do
	be.canvas(6,6)
  end

  	context 'building a canvas' do

		it 'should return a column of 6 Os' do
			expect(be.return_canvas[5]).to eq('OOOOOO')
		end 

		it 'should return show a column and width of 4 Os' do
			be.show
			expect(be.return_canvas[3]).to eq('OOOOOO')
		end 

	end

	context 'testing color function' do
		it 'colour functionality should return the correct an A, a colour' do
			be.colour(3,4,"A")
			expect(be.return_canvas[2]).to eq('OOOAOO')
		end 

		it 'colour functionality should return just "O" on the first unaffected row' do
			be.colour(3,4,"A")
			expect(be.return_canvas[0]).to eq('OOOOOO')
		end 
	end

	context 'testing vertical drawing function' do
		it 'vertical drawing functionality should return the correct an A, a colour' do
			be.draw_v(3,4,5,"A")
			expect(be.return_canvas[2]).to eq('OOOOAO')
		end 

		it 'vertical drawing functionality should return the correct an A, a colour' do
			be.draw_v(3,4,5,"A")
			expect(be.return_canvas[3]).to eq('OOOOAO')
		end 

		it 'colour functionality should return just "O" on the first unaffected row' do
			be.draw_v(3,4,5,"A")
			expect(be.return_canvas[0]).to eq('OOOOOO')
		end 
	end
	
	context 'testing horizontal drawing function' do
		it 'vertical drawing functionality should return the correct an A, a colour' do
			be.draw_h(3,2,3,"A")
			expect(be.return_canvas[2]).to eq('OAAOOO')
		end 

		it 'should return the correct As in affected row, a colour' do
			be.draw_h(3,4,5,"A")
			expect(be.return_canvas[4]).to eq('OOOOOO')
		end 

		it 'should return just "O"s on the first unaffected row' do
			be.draw_h(3,4,5,"A")
			expect(be.return_canvas[0]).to eq('OOOOOO')
		end 
	end

	context 'clear the canvas' do
		it 'should clear the whole canvas' do
			be.colour(3,4,"A")
			be.clear
			expect(be.return_canvas[3]).to eq('OOOOOO')
		end
	end

end
