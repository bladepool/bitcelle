
cd ~
rm -r -f blockscout
git clone https://github.com/treschain/blockscout
cd blockscout
mix deps.get
mix local.rebar --force
mix phx.gen.secret
export MIX_ENV=prod
cd blockcout
mix local.hex --force
mix do deps.get, local.rebar --force, deps.compile, compile
cd apps/block_scout_web/assets
sudo npm install
sudo node_modules/webpack/bin/webpack.js --mode production
cd ~/blockscout/apps/block_scout_web/
sudo mix phx.digest
cd ~/blockscout/apps/block_scout_web
mix phx.gen.cert blockscout blockscout.local
cd ~/blockscout/apps/block_scout_web/config
#cp -r /usr/local/blockscout/apps/block_scout_web/config/prod.exs prod.exs
cd ~/blockscout/apps/block_scout_web/priv/cert
cp -r /usr/local/blockscout/apps/block_scout_web/priv/cert/* ~/blockscout/apps/block_scout_web/priv/cert/
cd ~/blockscout/
cp -r /usr/local/blockscout/env_vars.env env_vars.env
