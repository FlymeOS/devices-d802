.class public Lcom/lge/wifi/impl/WifiConnectionInfo;
.super Ljava/lang/Object;
.source "WifiConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/impl/WifiConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiConnectionInfo"

.field public static final WIFICONN_SEPERATOR:Ljava/lang/String; = "\t"


# instance fields
.field public BSSID:Ljava/lang/String;

.field private DEBUG:Z

.field public DateInfo:Ljava/lang/String;

.field public ErrorType:I

.field public KeyType:Ljava/lang/String;

.field public SSID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/lge/wifi/impl/WifiConnectionInfo$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/WifiConnectionInfo$1;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/WifiConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->SSID:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->ErrorType:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->KeyType:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DEBUG:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v1, ""

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->SSID:Ljava/lang/String;

    .line 22
    const-string v1, ""

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    .line 23
    iput v4, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->ErrorType:I

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->KeyType:Ljava/lang/String;

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    .line 26
    iput-boolean v4, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DEBUG:Z

    .line 124
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->SSID:Ljava/lang/String;

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiConnectionInfo;->getDateInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    .line 126
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    iput v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->ErrorType:I

    .line 128
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->KeyType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    .line 134
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->KeyType:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lge/wifi/impl/WifiConnectionInfo;)V
    .locals 2
    .param p1, "source"    # Lcom/lge/wifi/impl/WifiConnectionInfo;

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->SSID:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->ErrorType:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->KeyType:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DEBUG:Z

    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p1, Lcom/lge/wifi/impl/WifiConnectionInfo;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->SSID:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/lge/wifi/impl/WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    .line 116
    iget v0, p1, Lcom/lge/wifi/impl/WifiConnectionInfo;->ErrorType:I

    iput v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->ErrorType:I

    .line 117
    iget-object v0, p1, Lcom/lge/wifi/impl/WifiConnectionInfo;->KeyType:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->KeyType:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    .line 120
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v6, ""

    iput-object v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->SSID:Ljava/lang/String;

    .line 22
    const-string v6, ""

    iput-object v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    .line 23
    iput v9, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->ErrorType:I

    .line 24
    const-string v6, ""

    iput-object v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->KeyType:Ljava/lang/String;

    .line 25
    const-string v6, ""

    iput-object v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    .line 26
    iput-boolean v9, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DEBUG:Z

    .line 32
    const-string v6, "\t"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, "tokens":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x5

    if-lt v6, v7, :cond_7

    .line 35
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_7

    aget-object v4, v0, v1

    .line 36
    .local v4, "token":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "nameValue":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 35
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    aget-object v6, v3, v9

    const-string v7, "ssid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 43
    aget-object v6, v3, v10

    iput-object v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->SSID:Ljava/lang/String;

    .line 44
    iget-boolean v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiConnectionInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>> SSID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 47
    :cond_2
    aget-object v6, v3, v9

    const-string v7, "date_info"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 48
    aget-object v6, v3, v10

    iput-object v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    .line 49
    iget-boolean v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiConnectionInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>> DateInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 52
    :cond_3
    aget-object v6, v3, v9

    const-string v7, "error_type"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 53
    aget-object v6, v3, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->ErrorType:I

    .line 54
    iget-boolean v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiConnectionInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>> ErrorType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->ErrorType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 57
    :cond_4
    aget-object v6, v3, v9

    const-string v7, "key_type"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 58
    aget-object v6, v3, v10

    iput-object v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->KeyType:Ljava/lang/String;

    .line 59
    iget-boolean v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiConnectionInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>> KeyType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->KeyType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 62
    :cond_5
    aget-object v6, v3, v9

    const-string v7, "bssid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 63
    aget-object v6, v3, v10

    iput-object v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    .line 64
    iget-boolean v6, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiConnectionInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>> bssid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 68
    :cond_6
    const-string v6, "WifiConnectionInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "undefined string = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "nameValue":[Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private getDateInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 108
    .local v0, "dd":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p0, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    instance-of v3, p1, Lcom/lge/wifi/impl/WifiConnectionInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 81
    check-cast v0, Lcom/lge/wifi/impl/WifiConnectionInfo;

    .line 82
    .local v0, "other":Lcom/lge/wifi/impl/WifiConnectionInfo;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 83
    :cond_3
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 85
    :cond_4
    iget-object v1, v0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, "\tdate_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, "\terror_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->ErrorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, "\tkey_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->KeyType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, "\tbssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->ErrorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->KeyType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return-void
.end method
