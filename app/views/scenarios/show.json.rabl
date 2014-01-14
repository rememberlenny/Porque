object @scenario

attributes :name, :description, :image

child :questions do
  attributes :media, :questionprompt

  child :answers do
    attributes :answeroption, :response
  end
end
