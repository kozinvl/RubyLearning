WORDS = 'one two three four five six seven'

result_action = WORDS.split(' ').select {|element| !element.start_with?('f')}
                    .map {|element| element.reverse}
                    .map(&:capitalize)
                    .map(&:reverse)
                    .join(' ')

p result_action
