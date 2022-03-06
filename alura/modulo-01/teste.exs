defmodule MeuModulo do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  alias MeuModulo.Math, as: MyMath

  def ola_mundo do
    inspect(MyMath.soma(2, 3))
  end

  def verifica_numero(param) do
    require Integer

    inspect("o numero #{param} é par? #%{Integer.is_even(param)}")
  end

  def inspect(param) do
    puts("Iniciando inspeção")
    puts(param)
    puts("Finalizando inspeção")
  end

end
