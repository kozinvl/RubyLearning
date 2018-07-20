WORDS = 'one two three four five six seven'
#You must return string like this 'onE twO threE siX seveN'

result_action = WORDS.split(' ').select {|element| !element.start_with?('f')}
                    .map {|element| element.reverse}
                    .map(&:capitalize)
                    .map(&:reverse)
                    .join(' ')

p result_action
