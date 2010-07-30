def executable(executable)
  begin
    Capistrano.configuration.executables[executable.to_s]
  rescue 
    return "$(which '#{executable}')"
  end
end