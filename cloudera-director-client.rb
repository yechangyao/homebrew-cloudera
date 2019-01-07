class ClouderaDirectorClient < Formula
  desc "Cloudera Director Client"
  homepage "https://www.cloudera.com/products/product-components/cloudera-director.html"
  url "http://archive.cloudera.com/director6/6.1.0/tars/cloudera-director-client-6.1.0.tar.gz"
  sha256 "8b1f48b6b4b2955b5c677aab74a16b7b079048c095538c33695835e42f8c6c71"

  def install
    libexec.install Dir["bin", "lib", "plugins", "etc"]
    bin.install_symlink "#{libexec}/bin/cloudera-director" => "cloudera-director"
  end

  test do
    #system "false"
  end
end
