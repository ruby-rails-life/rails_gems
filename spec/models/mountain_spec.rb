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
  describe '#greet' do
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

    let(:mountain) { Mountain.new(name: 'たろう', age: age) }
    subject { mountain.greet }

    shared_examples '子どものあいさつ' do
      it { is_expected.to eq 'ぼくはたろうだよ。' }
    end
    context '0歳の場合' do
      let(:age) { 0 }
      it_behaves_like '子どものあいさつ'
    end
    context '12歳の場合' do
      let(:age) { 12 }
      it_behaves_like '子どものあいさつ'
    end

    shared_examples '大人のあいさつ' do
      it { is_expected.to eq '僕はたろうです。' }
    end
    context '13歳の場合' do
      let(:age) { 13 }
      it_behaves_like '大人のあいさつ'
    end
    context '100歳の場合' do
      let(:age) { 100 }
      it_behaves_like '大人のあいさつ'
    end

  end
end
