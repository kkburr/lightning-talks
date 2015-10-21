class Report
  def initialize
    @title = "BlaBlaBla"
  end

  def output_report
    # thing that stays the same
    output_head
    # ...
  end

  def output_head
    # hook method -- thing that changes
  end
end


class HTMLReport < Report
  def output_head
    puts( '<head>')
    puts( '<title>#{@title}</title>')
    puts( '</head>')
  end
  # ....
end


class PlainTextReport < Report
  def output_head
    puts( '***** #{@title} ******')
  end
  # ...
end



PlainTextReport.new.output_report
# ***** BlaBlaBla ******

HTMLReport.new.output_report
# <head>
# <title>BlaBlaBla</title>
# </head>
