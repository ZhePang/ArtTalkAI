key = 'password_01X'
enc = {"cipher"=>"AES-256-CBC",
       "salt"=>"\xE6\x06\b%0K\bk\x1A\x90LXpfw\x88",
       "iter"=>10000,
       "iv"=>"\xC9\x1C\xEA\xAC\x1C\xDCz\x0F(\xC2\xCB\x18\xBC\x00L\xAF",
       "data"=>"yBr1J8Tn330j1BIOnJj1wluhLorlCgdNilzjEMAad3ny1Iku2NvbHo25hArZ\nAC/dkm0a2k18hsCfP77xWcXMwQ==\n"}
plain = Cryptology.decrypt(data: enc['data'],
                           key: key,
                           salt: enc['salt'],
                           iter: enc['iter'],
                           cipher: enc['cipher'],
                           iv: enc['iv'])
OpenAI.configure do |config|
  config.access_token = plain
  config.request_timeout = 999999
end
