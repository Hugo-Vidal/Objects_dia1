products_list = []
data = []
File.open('catalogo.txt', 'r') {|file| data = file.readlines}

data.each do |prod|
    ls = prod.split(', ')
    products_list.push(ls[0], ls[1], ls[2], ls[3], "\n")
end

print products_list

File.write('output.txt', products_list.join(','))

