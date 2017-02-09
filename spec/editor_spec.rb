require_relative '../app/bitmap_editor'
require_relative 'spec_helper'


describe BitmapEditor do
subject(:be){described_class.new}

	it 'should return a column of 6 Os' do
		be.canvas(6,6)
		expect(be.return_canvas[5]).to eq(['O', 'O', 'O', 'O', 'O', 'O'] )
	end 

end