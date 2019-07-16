class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new([:stone,:stone,:stone,:stone]) }
    @cups[6] = []
    @cups[13] = []
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos > 13
      raise "Invalid starting cup"
    end
    
    if @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
    true
  end

  def make_move(start_pos, current_player_name)
    #If the player ends in their own cup, the return value should be :prompt, 
    #the turn is not over yet
    #If the current player ends on a cup that already has stones in it, 
    #the return value should be the ending_cup_idx. turn continues
    #If the current player ends on an empty cup (that now has one stone in it),
    #the return value should be :switch. next players turn.
    i = 0
    until @cups[start_pos].empty?
      i += 1
      next_cup_pos = ((start_pos + i)%14)
      if next_cup_pos == 6 && !current_player_name == @name1
        next
      elsif next_cup_pos == 13 && !current_player_name == @name2
        next
      else
        @cups[next_cup_pos] << @cups[start_pos].shift
      end
    end

    if current_player_name == @name1 && @cups[next_cup_pos] == @cups[6]
      return :prompt
    elsif current_player_name == @name2 && @cups[next_cup_pos] == @cup[13]
      return :prompt
    elsif @cups[next_cup_pos].count > 1
      return next_cup_pos
    else
      return :switch
    end
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
