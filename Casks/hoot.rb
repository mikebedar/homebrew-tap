cask "hoot" do
  version "0.10.1"
  sha256 "86be97737326928c6c72e0a3fb09bdea40251a9c9290b32e4735d5a66a0ac921"

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
    To finish setting up Hoot, run:  open -a Hoot
    It takes you to Hoot in Safari → Settings → Extensions: tick Hoot and allow it on youtube.com.
  EOS
end
