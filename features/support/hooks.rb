Before do |feature|

end

After do |feature|

end

Before do |scenario|

end

AfterStep do |step|
  if !$imgBase64.nil?
    obter_evidencia
    embed("data:image/gif;base64,#{$imgBase64}",'image/gif')
    $imgBase64.clear
  end
  $imgBase64 = nil
end


After do |scenario|
  if scenario.failed?
    $imgBase64 = nil
    obter_evidencia
    #screenshot_desktop
    embed("data:image/gif;base64,#{$imgBase64}",'image/gif')
  end
  $imgBase64 = nil
end

