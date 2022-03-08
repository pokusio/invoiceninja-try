export DOCK_HOST_IP_ADDR=${DOCK_HOST_IP_ADDR:-"192.168.1.103"}
# -----------------------------------------------
# -----------------------------------------------
# -----------  INVOICE NINJA
# -----------------------------------------------
# -----------------------------------------------
export INVOICENINJA_DOCKER_TAG=${INVOICENINJA_DOCKER_TAG:-"5.3.66"}

# -----------------------------------------------
# -----------------------------------------------
# -----------  MONGO DB STACK
# -----------------------------------------------
# -----------------------------------------------
export MONGO_INITDB_DATABASE=${MONGO_INITDB_DATABASE:-"pokus"}
export ME_CONFIG_OPTIONS_EDITORTHEME=${ME_CONFIG_OPTIONS_EDITORTHEME:-"ambiance"}































# -----------------------------------------------
# -----------------------------------------------
# -----------  INVOICE NINJA EXPËRIMENT
# -----------------------------------------------
# -----------------------------------------------
# IN application vars
INVOICENINJA_APP_URL=http://in.localhost:8003
# APP_KEY=<insert your generated key in here> # no secret in env
INVOICENINJA_APP_DEBUG=true
INVOICENINJA_REQUIRE_HTTPS=false
INVOICENINJA_PHANTOMJS_PDF_GENERATION=false
INVOICENINJA_PDF_GENERATOR=snappdf

INVOICENINJA_QUEUE_CONNECTION=database

# DB connection
INVOICENINJA_DB_HOST=db
INVOICENINJA_DB_PORT=3306
INVOICENINJA_DB_DATABASE=ninja
INVOICENINJA_DB_USERNAME=ninja
INVOICENINJA_DB_PASSWORD=ninja

# Create initial user
# Default to these values if empty
# IN_USER_EMAIL=admin@example.com
# IN_PASSWORD=changeme!
# --- #
# INVOICENINJA_IN_USER_EMAIL=admin@example.com
# INVOICENINJA_IN_PASSWORD=changeme!
# --- # IN_USER_EMAIL => secret loaded from file, not env, thanks
# --- # IN_PASSWORD => secret loaded from file, not env, thanks

# Mail options
# INVOICENINJA_MAIL_MAILER=log => secret loaded from file, not env, thanks
# INVOICENINJA_MAIL_HOST=smtp.mailtrap.io => secret loaded from file, not env, thanks
# INVOICENINJA_MAIL_PORT=2525 => secret loaded from file, not env, thanks
INVOICENINJA_MAIL_USERNAME=null
INVOICENINJA_MAIL_PASSWORD=null
INVOICENINJA_MAIL_ENCRYPTION=null
INVOICENINJA_MAIL_FROM_ADDRESS='user@example.com'
INVOICENINJA_MAIL_FROM_NAME='Self Hosted User'

# MySQL
INVOICENINJA_MYSQL_ROOT_PASSWORD=ninjaAdm1nPassword
INVOICENINJA_MYSQL_USER=ninja
INVOICENINJA_MYSQL_PASSWORD=ninja
INVOICENINJA_MYSQL_DATABASE=ninja

# V4 env vars
# INVOICENINJA_DB_STRICT=false
# INVOICENINJA_APP_CIPHER=AES-256-CBC
