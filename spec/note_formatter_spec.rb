require 'note_formatter'

describe NoteFormatter do
  subject(:note_formatter) { described_class.new }
  let(:note) { double :note, title: "Title", body: "body" }

  it 'formats notes correctly' do
    expect(note_formatter.format(note)).to eq("Title: #{note.title}\n"\
    "#{note.body}")
  end
end
