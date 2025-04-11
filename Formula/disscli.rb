class Disscli < Formula
  include Language::Python::Virtualenv

  desc "A Discord CLI tool for sending messages via webhooks"
  homepage "https://github.com/Trevogre/discordcli"
  url "https://github.com/Trevogre/discordcli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "eea7dde37cf7d644c1df922c4f4fd349dfc3f66c8cccf8fa4dd1ee215a5bf8c2"
  license "MIT"

  depends_on "python@3.13"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "eea7dde37cf7d644c1df922c4f4fd349dfc3f66c8cccf8fa4dd1ee215a5bf8c2"
  end

  def install
    virtualenv_install_with_resources using: "python@3.13"
  end

  test do
    system bin/"diss", "--help"
  end
end 