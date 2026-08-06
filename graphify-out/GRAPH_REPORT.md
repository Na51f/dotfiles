# Graph Report - /Users/sqibo/devel/dotfiles  (2026-07-16)

## Corpus Check
- Corpus is ~21,045 words - fits in a single context window. You may not need a graph.

## Summary
- 91 nodes · 98 edges · 24 communities (8 shown, 16 thin omitted)
- Extraction: 93% EXTRACTED · 7% INFERRED · 0% AMBIGUOUS · INFERRED: 7 edges (avg confidence: 0.8)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- SketchyBar Helper Widgets
- AClock Spoon
- Tmux Calendar Script
- SketchyBar Mach API
- HCalendar Spoon
- Calendar Spoon
- Zsh Aliases
- Setup
- Sketchybar Colors
- Sketchybar Icons
- Sketchybar Items Aerospace
- Sketchybar Items Apple
- Sketchybar Items Calendar
- Sketchybar Items Cpu
- Sketchybar Items Github
- Sketchybar Items Spaces
- Sketchybar Plugins Aerospacer
- Plugins Icon Map
- Sketchybar Plugins Zen
- Sketchybar Sketchybarrc
- Zsh Scripts Setup

## God Nodes (most connected - your core abstractions)
1. `main()` - 9 edges
2. `handler()` - 6 edges
3. `main()` - 4 edges
4. `mach_receive_message()` - 4 edges
5. `mach_send_message()` - 4 edges
6. `mach_server_begin()` - 4 edges
7. `sketchybar()` - 4 edges
8. `event_server_begin()` - 4 edges
9. `getframe()` - 3 edges
10. `updateHcalCanvas()` - 3 edges

## Surprising Connections (you probably didn't know these)
- `handler()` --calls--> `clock_update()`  [INFERRED]
  sketchybar/helper/helper.c → sketchybar/helper/clock.h
- `handler()` --calls--> `cpu_update()`  [INFERRED]
  sketchybar/helper/helper.c → sketchybar/helper/cpu.h
- `handler()` --calls--> `sketchybar()`  [INFERRED]
  sketchybar/helper/helper.c → sketchybar/helper/sketchybar.h
- `main()` --calls--> `event_server_begin()`  [INFERRED]
  sketchybar/helper/helper.c → sketchybar/helper/sketchybar.h
- `main()` --calls--> `clock_init()`  [INFERRED]
  sketchybar/helper/helper.c → sketchybar/helper/clock.h

## Import Cycles
- None detected.

## Communities (24 total, 16 thin omitted)

### Community 0 - "SketchyBar Helper Widgets"
Cohesion: 0.23
Nodes (9): clock_init(), clock_update(), cpu_init(), cpu_update(), env, handler(), main(), env_get_value_for_key() (+1 more)

### Community 1 - "AClock Spoon"
Cohesion: 0.22
Nodes (3): getframe(), obj:init(), obj:update_canvas()

### Community 2 - "Tmux Calendar Script"
Cohesion: 0.35
Nodes (10): calculate_times(), display_popup(), get_attendees(), get_next_meeting(), get_next_next_meeting(), main(), parse_attendees(), parse_result() (+2 more)

### Community 3 - "SketchyBar Mach API"
Cohesion: 0.44
Nodes (8): mach_handler, mach_port_t, event_server_begin(), mach_get_bs_port(), mach_receive_message(), mach_send_message(), mach_server_begin(), sketchybar()

### Community 5 - "HCalendar Spoon"
Cohesion: 0.47
Nodes (3): obj:init(), obj:start(), updateHcalCanvas()

## Knowledge Gaps
- **13 isolated node(s):** `setup.sh script`, `colors.sh script`, `icons.sh script`, `aerospace.sh script`, `apple.sh script` (+8 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **16 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `handler()` connect `SketchyBar Helper Widgets` to `SketchyBar Mach API`?**
  _High betweenness centrality (0.013) - this node is a cross-community bridge._
- **Why does `main()` connect `SketchyBar Helper Widgets` to `SketchyBar Mach API`?**
  _High betweenness centrality (0.007) - this node is a cross-community bridge._
- **Why does `env_get_value_for_key()` connect `SketchyBar Helper Widgets` to `SketchyBar Mach API`?**
  _High betweenness centrality (0.006) - this node is a cross-community bridge._
- **Are the 4 inferred relationships involving `handler()` (e.g. with `clock_update()` and `cpu_update()`) actually correct?**
  _`handler()` has 4 INFERRED edges - model-reasoned connections that need verification._
- **Are the 3 inferred relationships involving `main()` (e.g. with `clock_init()` and `cpu_init()`) actually correct?**
  _`main()` has 3 INFERRED edges - model-reasoned connections that need verification._
- **What connects `setup.sh script`, `colors.sh script`, `icons.sh script` to the rest of the system?**
  _13 weakly-connected nodes found - possible documentation gaps or missing edges._