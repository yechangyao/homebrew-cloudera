class ClouderaDirectorServer < Formula
  desc "Cloudera Director Server which enbales you to deploy CDH cluster on cloud"
  homepage "https://www.cloudera.com/products/product-components/cloudera-director.html"
  url "http://archive.cloudera.com/director6/6.1.0/tars/cloudera-director-server-6.1.0.tar.gz"
  sha256 "64571c30507dfa1ac70a669325234701fd0ea5100dbd37ff7fa20fc175e5caa3"

  depends_on "cloudera-director-client" => :recommended

  def install
    libexec.install Dir["bin", "lib", "plugins", "etc"]
    bin.install_symlink "#{libexec}/bin/start" => "cloudera-director-server-start"
    bin.install_symlink "#{libexec}/bin/stop" => "cloudera-director-server-stop"
    bin.install_symlink "#{libexec}/bin/cloudera-director-server" => "cloudera-director-server"
  end

  def caveats
    msg = <<~EOF
  You can start cloudera director server with cloudera-director-server-start command. If you want to stop it, use cloudera-director-server-stop.
  EOF
  end

  test do
    #system "false"
  end
end
