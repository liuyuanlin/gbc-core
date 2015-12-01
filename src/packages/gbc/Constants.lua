
local _M = {}

-- request type
_M.HTTP_REQUEST_TYPE                     = "http"
_M.WEBSOCKET_REQUEST_TYPE                = "websocket"
_M.CLI_REQUEST_TYPE                      = "cli"
_M.WORKER_REQUEST_TYPE                   = "worker"

-- action
_M.ACTION_PACKAGE_NAME                   = 'actions'
_M.DEFAULT_ACTION_MODULE_SUFFIX          = 'Action'
_M.DEFAULT_ACTION_METHOD_SUFFIX          = 'Action'
_M.MESSAGE_FORMAT_JSON                   = "json"
_M.MESSAGE_FORMAT_TEXT                   = "text"
_M.DEFAULT_MESSAGE_FORMAT                = _M.MESSAGE_FORMAT_JSON

-- redis keys
_M.NEXT_CONNECT_ID_KEY                   = "_NEXT_CONNECT_ID"
_M.CONNECT_CHANNEL_PREFIX                = "_C"

-- beanstalkd
_M.BEANSTALKD_JOB_TUBE_PATTERN           = "job-%s" -- job-<appindex>

-- websocket
_M.WEBSOCKET_TEXT_MESSAGE_TYPE           = "text"
_M.WEBSOCKET_BINARY_MESSAGE_TYPE         = "binary"
_M.WEBSOCKET_SUBPROTOCOL_PATTERN         = "gbc%-auth%-([%w%d%-]+)" -- token
_M.WEBSOCKET_DEFAULT_TIME_OUT            = 10 * 1000 -- 10s
_M.WEBSOCKET_DEFAULT_MAX_PAYLOAD_LEN     = 16 * 1024 -- 16KB
_M.WEBSOCKET_DEFAULT_MAX_RETRY_COUNT     = 5 -- 5 times
_M.WEBSOCKET_DEFAULT_MAX_SUB_RETRY_COUNT = 10 -- 10 times

-- misc
_M.STRIP_LUA_PATH_PATTERN                = "[/%.%a%-]+/([%a%-]+%.lua:%d+: )"

return table.readonly(_M)