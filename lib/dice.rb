class Dice
  def self.roll(number_of_dice: 1, number_of_faces: 6)
    (1..number_of_dice).map do
      roll_a_die(number_of_faces: number_of_faces)
    end
  end

  def self.roll_a_die(number_of_faces:)
    rand(number_of_faces) + 1
  end
end
