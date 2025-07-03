#!/bin/bash
# ---------------------------------------------------------------------
# Copyright (C) 2021 DevPanel
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation version 3 of the
# License.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# For GNU Affero General Public License see <https://www.gnu.org/licenses/>.
# ----------------------------------------------------------------------

if [[ ! -f "$APP_ROOT/package.json" ]]; then
  npm init -y
  npm install express
  cat > index.js << EOF
const express = require('express');
const app = express();
const port = '3000';

app.get('/', (req, res) => {
  res.send('ExpressJs App!');
});

app.listen(port, () => {
  console.log('🚀 Server ready at ', port);
});
EOF
fi

if [[ -f "$APP_ROOT/package.json" ]]; then
  cd $APP_ROOT && npm install;
fi
