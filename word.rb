# write your solution here
require 'byebug'
require 'json'
require 'pp'


def pig_latin(word)
	chars = word.downcase.split(//)
	vowels = ['a', 'e', 'i', 'o', 'u']
	vowels.select do |check_vowel|
		unless check_vowel != chars[0]
			chars.insert(chars.length , "way")
			return chars.join
		end
	end

	vowels.select do |check_vowel|
		unless check_vowel == chars[0]
			added_letter = ""
			added_letter.insert(added_letter.length, chars[0])
			chars.shift

			unless check_vowel != chars[0]
				chars.insert(chars.length, added_letter + "ay")
				return chars.join
			else
				added_letter.insert(added_letter.length, chars[0])
				chars.shift
				chars.insert(chars.length, added_letter + "ay")
				return chars.join
			end
		end
	end
end

puts pig_latin("happy")

