require 'formula'

class Nukular <Formula
  url 'http://programming.nu/releases/Nukular-0.9.0.tgz'
  homepage 'http://programming.nu'
  md5 '0922d1d0e9b8e0121827d603c0515b88'

  depends_on 'Nu'
  depends_on 'Nunja'
  depends_on 'NuHTTPHelpers'
  depends_on 'NuJSON'
  depends_on 'NuMarkup'
  depends_on 'NuMongoDB'
  
  def install
  end

  def uninstall
  end
end
