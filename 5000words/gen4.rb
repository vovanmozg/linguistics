lines = IO.readlines('./5000-words.txt').map!(&:chop);



IO.write(
	'./oneslog.txt',
	lines.select { |line| line.length > 4 && line.gsub(/[bcdfghjklmnpqrstvwxz]/, '').length == 1 }.join("\n")
)