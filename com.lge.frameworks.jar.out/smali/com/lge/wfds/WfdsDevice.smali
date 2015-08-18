.class public Lcom/lge/wfds/WfdsDevice;
.super Landroid/net/wifi/p2p/WifiP2pDevice;
.source "WfdsDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wfds/WfdsDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WfdsDevice"

.field private static final detailedDevicePattern:Ljava/util/regex/Pattern;


# instance fields
.field public wfdsDeviceFound:J

.field public wfdsInfo:Lcom/lge/wfds/WfdsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) (\\d+ )?p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) pri_dev_type=(\\d+-[0-9a-fA-F]+-\\d+) name=\'(.*)\' config_methods=(0x[0-9a-fA-F]+) dev_capab=(0x[0-9a-fA-F]+) group_capab=(0x[0-9a-fA-F]+)( wfd_dev_info=0x([0-9a-fA-F]{12}))?($| .*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lge/wfds/WfdsDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    .line 225
    new-instance v0, Lcom/lge/wfds/WfdsDevice$1;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDevice$1;-><init>()V

    sput-object v0, Lcom/lge/wfds/WfdsDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/lge/wfds/WfdsDevice;)V
    .locals 2
    .param p1, "source"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p1, Lcom/lge/wfds/WfdsDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds/WfdsDevice;->deviceName:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    .line 187
    iget-object v0, p1, Lcom/lge/wfds/WfdsDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds/WfdsDevice;->primaryDeviceType:Ljava/lang/String;

    .line 188
    iget-object v0, p1, Lcom/lge/wfds/WfdsDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds/WfdsDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 189
    iget v0, p1, Lcom/lge/wfds/WfdsDevice;->wpsConfigMethodsSupported:I

    iput v0, p0, Lcom/lge/wfds/WfdsDevice;->wpsConfigMethodsSupported:I

    .line 190
    iget v0, p1, Lcom/lge/wfds/WfdsDevice;->deviceCapability:I

    iput v0, p0, Lcom/lge/wfds/WfdsDevice;->deviceCapability:I

    .line 191
    iget v0, p1, Lcom/lge/wfds/WfdsDevice;->groupCapability:I

    iput v0, p0, Lcom/lge/wfds/WfdsDevice;->groupCapability:I

    .line 192
    iget v0, p1, Lcom/lge/wfds/WfdsDevice;->status:I

    iput v0, p0, Lcom/lge/wfds/WfdsDevice;->status:I

    .line 193
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 194
    iget-wide v0, p1, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    iput-wide v0, p0, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    .line 195
    new-instance v0, Lcom/lge/wfds/WfdsInfo;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    invoke-direct {v0, v1}, Lcom/lge/wfds/WfdsInfo;-><init>(Lcom/lge/wfds/WfdsInfo;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    .line 197
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x4

    .line 61
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 62
    const-string v3, "[ \n]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "tokens":[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v5, :cond_0

    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 65
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Malformed supplicant event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_0
    sget-object v3, Lcom/lge/wfds/WfdsDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 69
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Malformed supplicant event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_1
    array-length v3, v2

    packed-switch v3, :pswitch_data_0

    .line 78
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wfds/WfdsDevice;->primaryDeviceType:Ljava/lang/String;

    .line 80
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wfds/WfdsDevice;->deviceName:Ljava/lang/String;

    .line 81
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/wfds/WfdsDevice;->parseHex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lge/wfds/WfdsDevice;->wpsConfigMethodsSupported:I

    .line 82
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/wfds/WfdsDevice;->parseHex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lge/wfds/WfdsDevice;->deviceCapability:I

    .line 83
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/wfds/WfdsDevice;->parseHex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lge/wfds/WfdsDevice;->groupCapability:I

    .line 84
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 85
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "str":Ljava/lang/String;
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/wfds/WfdsDevice;->parseHex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wfds/WfdsDevice;->parseHex(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lge/wfds/WfdsDevice;->parseHex(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    iput-object v3, p0, Lcom/lge/wfds/WfdsDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 91
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsDevice;->constructWfdsInfo(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iput-object p1, p0, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private constructWfdsInfo(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 97
    const-string v2, "[ \n]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "tokens":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "WFDS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    const-string v2, "WfdsDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFDS: this device is not supported to wfds "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/WfdsDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-wide v6, p0, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    .line 119
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    .line 106
    iget-wide v2, p0, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 107
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    .line 109
    :cond_1
    new-instance v2, Lcom/lge/wfds/WfdsInfo;

    invoke-direct {v2}, Lcom/lge/wfds/WfdsInfo;-><init>()V

    iput-object v2, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    .line 111
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 112
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lcom/lge/wfds/WfdsDevice;->parseWfdsInfo(Ljava/lang/String;)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget-object v3, p0, Lcom/lge/wfds/WfdsDevice;->deviceName:Ljava/lang/String;

    iput-object v3, v2, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    .line 118
    const/4 v2, 0x3

    iput v2, p0, Lcom/lge/wfds/WfdsDevice;->status:I

    goto :goto_0
.end method

.method private parseHex(Ljava/lang/String;)I
    .locals 5
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "num":I
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 258
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 262
    :goto_0
    return v1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "WfdsDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse hex string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseWfdsInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 122
    const-string v1, "wfds_serv_name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v1, "adv_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iput v4, v1, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v1, "service_info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_3
    const-string v1, "service_status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    :try_start_1
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    const/4 v2, 0x1

    iput v2, v1, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const-string v1, "session_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 142
    :try_start_2
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionId:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 144
    :catch_2
    move-exception v0

    .line 145
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iput v4, v1, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionId:I

    goto/16 :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string v1, "session_mac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 148
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    goto/16 :goto_0

    .line 149
    :cond_6
    const-string v1, "session_info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiP2pDevice()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 208
    .local v0, "dst":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->deviceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 213
    iget v1, p0, Lcom/lge/wfds/WfdsDevice;->wpsConfigMethodsSupported:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 214
    iget v1, p0, Lcom/lge/wfds/WfdsDevice;->deviceCapability:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 215
    iget v1, p0, Lcom/lge/wfds/WfdsDevice;->groupCapability:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 216
    iget v1, p0, Lcom/lge/wfds/WfdsDevice;->status:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 217
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iget-object v2, p0, Lcom/lge/wfds/WfdsDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v1, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 221
    .end local v0    # "dst":Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_0
    return-object v0

    .restart local v0    # "dst":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-super {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 169
    iget-object v1, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Lcom/lge/wfds/WfdsDevice;)V
    .locals 2
    .param p1, "device"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsDevice;->getWifiP2pDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 156
    iget-wide v0, p1, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    iput-wide v0, p0, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    .line 157
    iget-object v0, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iput-object v0, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    .line 158
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 201
    invoke-super {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 202
    iget-wide v0, p0, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 203
    iget-object v0, p0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 204
    return-void
.end method
