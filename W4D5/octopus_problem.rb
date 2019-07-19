
#1) O(n^2)
def sluggish_octopus   
    longest_fish = ""
    (0...fish.length-1).each do |i|
        (i+1...fish.length).each do |j|
            if fish[i].length < fish[j].length && longest_fish.length < fish[j].length
                longest_fish = fish[j]
            end
        end
    end

    longest_fish
end

def dominant_octopus(fish)
    fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

    return fish if fish.length <= 1

    mid_fish = fish.length/2
    left_fishes = fish[0...mid_fish]
    right_fishes = fish[mid_fish..-1]
    merge(dominant_octopus(left_fishes), dominant_octopus(right_fishes))
    
end

def merge(left, right)

    sorted = []
    
    until left.empty? || right.empty?   
        if left[0].length < right.length[0]
            sorted << left.shift
        else
            sorted << right.shift
        end
    end

    sorted + left + right
end

def clever_octopus
    fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
    long = fish[0]
    fish.each do |f|
        if f.length > long.length
            long = f
        end
    end
    long
end

# p clever_octopus


def slow_dance(target)
    tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
    tiles_array.each_with_index do |dir, i|
        return i if dir == target
    end
    nil
end

def constant_dance(target)
    tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
    tiles_array.index(target)
end