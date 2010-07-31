def executable(executable)
  if  Capistrano && 
      Capistrano.configuration && 
      Capistrano.configuration.executables &&
      Capistrano.configuration.executables[executable.to_s]
    return Capistrano.configuration.executables[executable.to_s]
  else
    return "(which '#{executable.to_s}')"
  end
end