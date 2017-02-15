class BitmapEditor
PIXELS = 125
HELP=   "? - Help
              I M N - Create a new M x N image with all pixels coloured white (O).
              C - Clears the table, setting all pixels to white (O).
              L X Y C - Colours the pixel (X,Y) with colour C.
              V X Y1 Y2 C - Draw a vertical segment of colour C in column X between rows Y1 and Y2 (inclusive).
              H X1 X2 Y C - Draw a horizontal segment of colour C in row Y between columns X1 and X2 (inclusive).
              S - Show the contents of the current image
              X - Terminate the session"

  def initialize
    @canvas = []
    @input = nil
  end

  def return_canvas
    @canvas
  end

  def run
    @running = true
    puts 'type ? for help'
    while @running
      print '>'
      @input = gets.upcase.split(' ')
      case @input[0]
        when "I"
          canvas(x,y)
        when "L"
          colour(x,y,c)
      when "V"
          draw_v(x,y,z,c)
      when "H"
          draw_h(x,y,z,c)
        when "C"
          clear
        when "S"
          show
        when "?"
          show_help
        when "X"
          exit_console
        else
          puts 'unrecognised command :('
      end
    end
  end

    def canvas(m,n)
      (1..n).each {@canvas<<('O' * m)}
    end

    def show
      i = 0
      (1..@canvas.count).each{
      puts @canvas[i].to_s; i+=1 }
    end

    def colour(m,n,paint)
    column = @canvas
    column[m-1][n-1] = paint
    reset
    @canvas = column
    end

    # def draw_v(m,n1,n2,paint)
    # end

    def draw_h(m,n1,n2,paint)
    column = @canvas
    column[m-1][*n1-1..n2-1] = (paint * (n2-n1+1))
    reset
   @canvas = column
    end

    def clear
    m = @canvas.count
    n = @canvas[0].length
    @canvas = []
    (1..n).each {@canvas <<("O" * m)}
    end

   private
    def exit_console
      puts 'goodbye!'
      @running = false
    end

      def x
        @input[1].to_i
      end

      def y
        @input[2].to_i
      end

      def c
        @input[3] =~ /[a-zA-Z]/  ? @input[3]: @input[4]
      end

      def z 
        @input[3].to_i
      end

    def show_help
      puts HELP
    end

    def reset
    	@canvas = []
    end

end
