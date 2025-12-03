local awful = require("awful")
local ruled = require("ruled")

-- Rules to apply to new clients.
ruled.client.connect_signal("request::rules", function()
    -- All clients will match this rule.
    ruled.client.append_rule {
        id         = "global",
        rule       = { },
        properties = {
            focus     = awful.client.focus.filter,
            raise     = true,
            screen    = awful.screen.preferred,
            placement = awful.placement.no_overlap+awful.placement.no_offscreen,
            callback = awful.client.setslave
        }
    }

    -- Floating clients.
    ruled.client.append_rule {
        id       = "floating",
        rule_any = {
            instance = { "copyq", "pinentry" },
            class    = {
                "Blueman-manager",
                "Wpa_gui",
            },
            name    = {
                "Event Tester",  -- xev.
            },
            role    = {
                "pop-up",         -- e.g. Google Chrome's (detached) Developer Tools.
            }
        },
        properties = { floating = true }
    }
-- TAG 1
    ruled.client.append_rule {
    rule = { class = "vifm" },
       properties = { tag = "1" },
    }
-- TAG 2
    ruled.client.append_rule {
    rule = { name = "Firefox" },
       properties = { tag = "2" },
    }
-- TAG 3
    ruled.client.append_rule {
    rule = { name = "Discord" },
       properties = { tag = "3" },
    }
-- TAG 4
    ruled.client.append_rule {
    rule_any = { class = "Spotify" },
       properties = { tag = "4" }
    }
--}}}
    -- }
end)
