json.devices @devices do|device| 
json.partial! 'device',device:device 
end