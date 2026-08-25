# Palmfire research document

**Research date:** 18 August 2026  
**Business:** Palmfire, an AI-assisted original-fiction studio  
**Initial creative pilot:** Five episodes, 30 minutes per episode (150 minutes total)

## Executive conclusion

Palmfire should begin as a small, human-directed studio rather than as a fully autonomous streaming company.

The proposed model is:

1. A human supplies the story premise, characters, setting, genre and ending.
2. Agents turn that brief into a screenplay, scene plan and production package.
3. Palmfire publishes discovery material on YouTube, Facebook and short-form platforms.
4. Viewers buy temporary access on Palmfire’s own site through a one-time Paystack checkout.
5. Palmfire measures payment behaviour before increasing production spend.

The five-part, 30-minute-per-episode pilot is a **150-minute season**. It should be written as a complete season, but produced and released one episode at a time. A fully generated 150-minute season is not compatible with a $100 monthly production budget. The lean version must use limited animation, reusable images, short motion clips, narration, music and sound design.

## Platform decision

### YouTube

YouTube is the discovery channel, not the main paywall. Channel memberships are monthly, YouTube controls the pricing, and eligibility requires YouTube Partner Programme thresholds and review. The expanded fan-funding tier generally requires 500 subscribers, three public uploads in 90 days, and either 3,000 valid public watch hours or 3 million Shorts views. Full ad revenue requires 1,000 subscribers plus 4,000 valid public watch hours or 10 million Shorts views.

Sources: [YouTube monetisation thresholds](https://support.google.com/youtube/answer/72857?hl=en), [channel memberships](https://support.google.com/youtube/answer/7636690?hl=en).

Use YouTube for trailers, free scenes, the first episode, recaps, Shorts and calls to action. Use long-form descriptions and the channel profile for the Palmfire link; Shorts descriptions are not a dependable clickable funnel.

### RPM reality

RPM means the creator’s total YouTube revenue per 1,000 views after YouTube’s revenue share. It includes all views, including views where no advert was shown, and can include ads, YouTube Premium and fan-funding revenue. YouTube does not publish a guaranteed Nigeria RPM, so any country-wide average is only a planning estimate. Do not model Nigeria at $50 RPM; use a conservative internal range such as $0.20–$1.50 until Palmfire has its own monetised data.

Source: [YouTube ad-revenue analytics](https://support.google.com/youtube/answer/9314357).

Nigeria is useful for low-cost audience testing, but its advertising yield is usually lower than higher-ad-spend markets. English-speaking diaspora audiences may have stronger monetisation, but cold advertising to them costs more. Start in Nigeria, then test diaspora audiences organically before buying international traffic.

### Patreon

Patreon now supports one-time purchases as well as memberships, so it could host a simple paid collection. It is not ideal for Palmfire’s ₦200/day or $0.50/day model because Patreon takes a platform percentage, plus payment processing, currency conversion, payout fees and applicable taxes. It also owns the checkout and customer-access experience.

Sources: [Patreon pricing](https://www.patreon.com/pricing), [Patreon one-time purchases](https://support.patreon.com/hc/en-gb/articles/204606215-Can-I-make-a-one-time-payment).

### Vimeo OTT

Vimeo OTT is the closest hosted video alternative. It supports subscriptions and buy/rent transactions without an upfront platform subscription, but TVOD charges 10% plus $0.50 per transaction. That fixed fee makes very small Nigerian and international daily purchases unattractive. Vimeo On Demand is also being discontinued on 20 November 2026, so Palmfire should not build on it.

Source: [Vimeo OTT pricing](https://help.vimeo.com/hc/en-us/articles/12425768622481-Vimeo-OTT-pricing-breakdown), [Vimeo On Demand transition](https://help.vimeo.com/hc/en-us/articles/12427367616913-How-to-start-selling-on-Vimeo-On-Demand).

### Gumroad

Gumroad is useful for one-time digital products, but its standard direct-link fee is 10% plus $0.50, and it is primarily a digital-product checkout rather than a branded streaming service.

Source: [Gumroad pricing](https://gumroad.com/pricing).

### Decision

Build a small Palmfire site. Use Laravel on the existing RealWay hosting if it supports PHP, a database and HTTPS. Use Paystack for one-time checkout only. Do not use recurring billing at launch.

## Brand and domain

A quick search did not show an obvious film studio, streaming service or microdrama platform using the exact Palmfire name. There are unrelated uses of the word, so this is not a formal trademark or company-name clearance.

Namecheap currently shows `palmfire.xyz` available for about $2 for the first year. The renewal price is much higher, so treat the first-year price as a launch promotion rather than a permanent annual cost.

Source: [Namecheap palmfire.xyz result](https://www.namecheap.com/domains/registration/results/?domain=palmfire.xyz).

## Access pricing

These are founding prices to test, not permanent prices:

| Market | 24-hour pass | 7-day pass | 30-day pass |
|---|---:|---:|---:|
| Nigeria | ₦200 | ₦1,000 | ₦3,000 |
| International | $0.50 | $2.50 | $7.50 |

The longer passes are deliberately below the daily equivalent. A pass should unlock the selected Palmfire season and any episodes released during the active period. Avoid charging per episode at first; it creates unnecessary payment friction.

Paystack should receive a one-time transaction. After the payment confirmation reaches Palmfire, the site creates an entitlement with `starts_at` and `expires_at`. No card details should be stored by Palmfire, and no subscription plan should be created.

## Production economics

### What the $100 budget can support

The main cost is generation, not storage or hosting.

Under $100 per month, Palmfire can support:

- one 5–8-minute proof-of-concept;
- a short weekly release built from stills and short motion clips;
- a 30-minute episode produced over multiple months;
- a complete five-episode season written in advance and produced sequentially.

It cannot reliably support five polished, fully generated, 30-minute episodes every month.

### Lean visual method

- Use still images for most dialogue and establishing moments.
- Animate only the moments that need movement.
- Reserve premium generation for entrances, reveals, action and emotional turning points.
- Reuse characters, locations, props and visual motifs.
- Use narration, dialogue, music, ambience and sound effects to carry pace.
- Start in one language; add dubbing only after the story proves demand.

### Current tool reference

Prices and credit rules change; verify them immediately before purchase.

| Tool | Current reference | Use in Palmfire |
|---|---|---|
| Pika | Free tier listed; Standard about $10/month and 700 credits | Bulk short image-to-video clips |
| Runway | Standard about $15 month-to-month, or $12/month billed annually; 625 credits | Selected hero shots and finishing |
| Google Flow/Veo | 50 daily credits for non-subscribers; paid tiers add monthly credits | Testing and occasional reference shots; check watermark and commercial terms |
| ElevenLabs | Starter about $6/month; commercial-use plan | Narration, character voices and dubbing |

Sources: [Pika pricing](https://pika.art/pricing?interval=month), [Runway pricing](https://runway.com/pricing?tool=runway), [Flow credit rules](https://support.google.com/flow/answer/16526234?hl=en), [ElevenLabs pricing](https://elevenlabs.io/pricing).

### Founding monthly budget

| Item | Budget |
|---|---:|
| Pika Standard | $10 |
| Runway Standard | $15 |
| ElevenLabs Starter | $6 |
| Facebook/Instagram test advertising | $25 |
| Domain, first year | About $2 |
| Hosting and storage | $0 initially |
| Reserved generation/retry budget | About $42 |
| **Total ceiling** | **$100** |

Do not spend the reserve automatically. A failed concept should stop further generation spend.

## Storage and delivery

### Recommended pilot route: Cloudflare R2

R2 currently includes 10 GB-month of Standard storage, 1 million Class A operations, 10 million Class B operations and free egress. Store compressed final MP4 files there and keep large masters offline or on a separate backup.

Source: [Cloudflare R2 pricing](https://developers.cloudflare.com/r2/pricing/).

For the pilot, use one 720p MP4 per episode and a basic HTML5 player. Give the player a temporary signed URL after checking the viewer’s entitlement. Do not expose permanent public video URLs.

R2 does not automatically provide adaptive streaming, DRM or multiple quality levels. That is acceptable for the first proof-of-demand version. Move to Cloudflare Stream only when buffering, traffic or access control justifies the additional service.

## Advertising and measurement

Meta advertising has no fixed price. Start with a small capped test and measure:

- cost per qualified site visitor;
- checkout starts;
- successful payments;
- first-order value;
- repeat purchases;
- episode completion;
- cost per paying user;
- revenue minus generation, payment and advertising costs.

The key metric is not cheap views. It is **paid customers per 1,000 qualified visitors**.

## Main risks

- Fully generated 150-minute seasons exceed the budget.
- Free model tiers may include watermarks or non-commercial restrictions.
- AI output can be inconsistent across characters, locations and episodes.
- Paywall links can be shared and screens can be recorded.
- Payment, tax, content and intellectual-property terms must be reviewed before launch.
- Children’s content can trigger additional platform restrictions.

## Research decision

Palmfire should proceed as a low-cost test studio with:

- a five-episode creative pilot;
- one episode produced and tested before the next;
- YouTube and Facebook as discovery channels;
- a simple Palmfire site for one-time access;
- R2 or existing RealWay storage;
- Paystack checkout without recurring billing;
- human approval at every story and publication gate.
