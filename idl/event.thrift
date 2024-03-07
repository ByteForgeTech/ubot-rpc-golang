namespace go ubot.event

include "common.thrift"

// 事件服务
service EventService {
    void onEvent(1:required Event event)
}

// 事件实体类
struct Event {
    // 接收的事件格式
    1:required EventFormat format
    // 事件内容
    2:required string content
}

// 事件内容格式枚举
enum EventFormat {
    OFFICIAL = 0 // 官方格式
    ONEBOT = 1 // onebot 协议
}