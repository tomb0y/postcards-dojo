class Postcard
  attr_reader :name, :sender

  PADDING_SIZE = 3

  def initialize(name, sender)
    @name = name
    @sender = sender
  end

  def content
    border +
    blank_line +
    miss_you_line +
    get_well_line +
    blank_line +
    signature_line +
    blank_line +
    border
  end

  private

  def miss_you
    "We miss you, #{name}!"
  end

  def signature
    "-- #{sender}"
  end

  def get_well_soon
    'Get well soon!'
  end

  def miss_you_line
    bordered_line(miss_you)
  end

  def get_well_line
    bordered_line(get_well_soon)
  end

  def blank_line
    bordered_line(' ')
  end

  def signature_line
    bordered_line(signature)
  end

  def border
    line('+', border_padding, '-' * inner_content_length)
  end

  def bordered_line(content)
    line('|', line_padding, justified_content(content))
  end

  def line(border_char, padding, content)
    border_char + padding + content + padding + border_char + "\n"
  end

  def border_padding
    '-' * PADDING_SIZE
  end

  def line_padding
    ' ' * PADDING_SIZE
  end

  def justified_content(content)
    content.ljust(inner_content_length, ' ')
  end

  def inner_content_length
    [miss_you.length, signature.length].max
  end
end
