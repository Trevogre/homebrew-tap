class Disscli < Formula
  include Language::Python::Virtualenv

  desc "A Discord CLI tool for sending messages via webhooks"
  homepage "https://github.com/Trevogre/discordcli"
  url "https://github.com/Trevogre/discordcli/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "9512a42097347f6b82ce332e3e76c10ba7b89739ebc842ff78195dd6bd948d2b"
  license "MIT"

  depends_on "python@3.13"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/71/da/e94e26401b62acd6d91df2b52954aceb7f561743aa5ccc32152886c76c96/certifi-2024.2.2.tar.gz"
    sha256 "9512a42097347f6b82ce332e3e76c10ba7b89739ebc842ff78195dd6bd948d2b"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
    sha256 "9512a42097347f6b82ce332e3e76c10ba7b89739ebc842ff78195dd6bd948d2b"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/bf/3f/ea4b9117521a1e9c50344b909be7886dd00a519552724809bb1f486986c2/idna-3.6.tar.gz"
    sha256 "9512a42097347f6b82ce332e3e76c10ba7b89739ebc842ff78195dd6bd948d2b"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "9512a42097347f6b82ce332e3e76c10ba7b89739ebc842ff78195dd6bd948d2b"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7a/50/7fd50a27caa0652cd4caf224aa87741ea41d3265ad13f010886167cfcc79/urllib3-2.2.1.tar.gz"
    sha256 "9512a42097347f6b82ce332e3e76c10ba7b89739ebc842ff78195dd6bd948d2b"
  end

  def install
    virtualenv_install_with_resources using: "python@3.13"
  end

  test do
    system bin/"diss", "--help"
  end
end 