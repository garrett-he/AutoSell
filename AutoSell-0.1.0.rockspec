rockspec_format = "3.0"
package = "AutoSell"
version = "0.1.0"
source = {
    url = "git://github.com/garrett-he/AutoSell.git",
}
description = {
    summary = "AutoSell",
    detailed = [[
        Addon for World of Warcraft to sell junks to vendors automatically.
    ]],
    homepage = "https://github.com/garrett-he/AutoSell",
    license = "GPL-3.0"
}

dependencies = {
    "lua >= 5.1",
    "busted",
}

build = {
    type = "none"
}

test = {
    type = "busted"
}

test_dependencies = {
    "busted"
}
