def hello_world(val)
  'HelloWorld' * val
end

def fizz_buzz(val)
  if val % 15 == 0
    'FizzBuzz'
  elsif val % 5 == 0
    'Buzz'
  elsif val % 3 == 0
    'Fizz'
  else
    val
  end
end

def prime(val)
  primes = [2]
  return primes[val-1] if val == 1
  i = 3
  loop do
    is_prime = true
    3.step(Math.sqrt(i), 2) do |j|
      if i % j == 0
        is_prime = false
        break
      end
    end
    if is_prime
      primes << i
      if primes.size == val
        return i
      end
    end
    i += 2
  end
end

def fibonacci(val)
  list = [1, 1]
  return list[val-1] if val <= 2
  i = 2
  loop do
    list << list[i-1] + list[i-2]
    return list[i] if val == i + 1
    i += 1
  end
end

while str = STDIN.gets
  key, value = str.chomp.split ','
  case key
  when 'HelloWorld'
    puts hello_world(value.to_i)
  when 'FizzBuzz'
    puts fizz_buzz(value.to_i)
  when 'Prime'
    puts prime(value.to_i)
  when 'Fibonacci'
    puts fibonacci(value.to_i)
  end
end
