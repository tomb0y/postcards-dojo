class Postcard
  attr_reader :name, :sender

  def initialize(name, sender)
    @name = name
    @sender = sender
  end

  def content
    miss_you = "We miss you, #{name}!"
    signature = "-- #{sender}"

    ljust_length = [miss_you.length, signature.length].max
    get_well_text = 'Get well soon!'.ljust(ljust_length, ' ')
    miss_you_text = miss_you.ljust(ljust_length, ' ')
    signature_text = signature.ljust(ljust_length, ' ')

    miss_you_line = "|   #{miss_you_text}   |\n"
    get_well_line = "|   #{get_well_text}   |\n"
    border = "+---#{'-'*ljust_length}---+\n"
    blank_line = "|   #{' '*ljust_length}   |\n"
    signature_line = "|   #{signature_text}   |\n"

    border + blank_line + miss_you_line + get_well_line + blank_line + signature_line + blank_line + border
  end
end
