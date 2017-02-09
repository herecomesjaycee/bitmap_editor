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
  end

  def return_canvas
    @canvas
  end

  def run
    @running = true
    puts 'type ? for help'
    while @running
      print '>'
      input = gets.upcase.split(' ')
      raise('125 pixels for both height or width') if over_pixels(input)
      case
        when input[0].match(/I/)
          canvas(x,y)
        when input[0].match(/L/)
          colour(x-1,y-1,c)
        when input[0] =='S'
          show
        when input[0] =='?'
          show_help
        when input[0] == 'X'
          exit_console
        else
          puts 'unrecognised command :('
      end
    end
  end

    def canvas(m,n)
      column = 'O' * m
      (1..n).each {@canvas<<column}
    end

    def show
      i = 0
      (1..@canvas.count).each{
      puts @canvas[i].to_s; i+=1 }
    end

    def colour(x,y,paint)
      @canvas[x-1][y-1] = paint
    end
    
   private
    def exit_console
      puts 'goodbye!'
      @running = false
    end

      def over_pixels(input)
        x >PIXELS || y > PIXELS
      end

      def x
        input[1].to_i
      end

      def y
        input[2].to_i
      end

      def c
        input[3].to_s
      end

    def show_help
      puts HELP
    end

end
