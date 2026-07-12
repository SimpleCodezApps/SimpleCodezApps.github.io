# Plan: Broadcaster Subscription Pricing Page

## Goal
Add a pricing page documenting App Store pricing for MyTeamLive broadcaster
subscriptions. Remote Control and Remote Camera are free and require no
subscription. Show US & Canada pricing in a single column (prices are identical).

## Prices
- Monthly: US $9.99 / CA $9.99
- Yearly: US $39.99 / CA $39.99

## Changes

### 1. New page `myteamlive/pricing.md`
Standard `layout: myteamlive` front matter. Sections:
- Intro: broadcaster subscriptions unlock live streaming with scoreboard overlay,
  available monthly or yearly via the App Store.
- Free features callout: Remote Control and Remote Camera need no subscription;
  link to `/myteamlive/remote-control` and `/myteamlive/remote-camera`.
- Pricing table (single "United States & Canada" column):

  | Plan    | United States & Canada |
  |---------|------------------------|
  | Monthly | $9.99                  |
  | Yearly  | $39.99                 |

- Note: prices in local currency (USD / CAD), billed via the App Store; manage or
  cancel in More -> Subscription (link `/myteamlive/more-subscription`). Prices
  subject to change.

### 2. Navigation `_data/navigation.yml`
- Add "Pricing" to `main:` between About and FAQ.
- Add "Pricing" under `docs:` -> "Getting Started".

### 3. Cross-link
- Add a Pricing link in `myteamlive/more-subscription.md`.

## Validation
- `bundle exec jekyll build` before finalizing.
