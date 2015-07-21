.class public Lcom/lge/wifi/impl/LgWifiMonitorHelper;
.super Ljava/lang/Object;
.source "LgWifiMonitorHelper.java"

# interfaces
.implements Lcom/lge/wifi/extension/ILgWifiMonitorHelper;


# static fields
.field private static final INTERWORKING_3GPP_CONNECTING_STR:Ljava/lang/String; = "INTERWORKING-3GPP-CONNECTING"

.field private static final INTERWORKING_ANQP_FETCH_START_STR:Ljava/lang/String; = "INTERWORKING-ANQP-FETCH-STARTED"

.field private static final INTERWORKING_ANQP_FETCH_SUCCESS_STR:Ljava/lang/String; = "INTERWORKING-ANQP-FETCH-COMPLETED"

.field private static final INTERWORKING_ANQP_RX_STR:Ljava/lang/String; = "INTERWORKING-ANQP-RX-DATA"

.field private static final INTERWORKING_AP_STR:Ljava/lang/String; = "INTERWORKING-AP"

.field private static final INTERWORKING_GAS_RESP_INFO_STR:Ljava/lang/String; = "INTERWORKING-GAS-RESP-INFO"

.field private static final INTERWORKING_NO_MATCH_STR:Ljava/lang/String; = "INTERWORKING-NO-MATCH"

.field private static final INTERWORKING_RC_CONNECTING_STR:Ljava/lang/String; = "INTERWORKING-RC-CONNECTING"

.field private static final INTERWORKING_TLS_CONNECTING_STR:Ljava/lang/String; = "INTERWORKING-TLS-TTLS-CONNECTING"

.field private static final TAG:Ljava/lang/String; = "LgWifiMonitorHelper"

.field private static final WAPI_AUTHENTICATION_FAILURE_STR:Ljava/lang/String; = "authentication failed"

.field private static final WAPI_CERTIFICATION_FAILURE_STR:Ljava/lang/String; = "certificate initialization failed"

.field private static final WAPI_EVENT_PREFIX_STR:Ljava/lang/String; = "WAPI:"

.field private static final WIFI_AUTO_CONNECT_STR:Ljava/lang/String; = "WIFI_WILL_DO_AUTO_CONNECT"


# instance fields
.field private mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiServerManager;->getWifiServerServiceExtIface()Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/LgWifiMonitorHelper;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    .line 80
    return-void
.end method


# virtual methods
.method public convertEapEventToLge(Ljava/lang/String;)I
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiMonitorHelper;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    if-nez v0, :cond_0

    .line 309
    const/4 v0, -0x1

    .line 312
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiMonitorHelper;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v0, p1}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->convertEapEventToLge(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public handleConnectPolicyEvent(Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 6
    .param p1, "mStateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p2, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 339
    const-string v2, "WPA:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WIFI_WILL_DO_AUTO_CONNECT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 341
    const/4 v0, -0x1

    .line 342
    .local v0, "networkId":I
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "tokens":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    const-string v3, "WIFI_WILL_DO_AUTO_CONNECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 345
    const-string v2, "LgWifiMonitorHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: WIFI_WILL_DO_AUTO_CONNECT, netId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const v2, 0x24011

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v0, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 350
    .end local v0    # "networkId":I
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handleInterworkingEvent(Ljava/lang/String;Lcom/android/internal/util/StateMachine;)V
    .locals 17
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "mStateMachine"    # Lcom/android/internal/util/StateMachine;

    .prologue
    .line 86
    const-string v14, "\t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "dataTokens":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 88
    .local v1, "BSSID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 89
    .local v2, "SSID":Ljava/lang/String;
    move-object v4, v5

    .local v4, "arr$":[Ljava/lang/String;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v12, v4, v7

    .line 90
    .local v12, "token":Ljava/lang/String;
    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 92
    .local v10, "nameValue":[Ljava/lang/String;
    const-string v14, "ssid"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    .line 93
    const/4 v14, 0x1

    aget-object v2, v10, v14

    .line 89
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 97
    :cond_1
    const-string v14, "bssid"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 98
    const/4 v14, 0x1

    aget-object v1, v10, v14

    .line 99
    goto :goto_1

    .line 103
    .end local v10    # "nameValue":[Ljava/lang/String;
    .end local v12    # "token":Ljava/lang/String;
    :cond_2
    const-string v14, "INTERWORKING-AP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 106
    const/4 v11, 0x0

    .line 107
    .local v11, "roamingInd":I
    const/4 v13, 0x0

    .line 110
    .local v13, "typeInterworking":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ssid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\tbssid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "aggregateInfo":Ljava/lang/String;
    move-object v4, v5

    array-length v8, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_6

    aget-object v12, v4, v7

    .line 113
    .restart local v12    # "token":Ljava/lang/String;
    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 115
    .restart local v10    # "nameValue":[Ljava/lang/String;
    const-string v14, "type"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    .line 116
    const/4 v14, 0x1

    aget-object v13, v10, v14

    .line 112
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 119
    :cond_4
    const-string v14, "operator"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 120
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\toperator="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    goto :goto_3

    .line 123
    :cond_5
    const-string v14, "venue"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    .line 124
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\tvenue="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    goto :goto_3

    .line 128
    .end local v10    # "nameValue":[Ljava/lang/String;
    .end local v12    # "token":Ljava/lang/String;
    :cond_6
    const-string v14, "home"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 129
    const/4 v11, 0x1

    .line 130
    const-string v14, "LgWifiMonitorHelper"

    const-string v15, "[PASSPOINT] \'home\' networking connected"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_7
    :goto_4
    const-string v14, "LgWifiMonitorHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[PASSPOINT]  aggregate information = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const v14, 0x24047

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v11, v15, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 144
    .local v9, "m":Landroid/os/Message;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 145
    const-string v14, "LgWifiMonitorHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[PASSPOINT]  bssid ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "SSID ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " data="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v3    # "aggregateInfo":Ljava/lang/String;
    .end local v9    # "m":Landroid/os/Message;
    .end local v11    # "roamingInd":I
    .end local v13    # "typeInterworking":Ljava/lang/String;
    :cond_8
    :goto_5
    return-void

    .line 131
    .restart local v3    # "aggregateInfo":Ljava/lang/String;
    .restart local v11    # "roamingInd":I
    .restart local v13    # "typeInterworking":Ljava/lang/String;
    :cond_9
    const-string v14, "roaming"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 132
    const-string v14, "LgWifiMonitorHelper"

    const-string v15, "[PASSPOINT] \'roaming\' networking connected"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v11, 0x2

    goto :goto_4

    .line 136
    :cond_a
    const-string v14, "L2_roaming"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 137
    const-string v14, "LgWifiMonitorHelper"

    const-string v15, "[PASSPOINT] \'L2_roaming\' networking connected"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v11, 0x3

    goto :goto_4

    .line 146
    .end local v3    # "aggregateInfo":Ljava/lang/String;
    .end local v11    # "roamingInd":I
    .end local v13    # "typeInterworking":Ljava/lang/String;
    :cond_b
    const-string v14, "INTERWORKING-NO-MATCH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 151
    const v14, 0x24048

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 152
    .restart local v9    # "m":Landroid/os/Message;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 153
    const-string v14, "LgWifiMonitorHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[PASSPOINT]  bssid ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "SSID ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " data="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 154
    .end local v9    # "m":Landroid/os/Message;
    :cond_c
    const-string v14, "INTERWORKING-GAS-RESP-INFO"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 157
    const v14, 0x24049

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 158
    .restart local v9    # "m":Landroid/os/Message;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 159
    const-string v14, "LgWifiMonitorHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[PASSPOINT]  bssid ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "SSID ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " data="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 160
    .end local v9    # "m":Landroid/os/Message;
    :cond_d
    const-string v14, "INTERWORKING-ANQP-FETCH-STARTED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 163
    const v14, 0x2404a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 164
    .restart local v9    # "m":Landroid/os/Message;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 165
    const-string v14, "LgWifiMonitorHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[PASSPOINT]  bssid ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "SSID ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " data="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 166
    .end local v9    # "m":Landroid/os/Message;
    :cond_e
    const-string v14, "INTERWORKING-ANQP-FETCH-COMPLETED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 169
    const v14, 0x2404b

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 170
    .restart local v9    # "m":Landroid/os/Message;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 171
    const-string v14, "LgWifiMonitorHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[PASSPOINT]  bssid ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "SSID ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " data="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 172
    .end local v9    # "m":Landroid/os/Message;
    :cond_f
    const-string v14, "INTERWORKING-ANQP-RX-DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 174
    const v14, 0x2404c

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 175
    .restart local v9    # "m":Landroid/os/Message;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 176
    const-string v14, "LgWifiMonitorHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[PASSPOINT]  bssid ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "SSID ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " data="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 177
    .end local v9    # "m":Landroid/os/Message;
    :cond_10
    const-string v14, "INTERWORKING-3GPP-CONNECTING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 178
    const/4 v6, 0x0

    .line 180
    .local v6, "eap_method":Ljava/lang/String;
    const/4 v11, 0x0

    .line 181
    .restart local v11    # "roamingInd":I
    const/4 v13, 0x0

    .line 183
    .restart local v13    # "typeInterworking":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ssid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\tbssid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .restart local v3    # "aggregateInfo":Ljava/lang/String;
    move-object v4, v5

    array-length v8, v4

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v8, :cond_15

    aget-object v12, v4, v7

    .line 186
    .restart local v12    # "token":Ljava/lang/String;
    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 188
    .restart local v10    # "nameValue":[Ljava/lang/String;
    const-string v14, "eap_method"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_12

    .line 189
    const/4 v14, 0x1

    aget-object v6, v10, v14

    .line 185
    :cond_11
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 192
    :cond_12
    const-string v14, "type"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_13

    .line 193
    const/4 v14, 0x1

    aget-object v13, v10, v14

    .line 194
    goto :goto_7

    .line 196
    :cond_13
    const-string v14, "operator"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_14

    .line 197
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\toperator="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    goto :goto_7

    .line 200
    :cond_14
    const-string v14, "venue"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_11

    .line 201
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\tvenue="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    goto :goto_7

    .line 206
    .end local v10    # "nameValue":[Ljava/lang/String;
    .end local v12    # "token":Ljava/lang/String;
    :cond_15
    const-string v14, "home"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 207
    const/4 v11, 0x1

    .line 208
    const-string v14, "LgWifiMonitorHelper"

    const-string v15, "[PASSPOINT] \'home\' networking connected"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_16
    :goto_8
    const-string v14, "LgWifiMonitorHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[PASSPOINT]    aggregate information = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const v14, 0x2404e

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v11, v15, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 216
    .restart local v9    # "m":Landroid/os/Message;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 217
    const-string v14, "LgWifiMonitorHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[PASSPOINT]  bssid ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "SSID ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "eap_method ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " data="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 209
    .end local v9    # "m":Landroid/os/Message;
    :cond_17
    const-string v14, "roaming"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 210
    const-string v14, "LgWifiMonitorHelper"

    const-string v15, "[PASSPOINT] \'roaming\' networking connected"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v11, 0x2

    goto :goto_8

    .line 218
    .end local v3    # "aggregateInfo":Ljava/lang/String;
    .end local v6    # "eap_method":Ljava/lang/String;
    .end local v11    # "roamingInd":I
    .end local v13    # "typeInterworking":Ljava/lang/String;
    :cond_18
    const-string v14, "INTERWORKING-RC-CONNECTING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 219
    const/4 v6, 0x0

    .line 221
    .restart local v6    # "eap_method":Ljava/lang/String;
    const/4 v11, 0x0

    .line 222
    .restart local v11    # "roamingInd":I
    const/4 v13, 0x0

    .line 224
    .restart local v13    # "typeInterworking":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ssid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\tbssid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .restart local v3    # "aggregateInfo":Ljava/lang/String;
    move-object v4, v5

    array-length v8, v4

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v8, :cond_1d

    aget-object v12, v4, v7

    .line 227
    .restart local v12    # "token":Ljava/lang/String;
    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 228
    .restart local v10    # "nameValue":[Ljava/lang/String;
    const-string v14, "eap_method"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1a

    .line 229
    const/4 v14, 0x1

    aget-object v6, v10, v14

    .line 226
    :cond_19
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 232
    :cond_1a
    const-string v14, "type"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1b

    .line 233
    const/4 v14, 0x1

    aget-object v13, v10, v14

    .line 234
    goto :goto_a

    .line 236
    :cond_1b
    const-string v14, "operator"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1c

    .line 237
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\toperator="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    goto :goto_a

    .line 240
    :cond_1c
    const-string v14, "venue"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_19

    .line 241
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\tvenue="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    goto :goto_a

    .line 246
    .end local v10    # "nameValue":[Ljava/lang/String;
    .end local v12    # "token":Ljava/lang/String;
    :cond_1d
    const-string v14, "home"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 247
    const/4 v11, 0x1

    .line 251
    :cond_1e
    :goto_b
    const-string v14, "LgWifiMonitorHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[PASSPOINT]    aggregate information = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const v14, 0x2404f

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v11, v15, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 254
    .restart local v9    # "m":Landroid/os/Message;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 255
    const-string v14, "LgWifiMonitorHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[PASSPOINT]  bssid ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "SSID ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "eap_method ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " data="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 248
    .end local v9    # "m":Landroid/os/Message;
    :cond_1f
    const-string v14, "roaming"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 249
    const/4 v11, 0x2

    goto :goto_b

    .line 256
    .end local v3    # "aggregateInfo":Ljava/lang/String;
    .end local v6    # "eap_method":Ljava/lang/String;
    .end local v11    # "roamingInd":I
    .end local v13    # "typeInterworking":Ljava/lang/String;
    :cond_20
    const-string v14, "INTERWORKING-TLS-TTLS-CONNECTING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 257
    const/4 v6, 0x0

    .line 259
    .restart local v6    # "eap_method":Ljava/lang/String;
    const/4 v11, 0x0

    .line 260
    .restart local v11    # "roamingInd":I
    const/4 v13, 0x0

    .line 262
    .restart local v13    # "typeInterworking":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ssid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\tbssid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .restart local v3    # "aggregateInfo":Ljava/lang/String;
    move-object v4, v5

    array-length v8, v4

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v8, :cond_25

    aget-object v12, v4, v7

    .line 265
    .restart local v12    # "token":Ljava/lang/String;
    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 266
    .restart local v10    # "nameValue":[Ljava/lang/String;
    const-string v14, "eap_method"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_22

    .line 267
    const/4 v14, 0x1

    aget-object v6, v10, v14

    .line 264
    :cond_21
    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 270
    :cond_22
    const-string v14, "type"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_23

    .line 271
    const/4 v14, 0x1

    aget-object v13, v10, v14

    .line 272
    goto :goto_d

    .line 274
    :cond_23
    const-string v14, "operator"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_24

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_24

    .line 275
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\toperator="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    goto :goto_d

    .line 278
    :cond_24
    const-string v14, "venue"

    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21

    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_21

    .line 279
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\tvenue="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    goto :goto_d

    .line 284
    .end local v10    # "nameValue":[Ljava/lang/String;
    .end local v12    # "token":Ljava/lang/String;
    :cond_25
    const-string v14, "home"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_27

    .line 285
    const/4 v11, 0x1

    .line 289
    :cond_26
    :goto_e
    const-string v14, "LgWifiMonitorHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[PASSPOINT]     aggregate information = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const v14, 0x24050

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v11, v15, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 292
    .restart local v9    # "m":Landroid/os/Message;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 293
    const-string v14, "LgWifiMonitorHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[PASSPOINT]  bssid ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "SSID ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "eap_method ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " data="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 286
    .end local v9    # "m":Landroid/os/Message;
    :cond_27
    const-string v14, "roaming"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_26

    .line 287
    const/4 v11, 0x2

    goto :goto_e
.end method

.method public handleLgeEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiMonitorHelper;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiMonitorHelper;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v0, p1, p2}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->handleLgeEvent(ILjava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method public handleWAPIEvent(Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 3
    .param p1, "mStateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p2, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 325
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "WAPI:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "LgWifiMonitorHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got WAPI event ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v0, "certificate initialization failed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 329
    const v0, 0x24013

    invoke-virtual {p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const-string v0, "authentication failed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 332
    const v0, 0x24012

    invoke-virtual {p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public updateNetworkID(I)V
    .locals 1
    .param p1, "networkId"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiMonitorHelper;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiMonitorHelper;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v0, p1}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->updateNetworkID(I)V

    .line 321
    :cond_0
    return-void
.end method
