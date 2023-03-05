import Parsing

public struct _PrefixUpTo<Upstream: Parser>: Parser
where
  Upstream.Input: Collection,
  Upstream.Input == Upstream.Input.SubSequence
{
  struct SuffixNotFound: Error {}

  let upstream: Upstream

  init(@ParserBuilder _ upstream: () -> Upstream) {
    self.upstream = upstream()
  }

  public func parse(_ input: inout Upstream.Input) throws -> Upstream.Input {
    let original = input
    var copy = input
    while (try? self.upstream.parse(&copy)) == nil {
      guard !input.isEmpty else {
        throw SuffixNotFound()
      }
      input.removeFirst()
      copy = input
    }
    return original[..<input.startIndex]
  }
}

extension _PrefixUpTo: ParserPrinter
where
  Upstream: ParserPrinter,
  Upstream.Input: PrependableCollection
{
  public func print(_ output: Upstream.Input, into input: inout Upstream.Input) throws {
    input.prepend(contentsOf: output)
    var copy = input
    _ = try self.parse(&copy)
  }
}
