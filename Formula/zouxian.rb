class Zouxian < Formula
  desc "Permanent Xcode Predictive Code Completion for Chinese-market Mac computers"
  homepage "https://github.com/CatMe0w/zouxian"
  url "https://github.com/CatMe0w/zouxian/releases/download/v0.1.0/zouxian.sh"
  sha256 "c8d290fe673d696dac8e4f2e19a3daabe3509246c713ba234c603ab627d2685b"
  license "MIT"
  head "https://github.com/CatMe0w/zouxian.git", branch: "master"

  def install
    bin.install "zouxian.sh" => "zouxian"
  end

  def caveats
    <<~EOS
      To ensure zouxian works correctly, please follow these steps:
        - Make sure Xcode is installed and has been run at least once.
        - Disable SIP debugging restrictions by running the `csrutil enable --without debug` command in Recovery mode.
    EOS
  end

  service do
    run bin/"zouxian"
    require_root true
  end
end
