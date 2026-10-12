# The pre-ship UI checklist

Run when **Proceed** produces or changes user-facing UI — before the word "delivered" is used. These checks are doctrine: the bar GRASP sets (see `standards.md`). The stake behind them is the aesthetic-usability effect (`research.md`, Finding 11) — polish that supports function reads as professional; polish without function is a prettier lie. Hard first: the first four are where shipped-looking broken hides.

1. **Renders, both widths.** Look at ~375px and ~1280px (or the product's real min/max). Pass: no horizontal scroll, no overlap, no clipped text — and you looked, twice.

2. **Real content.** No lorem ipsum, no stub boxes, no gray rectangles where images belong. Sample data in the product's own domain — real dish names for a bakery, real task titles for a task app. Pass: nothing on the page would embarrass the human in a demo.

3. **One obvious primary action.** Each screen has exactly one control that reads as most important (strongest contrast / filled button); secondary actions are visibly secondary. Pass: you can point at it in the screenshot.

4. **Working states.** Every async or interactive piece has empty, loading, error, and success states; submit controls cannot double-fire. Pass: each state was seen or its code path was exercised.

5. **No dead ends.** Every visible control does something real. Not-yet-wired controls are absent or visibly disabled with a stated reason. Pass: clicking every control in one pass produced zero "nothing happened".

6. **Zero console errors.** Open the console and the network panel. Errors, warnings, and failed requests are fixed or explained in the reply — left silently, they are unlicensed debt in the human's product.

7. **One spacing scale, one palette.** Spacing values come from a single scale; colors from a defined set. Pass: no magic numbers outside the system. (This is the visual twin of the fragment-pile cleanup — consistency is what "clean" resolves to.)

8. **Focus and tap.** Keyboard focus is visible on every focusable element; controls are comfortably tappable at mobile width. Pass: tab through the page and watch the ring land on each control.

9. **Screenshot receipt.** Screenshot at both widths before declaring delivery. A UI you did not look at is not delivered — the screenshots are the manual verification, attached to the reply the way any receipt is.

**Skipped a check? Declare it** — "skipped 6 (no browser available this run)" — in the same reply as the delivery. An undeclared skip is a claim without evidence wearing a uniform.
