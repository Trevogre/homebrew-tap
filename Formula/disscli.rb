class Disscli < Formula
  include Language::Python::Virtualenv

  desc "A Discord CLI tool for sending messages via webhooks"
  homepage "https://github.com/Trevogre/discordcli"
  url "https://github.com/Trevogre/discordcli/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "0a1ece3a021f4e27248572b033880f0d44b0cf0f4a4cfe3a61038e75b5ceb84c"
  license "MIT"

  depends_on "python@3.13"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "0a1ece3a021f4e27248572b033880f0d44b0cf0f4a4cfe3a61038e75b5ceb84c"
  end

  def install
    virtualenv_install_with_resources using: "python@3.13"
  end

  test do
    system bin/"diss", "--help"
  end
end 