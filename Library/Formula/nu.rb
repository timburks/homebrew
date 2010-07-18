require 'formula'

class Nu <Formula
  url 'http://programming.nu/releases/Nu-0.9.1.tgz'
  homepage 'http://programming.nu'
  md5 '0ca6c844f7c2f826db93f1f87d26205c'
 
  depends_on "pcre"

  def install
    system "make"
    system "./mininush tools/nuke"
    system "mkdir -p #{prefix}/bin"
    system "cp nush #{prefix}/bin"
    system "cp tools/* #{prefix}/bin"
    system "cp -rp Nu.framework #{prefix}"
    system "mkdir -p #{prefix}/share/nu"
    system "cp -rp test #{prefix}/share/nu"
  end
end
