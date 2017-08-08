# == Schema Information
#
# Table name: mountains
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  age        :integer
#

require 'rails_helper'

RSpec.describe Mountain, type: :model do
  #it "isn't valid without name" do
  #  mountain = Mountain.new
  #  expect(mountain).not_to be_valid
  #end

  # pending 'It does not work well.'
  # let!(:mountain) { Mountain.create(name: 'たろう', age: 13) }
  # it 'Mountainの取得ができること' do
  #   expect(Mountain.first).to eq mountain
  # end

  #describe '#greet' do
    # 1
    # it '12歳以下の場合、ひらがなで答えること' do
    #   mountain = Mountain.new(name: 'たろう', age: 12)
    #   expect(mountain.greet).to eq 'ぼくはたろうだよ。'
    # end
    # it '13歳以上の場合、漢字で答えること' do
    #   mountain = Mountain.new(name: 'たろう', age: 13)
    #   expect(mountain.greet).to eq '僕はたろうです。'
    # end
    
    # 2 context
    # context '12歳以下の場合' do
    #   it 'ひらがなで答えること' do
    #     mountain = Mountain.new(name: 'たろう', age: 12)
    #     expect(mountain.greet).to eq 'ぼくはたろうだよ。'
    #   end
    # end
    # context '13歳以上の場合' do
    #   it '漢字で答えること' do  
    #     mountain = Mountain.new(name: 'たろう', age: 13)
    #     expect(mountain.greet).to eq '僕はたろうです。'
    #   end
    # end

    # 3 before
    # before do
    #   @params = { name: 'たろう' }
    # end
    # context '12歳以下の場合' do
    #   it 'ひらがなで答えること' do
    #     mountain = Mountain.new(@params.merge(age: 12))
    #     expect(mountain.greet).to eq 'ぼくはたろうだよ。'
    #   end
    # end
    # context '13歳以上の場合' do
    #   it '漢字で答えること' do
    #     mountain = Mountain.new(@params.merge(age: 13))
    #     expect(mountain.greet).to eq '僕はたろうです。'
    #   end
    # end

    # 4 before in nested context 
    # before do
    #   @params = { name: 'たろう' }
    # end
    # context '12歳以下の場合' do
    #   before do
    #     @params.merge!(age: 12)
    #   end
    #   it 'ひらがなで答えること' do
    #     mountain = Mountain.new(@params)
    #     expect(mountain.greet).to eq 'ぼくはたろうだよ。'
    #   end
    # end
    # context '13歳以上の場合' do
    #   before do
    #     @params.merge!(age: 13)
    #   end
    #   it '漢字で答えること' do
    #     mountain = Mountain.new(@params)
    #     expect(mountain.greet).to eq '僕はたろうです。'
    #   end
    # end
    
    # 5 let
    # let(:mountain) { Mountain.new(params) }
    # let(:params) { { name: 'たろう', age: age } }
    # context '12歳以下の場合' do
    #   let(:age) { 12 }
    #   it 'ひらがなで答えること' do
    #     expect(mountain.greet).to eq 'ぼくはたろうだよ。'
    #   end
    # end
    # context '13歳以上の場合' do
    #   let(:age) { 13 }
    #   it '漢字で答えること' do
    #     expect(mountain.greet).to eq '僕はたろうです。'
    #   end
    # end
    
    # 6 subject
    # let(:mountain) { Mountain.new(params) }
    # let(:params) { { name: 'たろう', age: age } }
    # subject { mountain.greet }
    # context '12歳以下の場合' do
    #   let(:age) { 12 }
    #   it { is_expected.to eq 'ぼくはたろうだよ。' }
    # end
    # context '13歳以上の場合' do
    #   let(:age) { 13 }
    #   it { is_expected.to eq '僕はたろうです。' }
    # end
    
    # 7 Refactoring
    # let(:mountain) { Mountain.new(name: 'たろう', age: age) }
    # subject { mountain.greet }
    # context '12歳以下の場合' do
    #   let(:age) { 12 }
    #   it { is_expected.to eq 'ぼくはたろうだよ。' }
    # end
    # context '13歳以上の場合' do
    #   let(:age) { 13 }
    #   it { is_expected.to eq '僕はたろうです。' }
    # end

    # 8 shared_examples and it_behaves_like
    # let(:mountain) { Mountain.new(name: 'たろう', age: age) }
    # subject { mountain.greet }
    # context '0歳の場合' do
    #   let(:age) { 0 }
    #   it { is_expected.to eq 'ぼくはたろうだよ。' }
    # end
    # context '12歳の場合' do
    #   let(:age) { 12 }
    #   it { is_expected.to eq 'ぼくはたろうだよ。' }
    # end
    # context '13歳の場合' do
    #   let(:age) { 13 }
    #   it { is_expected.to eq '僕はたろうです。' }
    # end
    # context '100歳の場合' do
    #   let(:age) { 100 }
    #   it { is_expected.to eq '僕はたろうです。' }
    # end

    # let(:mountain) { Mountain.new(name: 'たろう', age: age) }
    # subject { mountain.greet }

    # shared_examples '子どものあいさつ' do
    #   it { is_expected.to eq 'ぼくはたろうだよ。' }
    # end
    # context '0歳の場合' do
    #   let(:age) { 0 }
    #   it_behaves_like '子どものあいさつ'
    # end
    # context '12歳の場合' do
    #   let(:age) { 12 }
    #   it_behaves_like '子どものあいさつ'
    # end

    # shared_examples '大人のあいさつ' do
    #   it { is_expected.to eq '僕はたろうです。' }
    # end
    # context '13歳の場合' do
    #   let(:age) { 13 }
    #   it_behaves_like '大人のあいさつ'
    # end
    # context '100歳の場合' do
    #   let(:age) { 100 }
    #   it_behaves_like '大人のあいさつ'
    # end
    
  #   9 shared_context and include_context
  #   let(:mountain) { Mountain.new(name: 'たろう', age: age) }
  #   subject { mountain.greet }
  #   context '12歳以下の場合' do
  #     let(:age) { 12 }
  #     it { is_expected.to eq 'ぼくはたろうだよ。' }
  #   end
  #   context '13歳以上の場合' do
  #     let(:age) { 13 }
  #     it { is_expected.to eq '僕はたろうです。' }
  #   end
  # end

  # describe '#child?' do
  #   let(:mountain) { Mountain.new(name: 'たろう', age: age) }
  #   subject { mountain.child? }
  #   context '12歳以下の場合' do
  #     let(:age) { 12 }
  #     it { is_expected.to eq true }
  #   end
  #   context '13歳以上の場合' do
  #     let(:age) { 13 }
  #     it { is_expected.to eq false }
  #   end
  # end

  # let(:mountain) { Mountain.new(name: 'たろう', age: age) }
  # shared_context '12歳の場合' do
  #   let(:age) { 12 }
  # end
  # shared_context '13歳の場合' do
  #   let(:age) { 13 }
  # end

  # xdescribe '#greet' do
  #   subject { mountain.greet }
  #   context '12歳以下の場合' do
  #     include_context '12歳の場合'
  #     it { is_expected.to eq 'ぼくはたろうだよ。' }
  #   end
  #   context '13歳以上の場合' do
  #     include_context '13歳の場合'
  #     it { is_expected.to eq '僕はたろうです。' }
  #   end
  # end

  # describe '#child?' do
  #   subject { mountain.child? }
  #   context '12歳以下の場合' do
  #     include_context '12歳の場合'
  #     it { is_expected.to eq true }
  #   end
  #   context '13歳以上の場合' do
  #     include_context '13歳の場合'
  #     xit { is_expected.to eq false }
  #   end
  # end
  
  # describe '#rspec_memo' do
  #   it 'memo_detail' do
  #     expect(1 + 2).to be >= 3
  #     expect(1).to be_truthy
  #     expect(nil).to be_falsey

  #     x = [1, 2, 3]
  #     expect(x.size).to eq 3
  #     # x.pop
  #     # expect(x.size).to eq 2
  #     expect{ x.pop }.to change{ x.size }.from(3).to(2)
  #     expect{ x.pop }.to change{ x.size }.by(-1)
  #     expect{ x.push(10) }.to change{ x.size }.by(1)

  #     x = [1, 2, 3]
  #     expect(x).to include 1
  #     expect(x).to include 1, 3
  #     expect(x).to contain_exactly(2, 3, 1) 

  #     expect{ 1 / 0 }.to raise_error ZeroDivisionError
  #   end

  #   it '夏が約25%になっていること' do
  #     results = Mountain.generate_results(10000)
  #     summer_count = results.count(&:summer?)
  #     probability = summer_count.to_f / 10000 * 100
  #     expect(probability).to be_within(1.0).of(25.0)
  #   end
  # end

  describe '#factory_girl_memo' do
    let(:new_mountain) { FG.attributes_for(:mountain) }
    it 'factory_girl test' do
      mountain = new_mountain
      expect(mountain[:age]).to eq 16
    end
  end
end
