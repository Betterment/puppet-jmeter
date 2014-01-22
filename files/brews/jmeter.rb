require 'formula'

class Jmeter < Formula
  homepage 'http://jmeter.apache.org/'
  url 'http://www.apache.org/dyn/closer.cgi?path=jmeter/binaries/apache-jmeter-2.11.tgz'
  sha1 '0f62c5173fc0bd46f4fe4e850ca8906e612fdaf9'
  version '2.9-boxen1'

  def install
    # Remove windows files
    rm_f Dir["bin/*.bat"]
    prefix.install_metafiles
    libexec.install Dir['*']
    bin.write_exec_script libexec/'bin/jmeter'
  end
end
