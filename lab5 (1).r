renv::init() 
renv::install() 
renv::snapshot()

firstcar <- list(
  name="BMW",
  cost=500000,
  petrolengine=T,
  drive = T,
  signal = T
)

class(firstcar) <- "fauto"

attributes(firstcar)

firstcar

print.fauto <- function(auto){
  cat(auto$name, "\n")
  cat("Цена", auto$cost, "\n")
  cat("Машина на обычном двигателе?", auto$petrolengine, "\n")
  cat("I'm driving", auto$drive, "\n")
  cat("biiip-biiip!!", auto$signal, "\n")
}

methods(, "fauto")
print.fauto

secondcar <- list(
  name = "Acura",
  cost = 300000,
  dieselengine = T,
  drive = T,
  signal = T,
  color = "Green"
)
class(secondcar) <- "sauto"

class(secondcar) <- c("sauto", "fauto") 

secondcar

print.sauto <- function(auto){
  cat(auto$name, "\n")
  cat("Цена", auto$cost, "\n")
  cat("Машина на дизельном двигателе?", auto$diesel, "\n")
  cat("Цвет машины", auto$color, "\n")
  cat("I'm driving", auto$drive, "\n")
  cat("biiip-biiip!!", auto$signal, "\n")
}

methods(, "sauto")
print.sauto

thirdcar <- list(
  name = "Tesla",
  cost = 9000000,
  electricengine = T,
  color = "Green",
  drive = T,
  signal = T,
  mileage = 2000
  
)
class(thirdcar) <- "tauto"

class(thirdcar) <- c("tauto", "fauto") 

thirdcar

print.tauto <- function(auto){
  cat(auto$name, "\n")
  cat("Цена", auto$cost, "\n")
  cat("Машина на электро двигателе?", auto$electricengine, "\n")
  cat("Цвет машины", auto$color, "\n")
  cat("Пробег машины", auto$mileage, "\n")
  cat("I'm driving", auto$drive, "\n")
  cat("biiip-biiip!!", auto$signal, "\n")
}

methods(, "tauto")
print.tauto


carinfo <- function(){
  v1 <- readline("Информацию о какой машине вывести (BMW,Acura,Tesla)?: ")
  if(v1 == "1") print.fauto(firstcar) 
  if(v1 == "2") print.sauto(secondcar) 
  if(v1 == "3") print.tauto(thirdcar) 
}
carinfo()


