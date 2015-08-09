class Operations
  def self.sum(a, b)
    a + b
  end

  def self.sub(a, b)
    a - b
  end

  def self.mult(a, b)
    return 0 if a.zero? or b.zero?
    a * b
  end

  def self.div(a, b)
    return 0 if a.zero?
    raise "can't divide by zero" if b.zero?
    a / b
  end
end
