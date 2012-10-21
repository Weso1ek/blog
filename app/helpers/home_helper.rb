module HomeHelper
  def truncate_words(text, length = 30, end_string = '...')
    words = text.split()
    words[0..(length-1)].join(' ') + (words.length > length ? end_string : '')
  end
end
