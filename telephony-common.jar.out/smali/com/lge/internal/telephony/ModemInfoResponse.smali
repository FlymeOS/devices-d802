.class public final Lcom/lge/internal/telephony/ModemInfoResponse;
.super Ljava/lang/Object;
.source "ModemInfoResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static addrString:Ljava/lang/String;

.field static i:I

.field static parts:[Ljava/lang/String;

.field private static response:Ljava/lang/Object;

.field static st:Ljava/util/StringTokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/lge/internal/telephony/ModemInfoResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static convert_String_To_IntArray(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "expr"    # Ljava/lang/String;

    .prologue
    .line 503
    sget-object v3, Lcom/lge/internal/telephony/ModemInfoResponse;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "object : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-nez p0, :cond_1

    .line 506
    const/4 v1, 0x0

    .line 515
    :cond_0
    return-object v1

    :cond_1
    move-object v2, p0

    .line 508
    check-cast v2, Ljava/lang/String;

    .line 510
    .local v2, "target":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "parts":[Ljava/lang/String;
    array-length v3, v0

    new-array v1, v3, [I

    .line 512
    .local v1, "retResponse":[I
    const/4 v3, 0x0

    sput v3, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    :goto_0
    sget v3, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 513
    sget v3, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    sget v4, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    .line 512
    sget v3, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    goto :goto_0
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 47
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "id":I
    const-string v1, "CA"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {v0, p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->getUmtsModemInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 57
    :cond_0
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RIL_REQUEST_GET_MODEM_INFO: unsupported record. Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/lge/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :sswitch_0
    invoke-static {v0, p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->getCdmaCallInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 62
    :sswitch_1
    invoke-static {v0, p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->getCdmaSsInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 64
    :sswitch_2
    invoke-static {v0, p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->getCdmaPhInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 66
    :sswitch_3
    invoke-static {v0, p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->getCdmaNvInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 70
    :sswitch_4
    invoke-static {v0, p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->getDbgScrInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 73
    :sswitch_5
    invoke-static {v0, p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->getDsInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 76
    :sswitch_6
    invoke-static {v0, p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->getWBaseInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 80
    :sswitch_7
    invoke-static {v0, p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->getModemMltInfo(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x60000 -> :sswitch_6
        0xb0000 -> :sswitch_5
        0xc0000 -> :sswitch_7
    .end sparse-switch
.end method

.method public static getCdmaCallInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p0, "id"    # I
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 101
    packed-switch p0, :pswitch_data_0

    .line 119
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_CALL_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :pswitch_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 110
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rocky :msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 116
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCdmaNvInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p0, "id"    # I
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 268
    sparse-switch p0, :sswitch_data_0

    .line 289
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_NV_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 292
    :goto_0
    :sswitch_1
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 285
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 268
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x30d0f -> :sswitch_2
        0x3c364 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getCdmaPhInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p0, "id"    # I
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 177
    packed-switch p0, :pswitch_data_0

    .line 260
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_PH_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :pswitch_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 221
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rocky :msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    :goto_0
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 235
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 241
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->addrString:Ljava/lang/String;

    .line 242
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->addrString:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    .line 243
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 244
    sput v2, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    :goto_1
    sget v0, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    sget-object v1, Lcom/lge/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 245
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    sget v1, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    sget-object v2, Lcom/lge/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    sget v3, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 244
    sget v0, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    goto :goto_1

    .line 250
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 255
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x20000
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getCdmaSsInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p0, "id"    # I
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 127
    sparse-switch p0, :sswitch_data_0

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_SS_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :sswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 152
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rocky :msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    :goto_0
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 158
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 162
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->addrString:Ljava/lang/String;

    .line 163
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->addrString:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 165
    sput v2, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    :goto_1
    sget v0, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    sget-object v1, Lcom/lge/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 166
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    sget v1, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    sget-object v2, Lcom/lge/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    sget v3, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 165
    sget v0, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    goto :goto_1

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x10001 -> :sswitch_0
        0x10002 -> :sswitch_0
        0x10003 -> :sswitch_0
        0x10004 -> :sswitch_0
        0x10005 -> :sswitch_0
        0x10006 -> :sswitch_1
        0x10007 -> :sswitch_1
        0x1000c -> :sswitch_2
        0x1000f -> :sswitch_0
        0x10016 -> :sswitch_1
        0x10017 -> :sswitch_1
        0x100ca -> :sswitch_2
    .end sparse-switch
.end method

.method public static getDbgScrInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p0, "id"    # I
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 302
    packed-switch p0, :pswitch_data_0

    .line 341
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_DBGSCR_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 344
    :cond_0
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 332
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->addrString:Ljava/lang/String;

    .line 333
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->addrString:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    .line 334
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 335
    const/4 v0, 0x0

    sput v0, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    :goto_0
    sget v0, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    sget-object v1, Lcom/lge/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 336
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    sget v1, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    sget-object v2, Lcom/lge/internal/telephony/ModemInfoResponse;->parts:[Ljava/lang/String;

    sget v3, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 335
    sget v0, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/internal/telephony/ModemInfoResponse;->i:I

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x40000
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDsInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p0, "id"    # I
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 349
    packed-switch p0, :pswitch_data_0

    .line 375
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_DBGSCR_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :pswitch_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 378
    :goto_0
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 370
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0xb0000
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getModemMltInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p0, "id"    # I
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 474
    packed-switch p0, :pswitch_data_0

    .line 484
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C_MLT_INFO: unsupported record. Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    :pswitch_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 479
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 480
    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 488
    sget-object v1, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v1

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0xc0001
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getUmtsModemInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p0, "id"    # I
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 527
    packed-switch p0, :pswitch_data_0

    .line 535
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUmtsCallInfo: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :pswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 530
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 531
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUmtsCallInfo :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public static getWBaseInfo(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p0, "id"    # I
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 383
    sparse-switch p0, :sswitch_data_0

    .line 465
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_C_DBGSCR_INFO: unsupported record. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/lge/internal/telephony/ModemInfoResponse;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    .line 468
    :goto_0
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    return-object v0

    .line 456
    :sswitch_1
    sget-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!"

    invoke-static {v0, v1}, Lcom/lge/internal/telephony/ModemInfoResponse;->convert_String_To_IntArray(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 462
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/telephony/ModemInfoResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 383
    nop

    :sswitch_data_0
    .sparse-switch
        0x60000 -> :sswitch_0
        0x60001 -> :sswitch_0
        0x60002 -> :sswitch_0
        0x60003 -> :sswitch_0
        0x60004 -> :sswitch_0
        0x60005 -> :sswitch_0
        0x60006 -> :sswitch_0
        0x60007 -> :sswitch_0
        0x60008 -> :sswitch_0
        0x60009 -> :sswitch_0
        0x6000a -> :sswitch_0
        0x6000b -> :sswitch_0
        0x6000c -> :sswitch_1
        0x6000d -> :sswitch_1
        0x6000e -> :sswitch_0
        0x6000f -> :sswitch_0
        0x60010 -> :sswitch_0
        0x60011 -> :sswitch_0
        0x60012 -> :sswitch_0
        0x60013 -> :sswitch_0
        0x60014 -> :sswitch_0
        0x60015 -> :sswitch_0
        0x60016 -> :sswitch_0
        0x60017 -> :sswitch_0
        0x60019 -> :sswitch_0
        0x6001c -> :sswitch_1
        0x6001f -> :sswitch_0
        0x60024 -> :sswitch_0
        0x60027 -> :sswitch_0
        0x60028 -> :sswitch_1
        0x6002b -> :sswitch_0
        0x6002c -> :sswitch_0
        0x6002e -> :sswitch_0
        0x6002f -> :sswitch_0
        0x60031 -> :sswitch_0
        0x60034 -> :sswitch_0
        0x60035 -> :sswitch_0
        0x60036 -> :sswitch_0
        0x60037 -> :sswitch_0
        0x60038 -> :sswitch_2
        0x6003a -> :sswitch_0
        0x6003b -> :sswitch_0
        0x6003c -> :sswitch_0
        0x6dead -> :sswitch_0
    .end sparse-switch
.end method

.method public static idToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 89
    sparse-switch p0, :sswitch_data_0

    .line 95
    const-string v0, "<unknown record>"

    :goto_0
    return-object v0

    .line 90
    :sswitch_0
    const-string v0, "RIL_C_CALL_INFO"

    goto :goto_0

    .line 91
    :sswitch_1
    const-string v0, "RIL_C_SS_INFO"

    goto :goto_0

    .line 92
    :sswitch_2
    const-string v0, "RIL_C_PH_INFO"

    goto :goto_0

    .line 93
    :sswitch_3
    const-string v0, "RIL_C_NV_INFO"

    goto :goto_0

    .line 94
    :sswitch_4
    const-string v0, "RIL_C_DBGSCR_INFO"

    goto :goto_0

    .line 89
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
