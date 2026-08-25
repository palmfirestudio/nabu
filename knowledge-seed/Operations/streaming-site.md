# Palmfire streaming-site brief

## Goal

Create a simple, mobile-first, Netflix-like website for browsing Palmfire stories and unlocking access through one-time Paystack payments.

This is not a full Netflix clone. It is a small catalogue, a payment page and a reliable video player.

## Payment rule

Palmfire uses **pay-as-you-go access only**.

- No recurring billing.
- No stored card details.
- No subscription plans.
- Each purchase creates an entitlement with an expiry date.
- Paystack handles checkout and payment confirmation.

### Founding prices

| Market | 24-hour pass | 7-day pass | 30-day pass |
|---|---:|---:|---:|
| Nigeria | ₦200 | ₦1,000 | ₦3,000 |
| International | $0.50 | $2.50 | $7.50 |

Each pass unlocks the selected season and episodes available during the active period.

## Core user flow

1. Visitor opens Palmfire from YouTube or Facebook.
2. Visitor browses the catalogue.
3. Visitor opens a title page.
4. Visitor sees trailer, synopsis, episode list and access options.
5. Visitor creates an account or continues to checkout.
6. Site opens a Paystack one-time checkout.
7. Paystack confirms payment through the return page and webhook.
8. Site creates an entitlement with start and expiry times.
9. Viewer opens the episode and receives a temporary playback link.
10. Viewer watches until the entitlement expires.

## Required pages

### Home

- Palmfire logo and navigation;
- featured title hero;
- short trailer button;
- “Watch now” or “Unlock access” button;
- rows for New releases, Series, Films and Continue watching;
- concise explanation of the access model.

### Browse

- title cards;
- genre filters;
- language filter when available;
- release status;
- search field;
- mobile-friendly list and grid views.

### Title detail

- poster or hero image;
- title, genre, runtime and age rating;
- synopsis;
- trailer;
- episode list;
- locked/unlocked state;
- access-price cards;
- “Unlock with Paystack” button.

### Watch

- video player;
- title and episode name;
- progress bar;
- previous/next episode;
- captions when available;
- continue-watching position;
- expiry notice;
- no download button.

### Account

- email or phone login;
- password reset;
- active access passes;
- expiry dates;
- watch history;
- payment receipts or transaction references;
- logout.

### Payment result

- success state;
- failed or cancelled state;
- clear next action;
- no access granted until the server verifies payment.

### Admin

- create and edit titles;
- upload poster, trailer and episode video;
- add synopsis, genre, language, runtime and age rating;
- set published/unpublished state;
- set access product;
- view payments and entitlements;
- view basic play and completion events.

## Visual direction

- dark charcoal background;
- warm ember/orange accent colour;
- large cinematic poster cards;
- restrained animation;
- high contrast text;
- mobile-first layout;
- no cluttered dashboards for viewers;
- obvious locked and unlocked states.

## MVP data objects

- `users`
- `titles`
- `episodes`
- `plans`
- `payments`
- `entitlements`
- `watch_progress`
- `marketing_events`
- `admin_users`

## Video handling

For the first version:

- store compressed MP4 files in Cloudflare R2 or existing RealWay storage;
- keep the bucket private;
- issue short-lived signed playback URLs only after entitlement checks;
- use one 720p file per episode;
- add multiple qualities only after real traffic proves the need;
- never expose permanent master-file URLs;
- do not promise that screen recording is impossible.

## Payment handling

The backend should:

1. create a Paystack transaction;
2. redirect the viewer to Paystack;
3. verify the transaction server-side;
4. receive and verify the Paystack webhook;
5. create exactly one entitlement for the successful purchase;
6. reject duplicate webhook processing;
7. show access only after verification.

## Basic interface contract for Lovable

The UI can be built against these backend actions:

```text
GET  /api/titles
GET  /api/titles/{slug}
POST /api/auth/register
POST /api/auth/login
POST /api/checkout
GET  /api/payments/{reference}
GET  /api/me/entitlements
GET  /api/episodes/{id}/playback
POST /api/episodes/{id}/progress
```

The UI should not decide whether a viewer has access. The server must decide and return either an authorised temporary playback URL or an access-required response.

## Analytics

Record:

- source link and campaign code;
- title-page views;
- trailer plays;
- checkout starts;
- successful payments;
- playback starts;
- completion percentage;
- repeat purchases.

## Out of scope for the MVP

- native mobile apps;
- recurring payments;
- chat or social feeds;
- DRM;
- downloads;
- recommendation algorithms;
- complex profiles;
- multiple payment providers;
- live streaming.

