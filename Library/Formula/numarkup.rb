require 'formula'

class Numarkup <Formula
  url 'http://programming.nu/releases/NuMarkup-0.9.0.tgz'
  homepage 'http://programming.nu'
  md5 '127b6dce0c3c29b661172cc9853b8a51'

  depends_on 'nu'

  def install
    system "nuke"
    system "rm -rf /Library/Frameworks/NuMarkup.framework"
    system "cp -rp NuMarkup.framework /Library/Frameworks"
    system "mkdir -p #{prefix}/share/numarkup"
    system "cp -rp test #{prefix}/share/numarkup"
  end

  def uninstall
    system "rm -rf /Library/Frameworks/NuMarkup.framework"
  end
end
