def title_case(title, minor_words='')
  return '' if title == ''
  minor_words_array = minor_words.split(' ').map { |word| word.downcase  }

  answer = title.split(' ').map { |word|
    word.downcase!
    if minor_words_array.include?(word.downcase)
      word
    else
      word.capitalize
    end
  }

  answer[0].capitalize!
  return answer.join(' ')
end
