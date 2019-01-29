default['scalr-docker']['version'] = '18.09.1'
default['scalr-docker']['logfile'] = '/var/log/scalr_docker.log'

default['scalr-docker']['webhooks'] = [{ 'Name' => 'command-webhook',
                                         'Image' => 'command-webhook',
                                         'SCALR_SIGNING_KEY' => 'SCALR_SIGNING_KEY=thkDo9O22HybGIjb88ck2qMu+njkMw+dxfd4et6pLl3V8HgsyEUhbh/B9CSAy8Hi',
                                         'SCALR_WEBHOOK_ENV' => 'SCALR_WEBHOOK=command',
                                         'SCALR_COMMAND_GV' => 'SCALR_COMMAND_GV=WEBHOOK_COMMAND',
                                         'Port' => '5018:5018',
                                      },
                                       { 'Name' => 'command-webhook2',
                                         'Image' => 'command-webhook',
                                         'SCALR_SIGNING_KEY' => 'SCALR_SIGNING_KEY=qlbMkeBNYJ92zpnuZ3PMJAEehUS9B19u6XOQPJy7C0Pppm+n5g6Y4jyBApRgmQKh',
                                         'SCALR_WEBHOOK_ENV' => 'SCALR_WEBHOOK=command2',
                                         'SCALR_COMMAND_GV' => 'SCALR_COMMAND_GV=command2',
                                         'Port' => '5017:5018',
                                     }]
