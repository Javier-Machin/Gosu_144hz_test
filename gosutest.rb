require 'gosu'

class GosuTestThing < Gosu::Window                                 #set update_interval: 16.66666 for 60 fps
  def initialize width=800, height=600, options = {fullscreen: false, update_interval: 6.9444444} 
    super
    self.caption = "Hello world!"
             #object,method("text", line height, options ={font:"font", width: 000, align: :center}
    @image = Gosu::Image.from_text("yo waddup", 80, options = {font:"Impact",width: 600, align: :center})
    @orange = Gosu::Color.argb(255, 255, 135, 0)
    @red = Gosu::Color.argb(255, 255, 0, 0)
  end
  
  def button_down id     #Kbkeyname
    close if id == Gosu::KbEscape
  end

  def update
    @x = self.width/2 - @image.width/2 + Math.sin(Time.now.to_f)*100
    @y = self.height/2 - @image.height/2 
  end

  def draw      #x, y, z, scale_x, scale_y, color
    @image.draw @x, @y, 0, 1, 1, @red
  end
end

GosuTestThing.new.show