.class public Landroid/net/wifi/p2p/WifiP2pConfigEx;
.super Landroid/net/wifi/p2p/WifiP2pConfig;
.source "WifiP2pConfigEx.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfigEx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public pin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigEx$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfigEx$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pConfigEx;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pConfigEx;

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/net/wifi/WpsInfo;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/WpsInfo;-><init>(Landroid/net/wifi/WpsInfo;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    .line 84
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->groupOwnerIntent:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->groupOwnerIntent:I

    .line 85
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->netId:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->netId:I

    .line 86
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    .line 88
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "supplicantEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 20
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 21
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-lt v4, v8, :cond_0

    aget-object v4, v3, v6

    const-string v5, "P2P-GO-NEG-REQUEST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v3, v6

    const-string v5, "WFDS-PROV-DISC-DEFER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 25
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Malformed supplicant event"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 28
    :cond_1
    aget-object v4, v3, v7

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 29
    new-instance v4, Landroid/net/wifi/WpsInfo;

    invoke-direct {v4}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    .line 31
    array-length v4, v3

    if-le v4, v8, :cond_2

    .line 32
    aget-object v4, v3, v8

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "nameVal":[Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 40
    .local v0, "devPasswdId":I
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 59
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iput v6, v4, Landroid/net/wifi/WpsInfo;->setup:I

    .line 64
    :goto_1
    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    if-ne v0, v7, :cond_2

    .line 66
    const/4 v4, 0x3

    aget-object v4, v3, v4

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    .line 70
    .end local v0    # "devPasswdId":I
    .end local v2    # "nameVal":[Ljava/lang/String;
    :cond_2
    return-void

    .line 36
    .restart local v2    # "nameVal":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .restart local v0    # "devPasswdId":I
    goto :goto_0

    .line 43
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iput v7, v4, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 47
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iput v6, v4, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 51
    :sswitch_2
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iput v8, v4, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 55
    :sswitch_3
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v5, 0x5

    iput v5, v4, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x1000 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-super {p0}, Landroid/net/wifi/p2p/WifiP2pConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "\n pin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return-void
.end method
