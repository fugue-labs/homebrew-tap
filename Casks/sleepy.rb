# Generated from a Cosign-verified Sleepy release manifest.
cask "sleepy" do
  version "0.7.0"

  on_macos do
    on_intel do
      sha256 "c6959e72c7f0db6f5bd3361a7965f00d6dbc2d82158f67e8c433bfc16261c926"
      url "https://github.com/fugue-labs/sleepy-releases/releases/download/v#{version}/sleepy_#{version}_Darwin_x86_64.tar.gz"
    end
    on_arm do
      sha256 "c878ed90470549cf38e94c2e9dde340e6ec319d9fb66196bdfffe0a99f164272"
      url "https://github.com/fugue-labs/sleepy-releases/releases/download/v#{version}/sleepy_#{version}_Darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "5dbfe9ec6d71a49252408d1ce0a92ebd6d40c3747fd6ed6ada53c6c51dd2199f"
      url "https://github.com/fugue-labs/sleepy-releases/releases/download/v#{version}/sleepy_#{version}_Linux_x86_64.tar.gz"
    end
    on_arm do
      sha256 "192b0b40735546a325166593464f8d1bcebbabd186ee560e00fa331864f3802f"
      url "https://github.com/fugue-labs/sleepy-releases/releases/download/v#{version}/sleepy_#{version}_Linux_arm64.tar.gz"
    end
  end

  name "sleepy"
  desc "Client tooling for the sleepy.run evolutionary code optimization service"
  homepage "https://github.com/fugue-labs/sleepy-releases"
  livecheck do
    skip "Updated only after a verified protected release."
  end
  binary "sleepy"
  postflight do
    if system_command("/usr/bin/xattr", args: ["-h"]).exit_status == 0
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/sleepy"]
    end
  end
end
