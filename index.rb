require "espeak"

speech = ESpeak::Speech.new("Te amo Raudy", voice: "es", pitch: 180, speed: 100, capital: 170 )
speech.speak
speech.save("hello-de.mp3") 
