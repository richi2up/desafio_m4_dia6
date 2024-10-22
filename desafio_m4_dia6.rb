def calcular_imc(peso, altura)
  imc = peso / (altura ** 2)
  return imc
end

def clasificar_imc(imc)
  case imc
  when 0..18.4
    "Bajo peso"
  when 18.5..24.9
    "Normal"
  when 25.0..29.9
    "Sobrepeso"
  when 30.0..34.9
    "Obesidad grado I (Moderado)"
  when 35.0..39.9
    "Obesidad grado II (Severo)"
  else
    "Obesidad grado III (Muy severo)"
  end
end

def calcular_nuevo_salario(salario_actual, porcentaje_aumento)
  nuevo_salario = salario_actual + (salario_actual * (porcentaje_aumento / 100.0))
  return nuevo_salario
end



def adivina_el_numero
  numero_secreto = rand(1..10)  # Elige un número aleatorio entre 1 y 10
  intentos_maximos = 10         # Límite de intentos
  historial = []

  for intentos in 1..intentos_maximos
    #puts "Adivina el número (entre 1 y 10):"
    numero_usuario = gets.chomp.to_i
    historial << numero_usuario

    if numero_usuario == numero_secreto
      puts "¡Correcto! Adivinaste en #{intentos} intentos."
      break
    elsif numero_usuario > numero_secreto
      puts "Incorrecto, el número secreto es menor."
    else
      puts "Incorrecto, el número secreto es mayor."
    end

    # Si es el último intento y aún no adivinó
    if intentos == intentos_maximos
      puts "Lo siento, superaste el límite de intentos. El número era #{numero_secreto}."
    end
  end

  puts "Intentos: #{historial.join(", ")}"
end













def #empieza menu
  menu
  puts ""
  puts "elija las una de las 3 opciones:"
  puts  "1 Calcular el IMC."
  puts  "2 Calcular Salario."
  puts  "3 Adivina el Numero."

 opcion_usuario = gets.chomp.to_i
  if opcion_usuario == 1
      puts ""
      puts "Elegiste Opcion 1 CALCULO IMC"
      puts ""
      puts "Ingrese su peso en kg:"
      peso = gets.chomp.to_f
      puts ""
      puts "Ingrese su altura en metros:"
      puts ""
      altura = gets.chomp.to_f
      imc = calcular_imc(peso, altura).round(2)
      resultado = clasificar_imc(imc)
      puts "El IMC es #{imc}, lo que corresponde a: #{resultado}"
      

      elsif opcion_usuario == 2
          puts ""
          puts "Elegiste Opcion 2"
          puts ""
          puts "Ingrese su salario actual:"
          salario = gets.chomp.to_i
          puts ""
          puts "Ingrese el porcentaje de aumento:"
           incremento = gets.chomp.to_i
           nuevo_salario = calcular_nuevo_salario(salario, incremento)
          puts "Su nuevo salario es: #{nuevo_salario.round(0)}"


      elsif opcion_usuario == 3
          puts ""
          puts "Elegiste Opcion 3, Adivina el Numero del 1 al 10. Tienes 10 intentos"
          puts ""
          adivina_el_numero
          
           
   
      # opciones menu recordar las 3 opciones
      if opcion_usuario > 3 
          puts "debe elegir opciones del 1 al 3."
          
      end
      
  end

 
end

menu