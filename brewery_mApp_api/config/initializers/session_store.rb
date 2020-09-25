#cookie store
#key is session name
#domain is production
if Rails.env == 'production'
    Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "jdh_authentication_app_api.herokuapp.com"
else
    Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end