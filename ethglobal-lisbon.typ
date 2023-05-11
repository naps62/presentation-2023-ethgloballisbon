#import "typ/slides.typ": *
#import "typ/bipartite.typ": *

#set text(font: "Roboto", size: 25pt)
#show link: underline

#show: slides.with(
  authors: "Miguel Palhas | @naps62",
  short-authors: "@naps62",
  title: "Improving our developer experience",
  subtitle: "Introducing Iron Wallet",
  date: "May 2023",
  theme: bipartite-theme(),
)

#slide(theme-variant: "title slide", theme: bipartite-theme())

#slide(title: "Engineering partnership")[
#figure(
  grid(
    columns: (auto, auto),
    gutter: 1em,
    [ #image("assets/lightshift.png", width: 80%)],
    [ #image("assets/subvisual.png", width: 70%)]
  )
)
]

#slide(theme-variant: "plain")[
#figure(image("assets/tdd.png", height: 70%))
]

#slide(theme-variant: "full", title: "Started with a pet peeve")[]

#slide(theme-variant: "plain")[
#figure(
  grid(
    columns: (auto, auto),
    gutter: 1em,
    [ #image("assets/metamask-nonce.png", width: 70%)],
    [ #image("assets/metamask-no-anvil.png", width: 70%)]
  )
)
]

#slide(title: "EIP 1193")[
- Incomplete
- Single-chain only
- Single-account only
]


#slide(theme-variant: "full", title: "Dev tooling today")[]

#slide(title: "Foundry")[
- https://getfoundry.sh
- cheatcodes
  - `anvil_impersonateAccount`
  - `evm_snapshot` / `evm_revert`
  - `--fork-url`
]

#slide(theme-variant: "plain")[
== https://etherscan.io
#figure(image("assets/etherscan.png", width: 70%))
]

#slide(theme-variant: "plain")[
== https://tenderly.co
#figure(image("assets/tenderly.png", width: 70%))
]

#slide(theme-variant: "plain")[
== https://impersonator.xyz
#figure(image("assets/impersonate.png", height: 70%))
]

#slide(theme-variant: "plain")[
== https://sig.eth.samczsun.com
#figure(image("assets/sig.png", width: 70%))
]

#slide(title: "Most of these are")[
- CLI tools
- web tools
- for livenets only
]

#slide(theme-variant: "plain")[
#figure(image("assets/standards.png", width: 60%))
]

#slide(title: "Iron Wallet", theme-variant: "full")[]

#slide(title: "Iron Wallet")[
#line-by-line[
  - Drop-in Metamask replacement;
  - Desktop app (+ extension);
  - Developer experience:
    - `anvil`-aware;
    - auto `nonce` reset;
    - no passwords, no confirmations, no delays.
    - built-in dev tooling;
  - Maybe end-users someday.
]
]

#slide(title: "Features (soon™)")[
#line-by-line[
  - Per-tab account & chain
  - multiple mnemonics (from multiple sources)
  - TX simulation / inspection
  - smart contract interaction
  - not sandboxed in a browser
  - all the desktop app. no more browser sandbox
    - #text(size: 18pt)[any tiling wm fans in the house?]
]
]

#slide(title: "Demo time", theme-variant: "full")[]

#slide(title: "Thank you")[
https://github.com/iron-wallet/iron

\@naps62
]
