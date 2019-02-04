require 'note'

describe Note do
  subject(:note) { described_class.new(title, body) }
  let(:note_formatter) { double :note_formatter, format: "Title: title\nbody" }
  let(:title) { double :title }
  let(:body) { double :body }

  it 'has a title' do
    expect(note.title).to eq(title)
  end

  it 'has a body' do
    expect(note.body).to eq(body)
  end
end
