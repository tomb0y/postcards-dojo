RSpec.describe Postcard do
  let(:subject) { described_class.new(name, sender) }
  let(:content_lines) { subject.content.split("\n") }

  context 'a postcard for "Gábor Szabó" from "emarsys"' do
    let(:name) { 'Gábor Szabó' }
    let(:sender) { 'emarsys' }

    it 'has a "top border" as the first line' do
      expect(content_lines.first).to eq('+-------------------------------+')
    end

    it 'has a "blank line" as the second line' do
      expect(content_lines[1]).to eq('|                               |')
    end

    it 'has a "miss you line" as the third line' do
      expect(content_lines[2]).to eq('|   We miss you, Gábor Szabó!   |')
    end

    it 'has a "get well soon line" as the fourth line' do
      expect(content_lines[3]).to eq('|   Get well soon!              |')
    end

    it 'has a "blank line" as the fifth line' do
      expect(content_lines[4]).to eq('|                               |')
    end

    it 'has a "signature line" as the sixth line' do
      expect(content_lines[5]).to eq('|   -- emarsys                  |')
    end

    it 'has a "blank line" as the second to last line' do
      expect(content_lines[-2]).to eq('|                               |')
    end

    it 'has a "bottom border" as the last line' do
      expect(content_lines.last).to eq('+-------------------------------+')
    end

    it 'has proper content', skip: true do
      expect(subject.content)
        .to eq <<~POSTCARD
          +-------------------------------+
          |                               |
          |   We miss you, Gábor Szabó!   |
          |   Get well soon!              |
          |                               |
          |   -- emarsys                  |
          |                               |
          +-------------------------------+
        POSTCARD
    end
  end

  context 'a postcard for "ill employees" from "everyone from emarsys and codecool"', skip: true do
    let(:name) { 'ill employees' }
    let(:sender) { 'everyone from emarsys and codecool' }

    it 'has a "top border" as the first line' do
      expect(content_lines.first).to eq('+-------------------------------------------+')
    end

    it 'has a "blank line" as the second line' do
      expect(content_lines[1]).to eq('|                                           |')
    end

    it 'has a "miss you line" as the third line' do
      expect(content_lines[2]).to eq('|   We miss you, ill employees!             |')
    end

    it 'has a "get well soon line" as the fourth line' do
      expect(content_lines[3]).to eq('|   Get well soon!                          |')
    end

    it 'has a "blank line" as the fifth line' do
      expect(content_lines[4]).to eq('|                                           |')
    end

    it 'has a "signature line" as the sixth line' do
      expect(content_lines[5]).to eq('|   -- everyone from emarsys and codecool   |')
    end

    it 'has a "blank line" as the second to last line' do
      expect(content_lines[-2]).to eq('|                                           |')
    end

    it 'has a "bottom border" as the last line' do
      expect(content_lines.last).to eq('+-------------------------------------------+')
    end

    it 'has proper content', skip: true do
      expect(subject.content)
        .to eq <<~POSTCARD
          +-------------------------------------------+
          |                                           |
          |   We miss you, ill employees!             |
          |   Get well soon!                          |
          |                                           |
          |   -- everyone from emarsys and codecool   |
          |                                           |
          +-------------------------------------------+
        POSTCARD
    end
  end
end
