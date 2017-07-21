#!/usr/bin/env ruby

if ARGV.empty?
    puts "A post title is required. Bye.."
    exit
end

# define_variables
_post=ARGV[0]
_date=`date +'%Y-%m-%d'`
_datetime=`date +'%Y-%m-%d %H:%M:%S'`
_title="#{_date}-#{_post}.md"
_cwd=`pwd`
_post_file="#{_cwd}/#{_title}"


# do not overwite (if _post_file exists, exit

open("#{_post_file}", 'a') { |f|
  f << "--- \n"
  f << "layout: post \n"
  f << "title: #{ARGV[0]} \n"
  f << "date: #{_datetime} \n"
  f << "--- \n"
}

puts "Jekyll post created successfully"

if ENV[EDITOR].empty?
puts "EDITOR variable not set."
end

puts "Do you want to edit new script? [y/n]:"
input = gets.chomp
if input == 'n' || input == 'N'
exit

elsif input == 'y' || inupt == 'Y'
# then_open_file_with_EDITOR
end
