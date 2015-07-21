.class public Lcom/lge/wfds/session/UdpDataSender;
.super Ljava/lang/Object;
.source "UdpDataSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/session/UdpDataSender$1;,
        Lcom/lge/wfds/session/UdpDataSender$UdpClient;
    }
.end annotation


# static fields
.field private static final COORDINATION_VERSION:I = 0x0

.field static final REQ_BUFF_MAX_SIZE:I = 0x200

.field static final SESSION_MAC_SIZE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "WfdsSession:SEND"

.field private static final VENDOR_INFORMATION:Ljava/lang/String; = "LG Electronics Inc."

.field static mRequestByteArray:[B


# instance fields
.field mServerIpAddress:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wfds/session/UdpDataSender;->mRequestByteArray:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/session/UdpDataSender;->mServerIpAddress:Ljava/net/InetAddress;

    .line 31
    return-void
.end method

.method static synthetic access$100(Lcom/lge/wfds/session/UdpDataSender;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/session/UdpDataSender;
    .param p1, "x1"    # [B

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/wfds/session/UdpDataSender;->sendDataPacket([B)V

    return-void
.end method

.method public static macToByteArray(Ljava/lang/String;)[B
    .locals 8
    .param p0, "macAddress"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x6

    .line 89
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "macAddressParts":[Ljava/lang/String;
    new-array v3, v7, [B

    .line 92
    .local v3, "macAddressBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 94
    :try_start_0
    aget-object v5, v4, v2

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 95
    .local v1, "hex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    aput-byte v5, v3, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "hex":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "WfdsSession:SEND"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot convert: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v3, 0x0

    .line 101
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "macAddressBytes":[B
    :cond_0
    return-object v3
.end method

.method public static requestBuilder(IILcom/lge/wfds/session/AspSession;)[B
    .locals 6
    .param p0, "type"    # I
    .param p1, "seq"    # I
    .param p2, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    const/4 v3, 0x0

    .line 133
    if-nez p2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v3

    .line 137
    :cond_1
    const/16 v4, 0x200

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 138
    .local v0, "buff":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 139
    int-to-byte v4, p0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 140
    int-to-byte v4, p1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 142
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/wfds/session/UdpDataSender;->macToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 143
    .local v2, "session_mac_byte_array":[B
    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 148
    iget v4, p2, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 150
    packed-switch p0, :pswitch_data_0

    .line 184
    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 185
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    new-array v3, v4, [B

    .line 186
    .local v3, "t":[B
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 153
    .end local v3    # "t":[B
    :pswitch_1
    iget v4, p2, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 154
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 155
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 156
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 165
    :pswitch_2
    iget v4, p2, Lcom/lge/wfds/session/AspSession;->reason:I

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 168
    :pswitch_3
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 169
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/session/AspServicePort;

    .line 170
    .local v1, "port_":Lcom/lge/wfds/session/AspServicePort;
    iget v4, v1, Lcom/lge/wfds/session/AspServicePort;->port:I

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 171
    iget v4, v1, Lcom/lge/wfds/session/AspServicePort;->proto:I

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 175
    .end local v1    # "port_":Lcom/lge/wfds/session/AspServicePort;
    :pswitch_4
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 176
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 177
    iget-object v4, p2, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static requestBuilderAck(III)[B
    .locals 3
    .param p0, "type"    # I
    .param p1, "seq"    # I
    .param p2, "reason"    # I

    .prologue
    .line 119
    const/16 v2, 0x200

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    .local v0, "buff":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    int-to-byte v2, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 122
    int-to-byte v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 123
    const/16 v2, 0xff

    if-ne p0, v2, :cond_0

    .line 124
    int-to-byte v2, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 127
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 128
    .local v1, "t":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 129
    return-object v1
.end method

.method public static requestBuilderVersion(IIILjava/lang/String;)[B
    .locals 3
    .param p0, "type"    # I
    .param p1, "seq"    # I
    .param p2, "version"    # I
    .param p3, "vendor_information"    # Ljava/lang/String;

    .prologue
    .line 105
    const/16 v2, 0x200

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 106
    .local v0, "buff":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 107
    int-to-byte v2, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 108
    int-to-byte v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 109
    int-to-byte v2, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 113
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 114
    .local v1, "t":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 115
    return-object v1
.end method

.method private send([B)V
    .locals 4
    .param p1, "msg"    # [B

    .prologue
    .line 192
    new-instance v0, Lcom/lge/wfds/session/UdpDataSender$UdpClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/wfds/session/UdpDataSender$UdpClient;-><init>(Lcom/lge/wfds/session/UdpDataSender;Lcom/lge/wfds/session/UdpDataSender$1;)V

    .line 194
    .local v0, "udpClient":Lcom/lge/wfds/session/UdpDataSender$UdpClient;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lge/wfds/session/UdpDataSender$UdpClient;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 195
    return-void
.end method

.method private sendDataPacket([B)V
    .locals 8
    .param p1, "msg"    # [B

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, "socket":Ljava/net/DatagramSocket;
    iget-object v5, p0, Lcom/lge/wfds/session/UdpDataSender;->mServerIpAddress:Ljava/net/InetAddress;

    if-nez v5, :cond_0

    .line 83
    :goto_0
    return-void

    .line 66
    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/DatagramSocket;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    .end local v3    # "socket":Ljava/net/DatagramSocket;
    .local v4, "socket":Ljava/net/DatagramSocket;
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 68
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v5, 0x1c43

    invoke-direct {v0, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 69
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v4, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 70
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v5, p1

    iget-object v6, p0, Lcom/lge/wfds/session/UdpDataSender;->mServerIpAddress:Ljava/net/InetAddress;

    const/16 v7, 0x1c43

    invoke-direct {v1, p1, v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 71
    .local v1, "data":Ljava/net/DatagramPacket;
    invoke-virtual {v4, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 72
    const-string v5, "WfdsSession:SEND"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEND: Dst IP("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Dst Port("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 82
    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v3    # "socket":Ljava/net/DatagramSocket;
    goto :goto_0

    .line 76
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v1    # "data":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/net/SocketException;
    :goto_1
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v2    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "socket":Ljava/net/DatagramSocket;
    .restart local v4    # "socket":Ljava/net/DatagramSocket;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v3    # "socket":Ljava/net/DatagramSocket;
    goto :goto_3

    .line 78
    .end local v3    # "socket":Ljava/net/DatagramSocket;
    .restart local v4    # "socket":Ljava/net/DatagramSocket;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v3    # "socket":Ljava/net/DatagramSocket;
    goto :goto_2

    .line 76
    .end local v3    # "socket":Ljava/net/DatagramSocket;
    .restart local v4    # "socket":Ljava/net/DatagramSocket;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v3    # "socket":Ljava/net/DatagramSocket;
    goto :goto_1
.end method


# virtual methods
.method public sendRequest(IILcom/lge/wfds/session/AspSession;Ljava/lang/String;)V
    .locals 3
    .param p1, "req_type"    # I
    .param p2, "seq"    # I
    .param p3, "session"    # Lcom/lge/wfds/session/AspSession;
    .param p4, "ip_address"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "WfdsSession:SEND"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendRequest :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/lge/wfds/session/AspSessionProtoOpcode;->getReqTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", To:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/session/UdpDataSender;->mServerIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 47
    invoke-static {p1, p2, p3}, Lcom/lge/wfds/session/UdpDataSender;->requestBuilder(IILcom/lge/wfds/session/AspSession;)[B

    move-result-object v0

    sput-object v0, Lcom/lge/wfds/session/UdpDataSender;->mRequestByteArray:[B

    .line 52
    :goto_0
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/lge/wfds/session/UdpDataSender;->mServerIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0, p4}, Lcom/lge/wfds/session/UdpDataSender;->setTargetIpAddress(Ljava/lang/String;)V

    .line 54
    const-string v0, "WfdsSession:SEND"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target ip address is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    sget-object v0, Lcom/lge/wfds/session/UdpDataSender;->mRequestByteArray:[B

    invoke-direct {p0, v0}, Lcom/lge/wfds/session/UdpDataSender;->send([B)V

    .line 57
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x0

    const-string v1, "LG Electronics Inc."

    invoke-static {p1, p2, v0, v1}, Lcom/lge/wfds/session/UdpDataSender;->requestBuilderVersion(IIILjava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/lge/wfds/session/UdpDataSender;->mRequestByteArray:[B

    goto :goto_0
.end method

.method public setTargetIpAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wfds/session/UdpDataSender;->mServerIpAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
