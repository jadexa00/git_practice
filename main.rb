
class Git 
  def intitialize
    menu
  end   

  def menu 
    puts "1) Enter git command"
    puts "2) Exit"
    print "> "
    choice = gets.to_i
    case choice
    when 1 
      puts "Enter git command"
      print "> "
      puts_git(gets.strip)
      menu
    when 2
      Exit
    else
      puts "Invalid imput" 
      sleep(2)
      print `clear` 
      menu
  end
end  

  def puts_git(cmd)
    puts `git #{cmd} -h`
  end
end  

Git.new