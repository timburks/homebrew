require 'formula'

class Nuhttphelpers <Formula
  url 'http://programming.nu/releases/NuHTTPHelpers-0.9.0.tgz'
  homepage 'http://programming.nu'
  md5 '13941c735ff80512dd92a88bbddd65c5'

  depends_on 'nu'

  def install
    system "nuke"
    system "mkdir -p #{prefix}"
    system "cp -rp NuHTTPHelpers.framework #{prefix}"
  end
end
