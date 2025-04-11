class Disscli < Formula
  include Language::Python::Virtualenv

  desc "A Discord CLI tool for sending messages via webhooks"
  homepage "https://github.com/Trevogre/discordcli"
  url "https://github.com/Trevogre/discordcli/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "1efb65f43a6d072cc379c425761b8c8500469ef7c9cf707214b45b05933a3c38"
  license "MIT"

  depends_on "python@3.13"

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7a/50/7fd50a27caa0652cd4caf224aa87741ea41d3265ad13f010886167cfcc79/urllib3-2.2.1.tar.gz"
    sha256 "d0570876c61ab9e520d776c38acbbb5b05a776d3f9ff98a5c8fd5162a444cf19"
  end

  def install
    virtualenv_install_with_resources using: "python@3.13"
  end

  test do
    system bin/"diss", "--help"
  end
end 