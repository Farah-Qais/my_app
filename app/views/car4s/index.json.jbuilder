json.car4s @car4s do|car4| 
json.partial! 'car4',car4:car4 

json.book2s @book2s do|book2|
json.partial! 'book2', book2:book2 

json.devices @devices do|device|  
json.partial! 'device', device:device 
end  
end
end