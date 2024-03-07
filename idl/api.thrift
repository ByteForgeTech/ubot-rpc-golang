namespace go ubot.api

include "common.thrift"
include "auth.thrift"

// api 调用模块
service APIService {
    Response register(
        //
        1:string url,
        2:string token
    )
}

// API 调用返回
struct Response {
    // 响应状态
    1:required Status status
    // 调用类型 false 同步、true 异步
    2:optional bool async
}

enum Status {
    // 请求成功
    SUCCESS = 200
    // 请求被拒绝，需要验证
    FORBIDDEN = 400
    FAILED = 500
}