task :run_tests, [:application, :environment, :browser, :tags, :without_tags, :feature, :scenario] do |t,args|

  cucumberStatement = "cucumber --profile=" + args[:application] + '_html ENVIRONMENT=' + args[:environment] + ' DRIVER=' + args[:browser]
  if (!args[:tags].nil? && !args[:tags].empty?)
    splitTags = args[:tags].split ' '
    splitTags.each do |singleTag|
      cucumberStatement += ' --tags @' + singleTag
    end
  elsif (!args[:feature].nil? && !args[:feature].empty?)
    cucumberStatement += ' features/' + args[:scenario] + '"'
  elsif (!args[:scenario].nil? && !args[:scenario].empty?)
    cucumberStatement += ' features --name "' + args[:scenario] + '"'
  end
  if (!args[:without_tags].nil? && !args[:without_tags].empty?)
    splitTags = args[:without_tags].split ' '
    splitTags.each do |singleTag|
      cucumberStatement += ' --tags ~@' + singleTag
    end
  end
  sh(cucumberStatement) do |success, _exit_code|
    @success &= success
  end
end