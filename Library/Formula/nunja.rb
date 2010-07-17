require 'formula'

class Nunja <Formula
  url 'http://programming.nu/releases/Nunja-0.9.0.tgz'
  homepage 'http://programming.nu'
  md5 '4a64bf10d6cfefe2cda2581f26d59a7b'

  depends_on 'nu'
  depends_on 'libevent'
  depends_on 'nuhttphelpers'

  def install
    system "nuke"
    system "mkdir -p #{prefix}/bin"
    system "cp nunjad #{prefix}/bin"
    system "mkdir -p #{prefix}/share/nunja"
    system "cp -rp sample #{prefix}/share/nunja"
    system "cp -rp Nunja.framework #{prefix}"
  end
end
