Wowza Playground
================

# About

This Repository gives playground for Wowza Streaming Engine with REST api server.
`docker-compose.yml` and `Dockerfile.yml` are basically based on [official docker setup document](https://www.wowza.com/docs/how-to-set-up-wowza-streaming-engine-using-docker).


# Requirements

- docker-compose
- Trial lisence for Wowza Streaming Engine

[Trial lisence is available from here.](https://www.wowza.com/free-trial?GA_network=g&GA_device=c&GA_campaign=740566306&GA_adgroup=36892194377&GA_target=&GA_placement=&GA_creative=285829035979&GA_extension=&GA_keyword=wowza%20trial&GA_loc_physical_ms=1028851&GA_landingpage=https://www.wowza.com/free-trial&ga_keyword_match=e&ga_ad_position=1t2&gclid=Cj0KCQiAxs3gBRDGARIsAO4tqq3Ag-5jvT7wshzSV4e_ruRADkVyM2RYtSpPoV5-sn5hucCyf1wuxVgaAgarEALw_wcB)

# Setup

## Wowza Streaming Engine

Fix environment variables.
Details can be found in `--env` of [official docker setup docuement](https://www.wowza.com/docs/how-to-set-up-wowza-streaming-engine-using-docker).

```
environment:
  WSE_MGR_USER:
  WSE_MGR_PASS:
  WSE_LIC:
  WSE_IP_PARAM:
```

Start `docker-compose`.

`$ docker-compose up --build`

Open `http://{WSE_IP_PARAM}:8088` and enter the user info which you've set for docker-compose.

If you wanna check HLS, using Safari should be useful.

## REST Document Server

This repository includes official swagger application.
Originally taken from [Download and view the documentation](https://www.wowza.com/docs/how-to-access-documentation-for-wowza-streaming-engine-rest-api).

To see the swagger application, execute launching command inside the `RESTAPIDocumentationWebpage` directory.

`$ ruby -run -e httpd . -p API_DOC_PORT`

or

`$ python3 -m http.server API_DOC_PORT`
