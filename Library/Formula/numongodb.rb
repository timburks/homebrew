require 'formula'

class Numongodb <Formula
  url 'http://programming.nu/releases/NuMongoDB-0.9.0.tgz'
  homepage 'http://programming.nu'
  md5 '6a587a3da97986a1063463ff8412db73'

  depends_on 'nu'

  def install
    system "nuke"
    system "rm -rf /Library/Frameworks/NuMongoDB.framework"
    system "cp -rp NuMongoDB.framework /Library/Frameworks"
    system "mkdir -p #{prefix}/share/numongodb"
    system "cp -rp test #{prefix}/share/numongodb"
  end

  def uninstall
    system "rm -rf /Library/Frameworks/NuMongoDB.framework"
  end
end
