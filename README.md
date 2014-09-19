# KoudokuCoupons

KoudokuCoupons adds support for [Stripe](http://www.stripe.com) coupons to [Koudoku](https://github.com/yas4891/koudoku).

**NOTE**: KoudokuCoupons currently only works with my fork of Koudoku, because the upstream repository does not merge pull requests at the moment.

## Installation

For KoudokuCoupons to work properly you need to add the following lines to your `Gemfile`: 

```ruby
gem 'koudoku', git: 'https://github.com/yas4891/koudoku.git' # handles stripe subscriptions
gem 'koudoku_coupons'
```

Next run `bundle install`. After that you need to add the migrations to your application: 
```ruby
rails g koudoku_coupons:install
rake db:migrate
```
This will copy the migration into your application and run it. Additionally it will mount KoudokuCoupons at `/promotions`

If you are using [Devise](https://github.com/plataformatec/devise) for authentication, you need to add this line
to your `ApplicationController` to allow non-logged-in users to use coupons: 

```ruby
skip_filter :authenticate_user!, :if => :koudoku_coupons_controller?
```

## Setting Up New Coupons

First you need to create a new coupon in the [Stripe dashboard](https://dashboard.stripe.com/coupons).
To add a new promotion visit your application at `/promotions/promotions/new` and enter the following data: 

- `name`: a name for the promotion. A promotion with name "50percentoff" will be available at `/promotions/50percentoff`
- `coupon_code`: the coupon code that you selected in the Stripe Dashboard
- `redirect`: The URL users will be redirected to after hitting the promotion URL - e.g. [https://www.linksspy.com/email/landingpage?utm_source=github&utm_medium=web&utm_campaign=open_source](https://www.linksspy.com/email/landingpage?utm_source=github&utm_medium=web&utm_campaign=open_source)
