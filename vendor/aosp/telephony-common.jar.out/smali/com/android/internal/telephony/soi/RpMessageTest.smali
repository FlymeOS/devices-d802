.class public Lcom/android/internal/telephony/soi/RpMessageTest;
.super Ljava/lang/Object;
.source "RpMessageTest.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RpMessageTest"

.field public static final TEST_1:I = 0x1

.field public static final TEST_2:I = 0x2

.field public static final TEST_3:I = 0x3

.field public static final TEST_4:I = 0x4

.field public static final TEST_5:I = 0x5

.field public static final TEST_6:I = 0x6

.field public static final TEST_7:I = 0x7

.field public static final TEST_8:I = 0x8

.field public static final TEST_9:I = 0x9

.field public static mRpdu:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getMtConcatRpdu(I)[B
    .locals 3
    .param p0, "nConcat"    # I

    .prologue
    .line 149
    const-string v0, "RpMessageTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMtConcatRpdu nConcat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    packed-switch p0, :pswitch_data_0

    .line 206
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    return-object v0

    .line 181
    :pswitch_0
    const/16 v0, 0xa1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_0

    .line 195
    :pswitch_1
    const/16 v0, 0x63

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 181
    :array_0
    .array-data 1
        0x1t
        -0x79t
        0x7t
        -0x6ft
        0x28t
        0x1t
        0x2t
        0x29t
        -0x7ft
        0x25t
        0x0t
        -0x6bt
        0x44t
        0xat
        -0x7ft
        0x10t
        -0x77t
        0x0t
        0x11t
        0x11t
        0x0t
        0x8t
        0x41t
        0x40t
        -0x6et
        0x41t
        -0x7ft
        0x74t
        0x63t
        -0x7dt
        0xat
        0x0t
        0x3t
        -0x60t
        0x2t
        0x1t
        0x22t
        0x3t
        0x1t
        -0x7ft
        -0x10t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
    .end array-data

    .line 195
    nop

    :array_1
    .array-data 1
        0x1t
        -0x78t
        0x7t
        -0x6ft
        0x28t
        0x1t
        0x2t
        0x29t
        -0x7ft
        0x25t
        0x0t
        0x57t
        0x44t
        0xat
        -0x7ft
        0x10t
        -0x77t
        0x0t
        0x11t
        0x11t
        0x0t
        0x8t
        0x41t
        0x40t
        -0x6et
        0x41t
        -0x7ft
        0x74t
        0x63t
        0x45t
        0xat
        0x0t
        0x3t
        -0x60t
        0x2t
        0x2t
        0x22t
        0x3t
        0x1t
        -0x7ft
        -0x10t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x61t
        0x0t
        0x62t
        0x0t
        0x62t
        0x0t
        0x62t
        -0x54t
        0x0t
    .end array-data
.end method

.method protected static getPpDownloadRpdu()[B
    .locals 2

    .prologue
    .line 129
    const-string v0, "RpMessageTest"

    const-string v1, "getPpDownloadRpdu "

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    .line 145
    sget-object v0, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    return-object v0

    .line 131
    nop

    :array_0
    .array-data 1
        0x1t
        0x41t
        0x7t
        -0x6ft
        0x28t
        0x1t
        0x2t
        0x29t
        -0x7ft
        0x25t
        0x0t
        0x27t
        0x40t
        0xbt
        -0x7ft
        -0x67t
        -0x67t
        -0x67t
        -0x67t
        -0x67t
        -0x7t
        0x7ft
        0x16t
        0x41t
        0x70t
        0x3t
        0x12t
        0x43t
        -0x7ft
        0x63t
        0x14t
        0x2t
        0x70t
        0x0t
        0x0t
        0xft
        0xdt
        0x0t
        0x0t
        0x25t
        0x0t
        -0x50t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
    .end array-data
.end method

.method protected static getRpAckRpdu(ILjava/lang/String;)[B
    .locals 9
    .param p0, "mr"    # I
    .param p1, "testCase"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "nCase":I
    const-string v1, "RpMessageTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRpAckRpdu nCase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    packed-switch v0, :pswitch_data_0

    .line 88
    new-array v1, v6, [B

    aput-byte v5, v1, v4

    int-to-byte v2, p0

    aput-byte v2, v1, v7

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    .line 90
    :goto_0
    return-object v1

    .line 71
    :pswitch_0
    new-array v1, v7, [B

    aput-byte v5, v1, v4

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    .line 90
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_0

    .line 74
    :pswitch_1
    new-array v1, v6, [B

    aput-byte v5, v1, v4

    add-int/lit8 v2, p0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 77
    :pswitch_2
    new-array v1, v8, [B

    aput-byte v5, v1, v4

    int-to-byte v2, p0

    aput-byte v2, v1, v7

    const/16 v2, 0x41

    aput-byte v2, v1, v6

    aput-byte v6, v1, v5

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 80
    :pswitch_3
    const/4 v1, 0x7

    new-array v1, v1, [B

    aput-byte v5, v1, v4

    int-to-byte v2, p0

    aput-byte v2, v1, v7

    const/16 v2, 0x41

    aput-byte v2, v1, v6

    aput-byte v6, v1, v5

    aput-byte v4, v1, v8

    const/4 v2, 0x5

    aput-byte v7, v1, v2

    const/4 v2, 0x6

    aput-byte v7, v1, v2

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 83
    :pswitch_4
    const/16 v1, 0x22

    new-array v1, v1, [B

    aput-byte v5, v1, v4

    int-to-byte v2, p0

    aput-byte v2, v1, v7

    const/16 v2, 0x41

    aput-byte v2, v1, v6

    aput-byte v6, v1, v5

    aput-byte v4, v1, v8

    const/4 v2, 0x5

    aput-byte v4, v1, v2

    const/4 v2, 0x6

    const/16 v3, -0x7f

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    aput-byte v7, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x43

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    aput-byte v6, v1, v2

    const/16 v2, 0xa

    aput-byte v4, v1, v2

    const/16 v2, 0xb

    aput-byte v4, v1, v2

    const/16 v2, 0xc

    const/16 v3, -0x7e

    aput-byte v3, v1, v2

    const/16 v2, 0xd

    aput-byte v5, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x44

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    aput-byte v7, v1, v2

    const/16 v2, 0x10

    aput-byte v4, v1, v2

    const/16 v2, 0x11

    const/16 v3, -0x7d

    aput-byte v3, v1, v2

    const/16 v2, 0x12

    aput-byte v5, v1, v2

    const/16 v2, 0x13

    const/16 v3, -0x7c

    aput-byte v3, v1, v2

    const/16 v2, 0x14

    aput-byte v4, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0x45

    aput-byte v3, v1, v2

    const/16 v2, 0x16

    aput-byte v5, v1, v2

    const/16 v2, 0x17

    aput-byte v4, v1, v2

    const/16 v2, 0x18

    aput-byte v4, v1, v2

    const/16 v2, 0x19

    aput-byte v4, v1, v2

    const/16 v2, 0x1a

    const/16 v3, 0x46

    aput-byte v3, v1, v2

    const/16 v2, 0x1b

    aput-byte v6, v1, v2

    const/16 v2, 0x1c

    aput-byte v4, v1, v2

    const/16 v2, 0x1d

    aput-byte v4, v1, v2

    const/16 v2, 0x1e

    const/16 v3, 0x47

    aput-byte v3, v1, v2

    const/16 v2, 0x1f

    aput-byte v6, v1, v2

    const/16 v2, 0x20

    aput-byte v4, v1, v2

    const/16 v2, 0x21

    aput-byte v4, v1, v2

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto/16 :goto_1

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected static getRpDataRpdu(Ljava/lang/String;)[B
    .locals 7
    .param p0, "testCase"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 27
    .local v0, "nCase":I
    const-string v1, "RpMessageTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRpDataRpdu nCase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    packed-switch v0, :pswitch_data_0

    .line 60
    new-array v1, v5, [B

    aput-byte v4, v1, v4

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    .line 62
    :goto_0
    return-object v1

    .line 31
    :pswitch_0
    new-array v1, v5, [B

    aput-byte v5, v1, v4

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    .line 62
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_0

    .line 34
    :pswitch_1
    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 37
    :pswitch_2
    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 40
    :pswitch_3
    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 43
    :pswitch_4
    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 46
    :pswitch_5
    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 49
    :pswitch_6
    new-array v1, v6, [B

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 52
    :pswitch_7
    new-array v1, v6, [B

    fill-array-data v1, :array_6

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 55
    :pswitch_8
    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 34
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 37
    :array_1
    .array-data 1
        0x1t
        0x0t
        0x7t
        -0x6ft
        0x1t
    .end array-data

    .line 40
    nop

    :array_2
    .array-data 1
        0x1t
        0x0t
        0x7t
        -0x6ft
        0x28t
        0x1t
        0x2t
        0x29t
        -0x7ft
        0x25t
        0x21t
        0x43t
        0x21t
        0x43t
        0x21t
    .end array-data

    .line 43
    :array_3
    .array-data 1
        0x1t
        0x0t
        0xct
        -0x6ft
        0x28t
        0x1t
        0x2t
        0x29t
        -0x7ft
        0x25t
        0x43t
        0x21t
        0x43t
        0x21t
        0x43t
        0x21t
    .end array-data

    .line 46
    :array_4
    .array-data 1
        0x1t
        0x0t
        0x7t
        -0x6ft
        0x28t
        0x1t
        0x2t
        0x29t
        -0x7ft
        0x25t
    .end array-data

    .line 49
    nop

    :array_5
    .array-data 1
        0x1t
        0x0t
        0x7t
        -0x6ft
        0x28t
        0x1t
        0x2t
        0x29t
        -0x7ft
        0x25t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 52
    nop

    :array_6
    .array-data 1
        0x1t
        0x0t
        0x7t
        -0x6ft
        0x28t
        0x1t
        0x2t
        0x29t
        -0x7ft
        0x25t
        0x0t
        0x3t
        0x1t
    .end array-data

    .line 55
    nop

    :array_7
    .array-data 1
        0x1t
        0x0t
        0x7t
        -0x6ft
        0x28t
        0x1t
        0x2t
        0x29t
        -0x7ft
        0x25t
        0x0t
        0x19t
        0x4t
        0xbt
        -0x7ft
        0x10t
        0x20t
        0x32t
        -0x6dt
        0x78t
        -0x7t
        0x0t
        0x4t
        0x41t
        0x40t
        0x51t
        0x31t
        0x24t
        0x40t
        0x63t
        0x6t
        -0x5ct
        -0x4bt
        -0x5ct
        -0x4ft
        -0x5ct
        -0x4ft
    .end array-data
.end method

.method protected static getRpErrorRpdu(ILjava/lang/String;)[B
    .locals 9
    .param p0, "mr"    # I
    .param p1, "testCase"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "nCase":I
    const-string v1, "RpMessageTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRpErrorRpdu nCase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    packed-switch v0, :pswitch_data_0

    .line 124
    new-array v1, v7, [B

    const/4 v2, 0x5

    aput-byte v2, v1, v4

    int-to-byte v2, p0

    aput-byte v2, v1, v6

    aput-byte v6, v1, v5

    const/16 v2, 0x6f

    aput-byte v2, v1, v8

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    .line 126
    :goto_0
    return-object v1

    .line 99
    :pswitch_0
    new-array v1, v6, [B

    const/4 v2, 0x5

    aput-byte v2, v1, v4

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    .line 126
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_0

    .line 102
    :pswitch_1
    new-array v1, v7, [B

    const/4 v2, 0x5

    aput-byte v2, v1, v4

    add-int/lit8 v2, p0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    aput-byte v6, v1, v5

    const/16 v2, 0x6f

    aput-byte v2, v1, v8

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 105
    :pswitch_2
    new-array v1, v8, [B

    const/4 v2, 0x5

    aput-byte v2, v1, v4

    int-to-byte v2, p0

    aput-byte v2, v1, v6

    aput-byte v6, v1, v5

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 108
    :pswitch_3
    new-array v1, v7, [B

    const/4 v2, 0x5

    aput-byte v2, v1, v4

    int-to-byte v2, p0

    aput-byte v2, v1, v6

    aput-byte v5, v1, v5

    const/16 v2, 0x6f

    aput-byte v2, v1, v8

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto :goto_1

    .line 111
    :pswitch_4
    const/16 v1, 0x12

    new-array v1, v1, [B

    const/4 v2, 0x5

    aput-byte v2, v1, v4

    int-to-byte v2, p0

    aput-byte v2, v1, v6

    aput-byte v5, v1, v5

    const/16 v2, 0x6f

    aput-byte v2, v1, v8

    aput-byte v4, v1, v7

    const/4 v2, 0x5

    const/16 v3, 0x40

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    aput-byte v5, v1, v2

    const/4 v2, 0x7

    aput-byte v7, v1, v2

    const/16 v2, 0x8

    aput-byte v7, v1, v2

    const/16 v2, 0x9

    const/16 v3, -0x7f

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    aput-byte v8, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x41

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    aput-byte v5, v1, v2

    const/16 v2, 0xd

    aput-byte v7, v1, v2

    const/16 v2, 0xe

    aput-byte v7, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x41

    aput-byte v3, v1, v2

    const/16 v2, 0x10

    const/16 v3, 0x8

    aput-byte v3, v1, v2

    const/16 v2, 0x11

    aput-byte v4, v1, v2

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto/16 :goto_1

    .line 115
    :pswitch_5
    const/16 v1, 0x14

    new-array v1, v1, [B

    const/4 v2, 0x5

    aput-byte v2, v1, v4

    int-to-byte v2, p0

    aput-byte v2, v1, v6

    aput-byte v6, v1, v5

    const/16 v2, 0x6f

    aput-byte v2, v1, v8

    const/16 v2, 0x40

    aput-byte v2, v1, v7

    const/4 v2, 0x5

    aput-byte v5, v1, v2

    const/4 v2, 0x6

    aput-byte v7, v1, v2

    const/4 v2, 0x7

    aput-byte v7, v1, v2

    const/16 v2, 0x8

    const/16 v3, -0x7f

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    aput-byte v8, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x41

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    aput-byte v5, v1, v2

    const/16 v2, 0xc

    aput-byte v7, v1, v2

    const/16 v2, 0xd

    aput-byte v7, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x41

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    aput-byte v7, v1, v2

    const/16 v2, 0x10

    aput-byte v4, v1, v2

    const/16 v2, 0x11

    aput-byte v4, v1, v2

    const/16 v2, 0x12

    aput-byte v4, v1, v2

    const/16 v2, 0x13

    aput-byte v4, v1, v2

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto/16 :goto_1

    .line 119
    :pswitch_6
    const/16 v1, 0x24

    new-array v1, v1, [B

    const/4 v2, 0x5

    aput-byte v2, v1, v4

    int-to-byte v2, p0

    aput-byte v2, v1, v6

    aput-byte v6, v1, v5

    const/16 v2, 0x6f

    aput-byte v2, v1, v8

    const/16 v2, 0x41

    aput-byte v2, v1, v7

    const/4 v2, 0x5

    aput-byte v5, v1, v2

    const/4 v2, 0x6

    aput-byte v4, v1, v2

    const/4 v2, 0x7

    aput-byte v4, v1, v2

    const/16 v2, 0x8

    const/16 v3, -0x7f

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    aput-byte v6, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x43

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    aput-byte v5, v1, v2

    const/16 v2, 0xc

    aput-byte v4, v1, v2

    const/16 v2, 0xd

    aput-byte v4, v1, v2

    const/16 v2, 0xe

    const/16 v3, -0x7e

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    aput-byte v8, v1, v2

    const/16 v2, 0x10

    const/16 v3, 0x44

    aput-byte v3, v1, v2

    const/16 v2, 0x11

    aput-byte v6, v1, v2

    const/16 v2, 0x12

    aput-byte v4, v1, v2

    const/16 v2, 0x13

    const/16 v3, -0x7d

    aput-byte v3, v1, v2

    const/16 v2, 0x14

    aput-byte v8, v1, v2

    const/16 v2, 0x15

    const/16 v3, -0x7c

    aput-byte v3, v1, v2

    const/16 v2, 0x16

    aput-byte v4, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0x45

    aput-byte v3, v1, v2

    const/16 v2, 0x18

    aput-byte v8, v1, v2

    const/16 v2, 0x19

    aput-byte v4, v1, v2

    const/16 v2, 0x1a

    aput-byte v4, v1, v2

    const/16 v2, 0x1b

    aput-byte v4, v1, v2

    const/16 v2, 0x1c

    const/16 v3, 0x46

    aput-byte v3, v1, v2

    const/16 v2, 0x1d

    aput-byte v5, v1, v2

    const/16 v2, 0x1e

    aput-byte v4, v1, v2

    const/16 v2, 0x1f

    aput-byte v4, v1, v2

    const/16 v2, 0x20

    const/16 v3, 0x47

    aput-byte v3, v1, v2

    const/16 v2, 0x21

    aput-byte v5, v1, v2

    const/16 v2, 0x22

    aput-byte v4, v1, v2

    const/16 v2, 0x23

    aput-byte v4, v1, v2

    sput-object v1, Lcom/android/internal/telephony/soi/RpMessageTest;->mRpdu:[B

    goto/16 :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
