count_to = 1000
exp_to = 3

(0..count_to).each do |i|
    spawn do
        (0..exp_to).each do |e|
            spawn do
                puts "#{i} ** #{e} = #{i**e}"
            end
        end
    end
end

Fiber.yield

puts "done"
