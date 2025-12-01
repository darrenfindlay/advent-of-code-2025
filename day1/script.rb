steps = File.read('input.txt').split
current, password = 50, 0
steps.each { |step|
  val = step[0] == 'R' ? step[1..].to_i : -step[1..].to_i
  current = (current + val) % 100
  password += 1 if current == 0
}
puts password
