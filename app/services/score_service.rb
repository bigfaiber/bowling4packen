class ScoreService
attr_accessor :frames

  def initialize(rolls)                 # inicializamos la clase con la secuencia de frames que vamos a evaluar.
    @frames = []
    @rolls = rolls.split('')
    rolls_to_frames(@rolls)             # llamamos el método de conversión apenas se inicializa la clase.
  end

  def rolls_to_frames(rolls)            # Metodo para convertir los símbolos a un array de números para calcular el score con mayor facilidad.
    rolls.each_with_index do |r,i|
      if r == 'X'
        @frames[i] = 10
      elsif r == '/'
        @frames[i] = 10 - rolls[i-1].to_i
      elsif r == '-'
        @frames[i] = 0
      else
        @frames[i] = r.to_i
      end
    end
  end

  def scoring                           # Método que se encarga de calcular el score de cada juego.
    @pos = 0
    score = 0
    (1..10).each do |f|
      if is_strike?
        score += 10 + @frames[@pos+1] + @frames[@pos+2]
        @pos += 1
      elsif is_spare?
        score += 10 + @frames[@pos+2]
        @pos += 2
      else
        score += @frames[@pos] + @frames[@pos+1]
        @pos += 2
      end
    end
    return score
  end

  def is_strike?                            # Método que nos dice si en la posición actual hay strike(chuza)
    @frames[@pos] == 10
  end

  def is_spare?
    @frames[@pos] + @frames[@pos+1] == 10   # Método que nos dice si en el próximo tiro hay spare (media chuza)
  end

end