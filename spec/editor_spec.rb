require_relative '../app/bitmap_editor'
require_relative 'spec_helper'


describe BitmapEditor do
subject(:be){described_class.new}

	it 'should return a column of 6 Os' do
		be.canvas(6,6)
		expect(be.return_canvas[5]).to eq('OOOOOO')
	end 

	it 'should return show a column and width of 4 Os' do
		be.canvas(4,4)
		be.show
		expect(be.return_canvas[3]).to eq('OOOO')
	end 

	it 'should return show a column and width of 4 Os' do
		be.canvas(4,4)
		be.colour(4,4,"A")
		expect(be.return_canvas[3]).to eq('OOOA')
	end 
end