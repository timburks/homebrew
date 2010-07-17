# Links any Frameworks (.framework) found in installed prefixes to /Library/Frameworks
require "formula"

installpath = File.expand_path("/Library/Frameworks")

unless File.exist? installpath
  opoo installpath+" does not exist, stopping."
  exit 1
end

HOMEBREW_CELLAR.subdirs.each do |keg|
  next unless keg.subdirs
  name = keg.basename.to_s

  if ((f = Formula.factory(name)).installed? rescue false)
    Dir["#{f.prefix}/*.framework"].each do |p|
      puts "Linking #{p}"
      frameworkname = File.basename(p)
      target = installpath+"/"+frameworkname
      if File.exist? target
        if File.symlink? target
          system "rm", target
        else
          onoe "#{target} already exists, skipping."
        end
      end
      system "ln", "-s", p, installpath
    end
  end
end
