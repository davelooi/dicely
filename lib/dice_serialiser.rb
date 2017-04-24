class DiceSerialiser
  def self.call(results)
    {
      dice: results.map { |result| Hash[:value, result] }
    }
  end
end
