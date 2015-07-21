.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I

.field public static final SIGNAL_STRENGTH_AWESOME:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private datafeature:I

.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmEcn0Qdbm:I

.field private mGsmRscpQdbm:I

.field private mGsmRssiQdbm:I

.field private mGsmSignalStrength:I

.field private mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTdScdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    sget v0, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 69
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "awesome"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "best"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 462
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x63

    const/4 v3, 0x0

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput v3, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 102
    new-instance v0, Lcom/lge/telephony/LGSignalStrength;

    invoke-direct {v0}, Lcom/lge/telephony/LGSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    .line 129
    iput v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 130
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 131
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 132
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 133
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 134
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 135
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 136
    iput v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 137
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 138
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 139
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 140
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 141
    iput v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 144
    iput v3, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 146
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 102
    new-instance v1, Lcom/lge/telephony/LGSignalStrength;

    invoke-direct {v1}, Lcom/lge/telephony/LGSignalStrength;-><init>()V

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 198
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 201
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 202
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 102
    new-instance v0, Lcom/lge/telephony/LGSignalStrength;

    invoke-direct {v0}, Lcom/lge/telephony/LGSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    .line 183
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 186
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZIII)V
    .locals 2
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z
    .param p14, "gsmRssiQdbm"    # I
    .param p15, "gsmRscpQdbm"    # I
    .param p16, "gsmEcn0Qdbm"    # I

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 102
    new-instance v1, Lcom/lge/telephony/LGSignalStrength;

    invoke-direct {v1}, Lcom/lge/telephony/LGSignalStrength;-><init>()V

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    .line 216
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 219
    move/from16 v0, p14

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 220
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 221
    move/from16 v0, p16

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 222
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 102
    new-instance v0, Lcom/lge/telephony/LGSignalStrength;

    invoke-direct {v0}, Lcom/lge/telephony/LGSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    .line 234
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 102
    new-instance v1, Lcom/lge/telephony/LGSignalStrength;

    invoke-direct {v1}, Lcom/lge/telephony/LGSignalStrength;-><init>()V

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 379
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGSignalStrength;->readFrom(Landroid/os/Parcel;)V

    .line 381
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 102
    new-instance v0, Lcom/lge/telephony/LGSignalStrength;

    invoke-direct {v0}, Lcom/lge/telephony/LGSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    .line 247
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v3, 0x63

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 102
    new-instance v0, Lcom/lge/telephony/LGSignalStrength;

    invoke-direct {v0}, Lcom/lge/telephony/LGSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    .line 157
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 158
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 159
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 160
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 161
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 162
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 163
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 164
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 165
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 166
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 167
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 168
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 169
    iput v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 170
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 171
    return-void
.end method

.method private getLteLevel_dcm()I
    .locals 8

    .prologue
    const v7, 0x7fffffff

    const/4 v6, -0x1

    .line 1124
    const/4 v2, 0x0

    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 1127
    .local v3, "snrIconLevel":I
    const/4 v1, -0x1

    .line 1138
    .local v1, "rsrqIconLevel":I
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v7, :cond_1

    const/4 v0, 0x0

    .line 1152
    :goto_0
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v7, :cond_7

    const/4 v1, 0x0

    .line 1163
    :goto_1
    if-eq v1, v6, :cond_d

    if-eq v0, v6, :cond_d

    .line 1169
    if-ge v0, v1, :cond_c

    .line 1184
    .end local v0    # "rsrpIconLevel":I
    :cond_0
    :goto_2
    return v0

    .line 1139
    .restart local v0    # "rsrpIconLevel":I
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x2c

    if-le v4, v5, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 1140
    :cond_2
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x71

    if-lt v4, v5, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1141
    :cond_3
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x76

    if-lt v4, v5, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    .line 1142
    :cond_4
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x7b

    if-lt v4, v5, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    .line 1143
    :cond_5
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x80

    if-lt v4, v5, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    .line 1144
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 1153
    :cond_7
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v5, -0xc

    if-lt v4, v5, :cond_8

    const/4 v1, 0x4

    goto :goto_1

    .line 1154
    :cond_8
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v5, -0xe

    if-lt v4, v5, :cond_9

    const/4 v1, 0x3

    goto :goto_1

    .line 1155
    :cond_9
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v5, -0x11

    if-lt v4, v5, :cond_a

    const/4 v1, 0x2

    goto :goto_1

    .line 1156
    :cond_a
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v5, -0x13

    if-lt v4, v5, :cond_b

    const/4 v1, 0x1

    goto :goto_1

    .line 1157
    :cond_b
    const/4 v1, 0x0

    goto :goto_1

    :cond_c
    move v0, v1

    .line 1169
    goto :goto_2

    .line 1172
    :cond_d
    if-eq v1, v6, :cond_e

    move v0, v1

    goto :goto_2

    .line 1174
    :cond_e
    if-ne v0, v6, :cond_0

    .line 1177
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0x3f

    if-le v4, v5, :cond_10

    const/4 v2, 0x0

    :cond_f
    :goto_3
    move v0, v2

    .line 1184
    goto :goto_2

    .line 1178
    :cond_10
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_11

    const/4 v2, 0x4

    goto :goto_3

    .line 1179
    :cond_11
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_12

    const/4 v2, 0x3

    goto :goto_3

    .line 1180
    :cond_12
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_13

    const/4 v2, 0x2

    goto :goto_3

    .line 1181
    :cond_13
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v4, :cond_f

    const/4 v2, 0x1

    goto :goto_3
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1466
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 393
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 394
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 395
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 396
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 397
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 398
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 399
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 400
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 401
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 402
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 403
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 404
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 405
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 406
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 409
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 410
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 411
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 414
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 118
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 119
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 120
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1359
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1360
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1361
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1362
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1363
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1364
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1365
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1366
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1367
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1368
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1369
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1370
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1371
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1372
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1374
    const-string v0, "Dataf"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 1377
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGSignalStrength;->readFrom(Landroid/os/Bundle;)V

    .line 1379
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 318
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 319
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 320
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 321
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 322
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 323
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 324
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 325
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 326
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 327
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 328
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 329
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 330
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 331
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 333
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 334
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 335
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 338
    iget v0, p1, Landroid/telephony/SignalStrength;->datafeature:I

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 341
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, v1}, Lcom/lge/telephony/LGSignalStrength;->copyFrom(Lcom/lge/telephony/LGSignalStrength;)V

    .line 343
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1301
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1310
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1302
    :catch_0
    move-exception v1

    .line 1303
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1310
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1388
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1389
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1390
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1391
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1392
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1393
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1394
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1395
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1396
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1397
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1398
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1399
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1400
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1401
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1403
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGSignalStrength;->writeTo(Landroid/os/Bundle;)V

    .line 1404
    return-void
.end method

.method public getAlternateLteLevel()I
    .locals 3

    .prologue
    .line 1032
    const/4 v0, 0x0

    .line 1034
    .local v0, "rsrpIconLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x2c

    if-le v1, v2, :cond_1

    const/4 v0, -0x1

    .line 1041
    :cond_0
    :goto_0
    return v0

    .line 1035
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x61

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 1036
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 1037
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 1038
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x78

    if-lt v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 1039
    :cond_5
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x8c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsuLevel()I
    .locals 4

    .prologue
    .line 677
    const/4 v0, 0x0

    .line 678
    .local v0, "asuLevel":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    .line 679
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 680
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 681
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 703
    :goto_0
    return v0

    .line 683
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_0

    .line 686
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0

    .line 689
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 690
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 691
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_3

    .line 693
    move v0, v1

    goto :goto_0

    .line 694
    :cond_3
    if-nez v1, :cond_4

    .line 696
    move v0, v2

    goto :goto_0

    .line 699
    :cond_4
    if-ge v1, v2, :cond_5

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 927
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 928
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 932
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 940
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 947
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 949
    .local v4, "level":I
    :goto_2
    return v4

    .line 933
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 934
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 935
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 936
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 937
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 941
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 942
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 943
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 944
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 945
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 947
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 7

    .prologue
    .line 891
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 892
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 897
    .local v1, "cdmaEcio":I
    iget-object v6, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v6, v0, v1}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v5

    .line 898
    .local v5, "lgLevel":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 918
    .end local v5    # "lgLevel":I
    :goto_0
    return v5

    .line 903
    .restart local v5    # "lgLevel":I
    :cond_0
    const/16 v6, -0x4b

    if-lt v0, v6, :cond_1

    const/4 v3, 0x4

    .line 910
    .local v3, "levelDbm":I
    :goto_1
    const/16 v6, -0x5a

    if-lt v1, v6, :cond_5

    const/4 v4, 0x4

    .line 916
    .local v4, "levelEcio":I
    :goto_2
    if-ge v3, v4, :cond_9

    move v2, v3

    .local v2, "level":I
    :goto_3
    move v5, v2

    .line 918
    goto :goto_0

    .line 904
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_1
    const/16 v6, -0x55

    if-lt v0, v6, :cond_2

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_1

    .line 905
    .end local v3    # "levelDbm":I
    :cond_2
    const/16 v6, -0x5f

    if-lt v0, v6, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_1

    .line 906
    .end local v3    # "levelDbm":I
    :cond_3
    const/16 v6, -0x64

    if-lt v0, v6, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_1

    .line 907
    .end local v3    # "levelDbm":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_1

    .line 911
    :cond_5
    const/16 v6, -0x6e

    if-lt v1, v6, :cond_6

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_2

    .line 912
    .end local v4    # "levelEcio":I
    :cond_6
    const/16 v6, -0x82

    if-lt v1, v6, :cond_7

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_2

    .line 913
    .end local v4    # "levelEcio":I
    :cond_7
    const/16 v6, -0x96

    if-lt v1, v6, :cond_8

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_2

    .line 914
    .end local v4    # "levelEcio":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_2

    :cond_9
    move v2, v4

    .line 916
    goto :goto_3
.end method

.method public getDCMGsmUmtsLevel()I
    .locals 4

    .prologue
    const/16 v3, 0x63

    .line 826
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 833
    .local v0, "asu":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 858
    const/4 v2, -0x1

    if-lt v0, v2, :cond_0

    if-ne v0, v3, :cond_6

    :cond_0
    const/4 v1, 0x0

    .line 865
    .local v1, "level":I
    :goto_0
    return v1

    .line 839
    .end local v1    # "level":I
    :sswitch_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "level":I
    goto :goto_0

    .line 840
    .end local v1    # "level":I
    :cond_2
    const/16 v2, 0xb

    if-lt v0, v2, :cond_3

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 841
    .end local v1    # "level":I
    :cond_3
    const/4 v2, 0x7

    if-lt v0, v2, :cond_4

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 842
    .end local v1    # "level":I
    :cond_4
    const/4 v2, 0x5

    if-lt v0, v2, :cond_5

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 843
    .end local v1    # "level":I
    :cond_5
    const/4 v1, 0x1

    .line 844
    .restart local v1    # "level":I
    goto :goto_0

    .line 859
    .end local v1    # "level":I
    :cond_6
    const/4 v2, 0x6

    if-lt v0, v2, :cond_7

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 860
    .end local v1    # "level":I
    :cond_7
    const/4 v2, 0x4

    if-lt v0, v2, :cond_8

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 861
    .end local v1    # "level":I
    :cond_8
    const/4 v2, 0x1

    if-lt v0, v2, :cond_9

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 862
    .end local v1    # "level":I
    :cond_9
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0

    .line 833
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public getDataRadioTechnology()I
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v0

    return v0
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, -0x78

    .line 712
    const v1, 0x7fffffff

    .line 714
    .local v1, "dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 715
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 716
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    .line 717
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_2

    .line 718
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    :cond_0
    :goto_0
    move v0, v1

    .line 731
    :cond_1
    :goto_1
    return v0

    .line 720
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    goto :goto_0

    .line 724
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 725
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 727
    .local v2, "evdoDbm":I
    if-eq v2, v4, :cond_1

    if-ne v0, v4, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    if-lt v0, v2, :cond_1

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 993
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 994
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 998
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 1005
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1012
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1014
    .local v2, "level":I
    :goto_2
    return v2

    .line 999
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1000
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1001
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1002
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1003
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1006
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1007
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1008
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1009
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1010
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 1012
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 7

    .prologue
    .line 958
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 959
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 964
    .local v1, "evdoSnr":I
    iget-object v6, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v6, v0, v1}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v5

    .line 965
    .local v5, "lgLevel":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 984
    .end local v5    # "lgLevel":I
    :goto_0
    return v5

    .line 970
    .restart local v5    # "lgLevel":I
    :cond_0
    const/16 v6, -0x41

    if-lt v0, v6, :cond_1

    const/4 v3, 0x4

    .line 976
    .local v3, "levelEvdoDbm":I
    :goto_1
    const/4 v6, 0x7

    if-lt v1, v6, :cond_5

    const/4 v4, 0x4

    .line 982
    .local v4, "levelEvdoSnr":I
    :goto_2
    if-ge v3, v4, :cond_9

    move v2, v3

    .local v2, "level":I
    :goto_3
    move v5, v2

    .line 984
    goto :goto_0

    .line 971
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_1
    const/16 v6, -0x4b

    if-lt v0, v6, :cond_2

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1

    .line 972
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v6, -0x5a

    if-lt v0, v6, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1

    .line 973
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v6, -0x69

    if-lt v0, v6, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1

    .line 974
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1

    .line 977
    :cond_5
    const/4 v6, 0x5

    if-lt v1, v6, :cond_6

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_2

    .line 978
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v6, 0x3

    if-lt v1, v6, :cond_7

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_2

    .line 979
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v6, 0x1

    if-lt v1, v6, :cond_8

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_2

    .line 980
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_2

    :cond_9
    move v2, v4

    .line 982
    goto :goto_3
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 880
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 882
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 742
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 743
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 744
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 745
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 750
    .local v1, "dBm":I
    :goto_1
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    .line 743
    goto :goto_0

    .line 747
    .restart local v0    # "asu":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/16 v5, 0x63

    .line 759
    const/4 v1, 0x0

    .line 762
    .local v1, "level":I
    iget-object v3, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(I)I

    move-result v2

    .line 763
    .local v2, "lgLevel":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 815
    .end local v2    # "lgLevel":I
    :goto_0
    return v2

    .line 769
    .restart local v2    # "lgLevel":I
    :cond_0
    const-string v3, "DCM"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 770
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getDCMGsmUmtsLevel()I

    move-result v2

    goto :goto_0

    .line 779
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 781
    .local v0, "asu":I
    const-string/jumbo v3, "ro.board.platform"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 782
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-gez v3, :cond_8

    .line 785
    if-le v0, v6, :cond_2

    if-ne v0, v5, :cond_3

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move v2, v1

    .line 815
    goto :goto_0

    .line 786
    :cond_3
    const/16 v3, 0xd

    if-lt v0, v3, :cond_4

    const/4 v1, 0x5

    goto :goto_1

    .line 787
    :cond_4
    if-lt v0, v9, :cond_5

    const/4 v1, 0x4

    goto :goto_1

    .line 788
    :cond_5
    if-lt v0, v8, :cond_6

    const/4 v1, 0x3

    goto :goto_1

    .line 789
    :cond_6
    const/4 v3, 0x6

    if-lt v0, v3, :cond_7

    const/4 v1, 0x2

    goto :goto_1

    .line 790
    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    .line 794
    :cond_8
    const/4 v3, 0x3

    if-le v0, v3, :cond_9

    if-ne v0, v5, :cond_a

    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    .line 795
    :cond_a
    if-lt v0, v9, :cond_b

    const/4 v1, 0x5

    goto :goto_1

    .line 796
    :cond_b
    const/16 v3, 0x9

    if-lt v0, v3, :cond_c

    const/4 v1, 0x4

    goto :goto_1

    .line 797
    :cond_c
    const/4 v3, 0x7

    if-lt v0, v3, :cond_d

    const/4 v1, 0x3

    goto :goto_1

    .line 798
    :cond_d
    if-lt v0, v7, :cond_e

    const/4 v1, 0x2

    goto :goto_1

    .line 799
    :cond_e
    const/4 v1, 0x1

    goto :goto_1

    .line 807
    :cond_f
    if-le v0, v6, :cond_10

    if-ne v0, v5, :cond_11

    :cond_10
    const/4 v1, 0x0

    goto :goto_1

    .line 808
    :cond_11
    const/16 v3, 0xc

    if-lt v0, v3, :cond_12

    const/4 v1, 0x4

    goto :goto_1

    .line 809
    :cond_12
    if-lt v0, v8, :cond_13

    const/4 v1, 0x3

    goto :goto_1

    .line 810
    :cond_13
    if-lt v0, v7, :cond_14

    const/4 v1, 0x2

    goto :goto_1

    .line 811
    :cond_14
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 15

    .prologue
    .line 617
    const/4 v13, 0x0

    .line 620
    .local v13, "level":I
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v3, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v8, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v9, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget-boolean v10, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-virtual/range {v0 .. v10}, Lcom/lge/telephony/LGSignalStrength;->getLevel(IIIIIIIIIZ)I

    move-result v14

    .line 623
    .local v14, "lgLevel":I
    const/4 v0, -0x1

    if-eq v14, v0, :cond_0

    .line 668
    .end local v14    # "lgLevel":I
    :goto_0
    return v14

    .line 629
    .restart local v14    # "lgLevel":I
    :cond_0
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_4

    .line 632
    const-string v0, "DCM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLteLevel_dcm()I

    move-result v13

    .line 639
    :goto_1
    if-nez v13, :cond_1

    .line 642
    const-string v0, "DCM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 643
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getDCMGsmUmtsLevel()I

    move-result v13

    :cond_1
    :goto_2
    move v14, v13

    .line 668
    goto :goto_0

    .line 635
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v13

    goto :goto_1

    .line 645
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v13

    .line 646
    if-nez v13, :cond_1

    .line 647
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v13

    goto :goto_2

    .line 654
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v11

    .line 655
    .local v11, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v12

    .line 656
    .local v12, "evdoLevel":I
    if-nez v12, :cond_5

    .line 658
    move v13, v11

    goto :goto_2

    .line 659
    :cond_5
    if-nez v11, :cond_6

    .line 661
    move v13, v12

    goto :goto_2

    .line 664
    :cond_6
    if-ge v11, v12, :cond_7

    move v13, v11

    :goto_3
    goto :goto_2

    :cond_7
    move v13, v12

    goto :goto_3
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1196
    const/16 v0, 0x63

    .line 1197
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1211
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1214
    :goto_0
    return v0

    .line 1212
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1023
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 1051
    iget-object v4, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v0

    .line 1052
    .local v0, "lgLevel":I
    if-eq v0, v8, :cond_1

    move v1, v0

    .line 1111
    :cond_0
    :goto_0
    return v1

    .line 1063
    :cond_1
    const/4 v2, 0x0

    .local v2, "rssiIconLevel":I
    const/4 v1, -0x1

    .local v1, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 1065
    .local v3, "snrIconLevel":I
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x2c

    if-le v4, v5, :cond_4

    const/4 v1, -0x1

    .line 1078
    :cond_2
    :goto_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0x12c

    if-le v4, v5, :cond_9

    const/4 v3, -0x1

    .line 1090
    :cond_3
    :goto_2
    if-eq v3, v8, :cond_e

    if-eq v1, v8, :cond_e

    .line 1096
    if-lt v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    .line 1066
    :cond_4
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x55

    if-lt v4, v5, :cond_5

    const/4 v1, 0x4

    goto :goto_1

    .line 1067
    :cond_5
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x5f

    if-lt v4, v5, :cond_6

    const/4 v1, 0x3

    goto :goto_1

    .line 1068
    :cond_6
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x69

    if-lt v4, v5, :cond_7

    const/4 v1, 0x2

    goto :goto_1

    .line 1069
    :cond_7
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x73

    if-lt v4, v5, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    .line 1070
    :cond_8
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x8c

    if-lt v4, v5, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 1079
    :cond_9
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0x82

    if-lt v4, v5, :cond_a

    const/4 v3, 0x4

    goto :goto_2

    .line 1080
    :cond_a
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0x2d

    if-lt v4, v5, :cond_b

    const/4 v3, 0x3

    goto :goto_2

    .line 1081
    :cond_b
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_c

    const/4 v3, 0x2

    goto :goto_2

    .line 1082
    :cond_c
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, -0x1e

    if-lt v4, v5, :cond_d

    const/4 v3, 0x1

    goto :goto_2

    .line 1083
    :cond_d
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v5, -0xc8

    if-lt v4, v5, :cond_3

    .line 1084
    const/4 v3, 0x0

    goto :goto_2

    .line 1099
    :cond_e
    if-eq v3, v8, :cond_f

    move v1, v3

    goto :goto_0

    .line 1101
    :cond_f
    if-ne v1, v8, :cond_0

    .line 1104
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0x3f

    if-le v4, v5, :cond_11

    const/4 v2, 0x0

    :cond_10
    :goto_3
    move v1, v2

    .line 1111
    goto :goto_0

    .line 1105
    :cond_11
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_12

    const/4 v2, 0x4

    goto :goto_3

    .line 1106
    :cond_12
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_13

    const/4 v2, 0x3

    goto :goto_3

    .line 1107
    :cond_13
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_14

    const/4 v2, 0x2

    goto :goto_3

    .line 1108
    :cond_14
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v4, :cond_10

    const/4 v2, 0x1

    goto :goto_3
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getRadioTechnology()I
    .locals 1

    .prologue
    .line 1426
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getDataRadioTechnology()I

    move-result v0

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 3

    .prologue
    .line 1269
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1272
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1275
    .local v0, "tdScdmaAsuLevel":I
    :goto_0
    return v0

    .line 1273
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 1230
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 4

    .prologue
    .line 1242
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v2

    .line 1244
    .local v2, "tdScdmaDbm":I
    iget-object v3, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v3, v2}, Lcom/lge/telephony/LGSignalStrength;->getTdScdmaLevel(I)I

    move-result v1

    .line 1245
    .local v1, "lgLevel":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1260
    .end local v1    # "lgLevel":I
    :goto_0
    return v1

    .line 1251
    .restart local v1    # "lgLevel":I
    :cond_0
    const/16 v3, -0x19

    if-gt v2, v3, :cond_1

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    .line 1252
    :cond_1
    const/4 v0, 0x0

    .local v0, "level":I
    :goto_1
    move v1, v0

    .line 1260
    goto :goto_0

    .line 1253
    .end local v0    # "level":I
    :cond_2
    const/16 v3, -0x31

    if-lt v2, v3, :cond_3

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_1

    .line 1254
    .end local v0    # "level":I
    :cond_3
    const/16 v3, -0x49

    if-lt v2, v3, :cond_4

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_1

    .line 1255
    .end local v0    # "level":I
    :cond_4
    const/16 v3, -0x61

    if-lt v2, v3, :cond_5

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_1

    .line 1256
    .end local v0    # "level":I
    :cond_5
    const/16 v3, -0x78

    if-lt v2, v3, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_1

    .line 1257
    .end local v0    # "level":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1283
    const/16 v0, 0x1f

    .line 1284
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 297
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 298
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 299
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 300
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 301
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 302
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 303
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 304
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 305
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 306
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 307
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 308
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 309
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 310
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 312
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 268
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 271
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1221
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setDataRadioTechnology(I)V
    .locals 1
    .param p1, "dataRadioTechnology"    # I

    .prologue
    .line 1436
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGSignalStrength;->setDataRadioTechnology(I)V

    .line 1437
    return-void
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 527
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 528
    return-void
.end method

.method public setLteBandInfo(I)V
    .locals 1
    .param p1, "lteBand"    # I

    .prologue
    .line 1457
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGSignalStrength;->setLteBand(I)V

    .line 1458
    return-void
.end method

.method public setRadioTechnology(I)V
    .locals 0
    .param p1, "dataRadioTechnology"    # I

    .prologue
    .line 1415
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->setDataRadioTechnology(I)V

    .line 1416
    return-void
.end method

.method public setfeature(I)V
    .locals 0
    .param p1, "feature"    # I

    .prologue
    .line 532
    iput p1, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 533
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v1}, Lcom/lge/telephony/LGSignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 6

    .prologue
    const/16 v1, 0x63

    const/16 v5, 0x8

    const/16 v2, -0x78

    const/4 v3, -0x1

    const v4, 0x7fffffff

    .line 486
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 489
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 490
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 492
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 493
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 495
    const-string v0, "KDDI"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 496
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-gt v0, v5, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 505
    :goto_4
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 506
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 507
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 508
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 511
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 516
    return-void

    :cond_4
    move v0, v1

    .line 486
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 489
    goto :goto_1

    .line 490
    :cond_6
    const/16 v0, -0xa0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 493
    goto :goto_3

    .line 499
    :cond_8
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-gt v0, v5, :cond_9

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_9
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    goto :goto_4

    :cond_a
    move v0, v4

    .line 506
    goto :goto_5

    :cond_b
    move v0, v4

    .line 507
    goto :goto_6

    :cond_c
    move v0, v4

    .line 508
    goto :goto_7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 421
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLGSignalStrength:Lcom/lge/telephony/LGSignalStrength;

    invoke-virtual {v0, p1, p2}, Lcom/lge/telephony/LGSignalStrength;->writeTo(Landroid/os/Parcel;I)V

    .line 448
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
