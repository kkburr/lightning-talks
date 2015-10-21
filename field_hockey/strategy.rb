class Formatter
  def output_report(title)
    # hook method -- thing that changes
  end
end


class HTMLFormatter < Formatter
  def output_report(title)
    puts( '<head>')
    puts( '<title>#{title}</title>')
    puts( '</head>')
    # ...
  end
end


class PlainTextFormatter < Formatter
  def output_report(title)
    puts( '***** #{title} ******')
  end
end


class Report
  def initialize(formatter)
    @title = "BlaBlaBla"
    @formatter = formatter
  end

  def output_report
    @formatter.output_report(@title)
  end
end



Report.new(HTMLFormatter.new).output_report
# <head>
# <title>BlaBlaBla</title>
# </head>
