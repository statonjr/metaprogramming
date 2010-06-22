class String
  def to_alphanumeric
    gsub /[^\w\s]/, ''
  end
end