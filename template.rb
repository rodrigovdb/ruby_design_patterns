# encoding: utf-8

class ReportTemplate
  def print
    print_header
    print_content
    print_footer
  end

  def print_header
    raise_fail
  end

  def print_content
    raise_fail
  end

  def print_footer
    raise_fail
  end

  def raise_fail
    fail 'Este método não foi implementado'
  end
end

class ReportHtml < ReportTemplate
  def print_header
    puts <<EOF
<html>
  <head>
    <title>MyClass < Template</title>
  </head>
  <body>
EOF
  end

  def print_content
    puts '<h1>Report Data<h1>'
  end

  def print_footer
    puts <<EOF
  </body>
</html>
EOF
  end
end

class ReportText < ReportTemplate
  def print_header
    puts '******'
  end

  def print_content
    puts 'Report Data'
  end

  def print_footer
    puts '******'
  end
end

h = ReportHtml.new
t = ReportText.new

puts "\n\nHTML Report\n\n"
puts h.print

puts "\n\nText Report\n\n"
puts t.print

