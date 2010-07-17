require 'formula'

class Nu <Formula
  url 'http://programming.nu/releases/Nu-0.9.0.tgz'
  homepage 'http://programming.nu'
  md5 'bdd62acf03f09258c8f0ccbb0ba13896'

  def install
    system "make"
    system "./mininush tools/nuke"
    system "mkdir -p #{prefix}/bin"
    system "cp nush #{prefix}/bin"
    system "cp tools/* #{prefix}/bin"
    system "cp -rp Nu.framework /Library/Frameworks"
  end
end
