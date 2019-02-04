require 'note'

describe Note do
  subject(:note) { described_class.new(title) }
  let(:note_formatter) { double :note_formatter, format: "Title: title\nbody" }
  let(:title) { double :title}

  it 'has a title' do
    expect(note.title).to eq(title)
  end
end
