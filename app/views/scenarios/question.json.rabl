object @scenario

attribute :name, :description, :image

child :questions do
  attributes :questionprompt, :media

  child :answers do
    attributes :answeroption
  end
end

