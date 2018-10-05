class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){ Array.new }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, idx|
      if idx == 6 || idx == 11
        next
      else
        i = 0
        until i == 5
          cup << :stone
          i += 1
        end
      end
    end
    @cups
  end

  def valid_move?(start_pos)
     if start_pos > 14
       raise 'Invalid starting cup'
     elsif start_pos == 0
       raise 'Starting cup is empty'
     end
  end

  def make_move(start_pos, current_player_name)
    (start_pos + 1)

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end