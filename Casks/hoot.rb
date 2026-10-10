cask "hoot" do
  version "0.10.0"
  sha256 "c436469d857240e19438a5e3c4070c4da9b6288da72c698d48d1bb1e9a175196"

  url "https://github.com/mikebedar/Hoot/releases/download/v#{version}/Hoot-#{version}.zip"
  name "Hoot"
  desc "Safari extension for a calm, uncluttered YouTube watch page"
  homepage "https://github.com/mikebedar/Hoot"

  depends_on macos: :sonoma

  app "Hoot.app"

  uninstall quit: "net.bedar.Hoot"

  zap trash: [
    "~/Library/Containers/net.bedar.Hoot",
    "~/Library/Containers/net.bedar.Hoot.Extension",
  ]

  caveats <<~EOS
    To finish setting up Hoot:
      1. Open Hoot once so Safari can find it:  open -a Hoot
      2. In Safari → Settings → Extensions, turn on Hoot and allow it on youtube.com.
  EOS
end
