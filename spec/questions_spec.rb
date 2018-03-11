require 'rspec'
require 'questions'

describe 'learning numbers :' do

  it 'round_up_number' do
    n = round_up_number 3.142
    expect(n).to eq 4
  end

  it 'round_down_number' do
    n = round_down_number 4.9
    expect(n).to eq 4
  end

  it 'make_numbers_negative' do
    a = make_numbers_negative 5
    b = make_numbers_negative -7

    expect(a).to eq -5
    expect(b).to eq -7
  end

end

describe 'learning hashes' do

  it 'swap_keys_and_values_in_a_hash' do
    n = swap_keys_and_values_in_a_hash( 'a' => 'b', 'c' => 'd' )
    expect(n).to eq('b' => 'a', 'd' => 'c')
  end

  it 'add_together_keys_and_values' do
    n = add_together_keys_and_values( 1 => 1, 2 => 2 )
    expect(n).to eq 6
  end

  it 'convert_array_to_a_hash' do
    n = convert_array_to_a_hash %w[a b c d]
    expect(n).to eq( 'a' => 'b', 'c' => 'd' )
  end

end

describe 'learning strings' do

    it 'remove_capital_letters_from_string' do
      n = remove_capital_letters_from_string 'Hello JohnDoe'
      expect(n).to eq 'ello ohnoe'
    end

    it 'get_first_half_of_string' do
      a = get_first_half_of_string 'banana'
      b = get_first_half_of_string 'apple'

      expect(a).to eq 'ban'
      expect(b).to eq 'app'
    end

    it 'turn_symbol_into_string' do
      n = turn_symbol_into_string :foobar
      expect(n).to eq 'foobar'
    end

    it 'get_domain_name_from_email_address' do
      n = get_domain_name_from_email_address 'onboarding@makersacademy.com'
      expect(n).to eq 'makersacademy'
    end

    it 'titleize_a_string' do
      n = titleize_a_string 'the lion the witch and the wardrobe'
      expect(n).to eq 'The Lion the Witch and the Wardrobe'
    end

    it 'check_a_string_for_special_characters' do
      a = check_a_string_for_special_characters 'ABCdef123'
      b = check_a_string_for_special_characters 'ABC@def123!'

      expect(a).to be false
      expect(b).to be true
    end
end

describe 'learning about arrays' do

  it 'select_elements_starting_with_a' do
    n = select_elements_starting_with_a %w[bananas apples pears avocados]
    expect(n).to eq %w[apples avocados]
  end

  it 'select_elements_starting_with_vowel' do
    n = select_elements_starting_with_vowel %w[john david omar fred idriss angela]
    expect(n).to eq %[omar idriss angela']
  end

  it 'remove_nils_from_array' do
    n = remove_nils_from_array ['a', 'b', nil, nil, false, 'c', nil]
    expect(n).to eq ['a', 'b', false, 'c']
  end

  it 'remove_nils_and_false_from_array' do
    n = remove_nils_and_false_from_array ['a', 'b', nil, nil, false, 'c', nil]
    expect(n).to eq %w[a b c]
  end

  it 'reverse_every_element_in_array' do
    n = reverse_every_element_in_array %w[dog monkey elephant]
    expect(n).to eq %w[god yeknom tnahpele]
  end

  it 'all_elements_except_first_3' do
    n = all_elements_except_first_3 [1, 2, 3, 4, 5, 6, 7]
    expect(n).to eq [4, 5, 6, 7]
  end

  it 'add_element_to_beginning_of_array' do
    n = add_element_to_beginning_of_array [2, 3, 4, 5], 1
    expect(n).to eq [1, 2, 3, 4, 5]
  end

  it 'shortest_word_in_array' do
    n = shortest_word_in_array %w[here is a bunch of words of different lengths]
    expect(n).to eq 'a'
  end

  it 'longest_word_in_array' do
    n = longest_word_in_array %w[here is a bunch of words of different lengths]
    expect(n).to eq 'different'
  end

  it 'total_of_array' do
    n = total_of_array [1, 3, 5, 6, 2, 8]
    expect(n).to eq 25
  end

  it 'average_of_array' do
    n = average_of_array [10, 15, 25]
    expect(n).to eq 17
  end

  it 'get_elements_until_greater_than_five' do
    n = get_elements_until_greater_than_five [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
    expect(n).to eq [1, 3, 5, 4, 1, 2]
  end

  it 'get_all_letters_in_array_of_words' do
    n = get_all_letters_in_array_of_words %w[cat dog fish]
    expect(n).to eq %w[a c d f g h i o s t]
  end
end

describe 'bonus questions' do
  it 'format_date_nicely' do
    n = format_date_nicely Time.new(2013, 10, 31)
    expect(n).to eq '31/10/2013'
  end


  it 'get_upper_limit_of' do
    n = get_upper_limit_of 1..20
    expect(n).to eq 20
  end

  it 'is_a_3_dot_range?' do
    a = is_a_3_dot_range? 1..20
    b = is_a_3_dot_range? 1...20

    expect(a).to be false
    expect(b).to be true
  end

  it 'square_root_of' do
    a = square_root_of 9
    b = square_root_of 3
    expect(a).to eq 3.0
    expect(b).to eq 1.7320508075688772
  end

  it 'call_method_from_string' do
    # expect { call_method_from_string('foobar') }.to raise_error(NameError)
    a = call_method_from_string('Array.new(5, 0)')
    expect(a).to eq [0, 0, 0, 0, 0]
  end

  it 'is_a_2018_bank_holiday?' do
    a = is_a_2018_bank_holiday?(Time.new(2018, 8, 27))
    b = is_a_2018_bank_holiday?(Time.new(2018, 8, 26))

    expect(a).to be true
    expect(b).to be false
  end

  it 'your_birthday_is_on_a_friday_in_the_year' do
    n = your_birthday_is_on_a_friday_in_the_year(Time.new(2018, 1, 1))
    expect(n).to eq 2020
  end

  it 'word_count_a_file' do
    n = word_count_a_file 'data/lorem.txt'
    expect(n).to eq 70
  end

  it 'count_words_of_each_length_in_a_file' do
    n = count_words_of_each_length_in_a_file('data/lorem.txt') || []
    expect(Hash[n.sort]).to eq( 1 => 1, 2 => 5, 3 => 7, 4 => 12, 5 => 14, 6 => 4, 7 => 8, 8 => 6, 9 => 6, 10 => 2, 11 => 2, 12 => 3 )
  end
end
