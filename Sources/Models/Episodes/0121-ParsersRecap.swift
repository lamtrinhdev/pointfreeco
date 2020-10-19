import Foundation

extension Episode {
  public static let ep121_parsersRecap = Episode(
    blurb: """
Now that we've refamiliarized ourselves with parsing, let's parse something even more complex: XCTest logs. We will parse and pretty-print the output from `xcodebuild` and discover more reusable combinators along the way.
""",
    codeSampleDirectory: "0121-parsers-recap-pt3",
    exercises: _exercises,
    id: 121,
    image: "https://i.vimeocdn.com/video/977642862.jpg",
    length: 31*60 + 3,
    permission: .subscriberOnly,
    publishedAt: Date(timeIntervalSince1970: 1603083600),
    references: [
      reference(
        forCollection: .parsing,
        additionalBlurb: "New to parsing? Start our collection from the beginning!",
        collectionUrl: "https://www.pointfree.co/collections/parsing"
      ),
    ],
    sequence: 121,
    subtitle: "Part 1",
    title: "Parsing Xcode Logs",
    trailerVideo: .init(
      bytesLength: 45637085,
      vimeoId: 469007590,
      vimeoSecret: "24368748b39963495cd921caaa5f7983ae99865a"
    )
  )
}

private let _exercises: [Episode.Exercise] = [
  // TODO
]
