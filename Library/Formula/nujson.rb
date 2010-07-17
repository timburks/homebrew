require 'formula'

class Nujson <Formula
  url 'http://programming.nu/releases/NuJSON-0.9.0.tgz'
  homepage 'http://programming.nu'
  md5 'c8287d2d3bc96a4ed75fe6872b92bd2e'

  depends_on 'nu'

  def install
    system "nuke"
    system "cp -rp NuJSON.framework #{prefix}"
    system "mkdir -p #{prefix}/share/nujson"
    system "cp -rp test #{prefix}/share/nujson"
  end
end
