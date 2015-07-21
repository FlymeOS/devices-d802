.class public Lcom/android/internal/telephony/gsm/LGGsmConnectionImpl;
.super Ljava/lang/Object;
.source "LGGsmConnectionImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/gsm/ILGGsmConnection;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LGGsmConnectionImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string v0, "LGGsmConnectionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method


# virtual methods
.method public disconnectCauseFromCodeForLG(I)I
    .locals 1
    .param p1, "casueCode"    # I

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 272
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const/16 v0, 0x3ea

    goto :goto_0

    .line 49
    :sswitch_1
    const/16 v0, 0x3eb

    goto :goto_0

    .line 52
    :sswitch_2
    const/16 v0, 0x3ec

    goto :goto_0

    .line 55
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 58
    :sswitch_4
    const/16 v0, 0x3ed

    goto :goto_0

    .line 61
    :sswitch_5
    const/16 v0, 0x3ee

    goto :goto_0

    .line 64
    :sswitch_6
    const/16 v0, 0x3ef

    goto :goto_0

    .line 67
    :sswitch_7
    const/16 v0, 0x3f0

    goto :goto_0

    .line 70
    :sswitch_8
    const/16 v0, 0x3f1

    goto :goto_0

    .line 73
    :sswitch_9
    const/16 v0, 0x3f2

    goto :goto_0

    .line 76
    :sswitch_a
    const/16 v0, 0x3f3

    goto :goto_0

    .line 79
    :sswitch_b
    const/4 v0, 0x7

    goto :goto_0

    .line 82
    :sswitch_c
    const/16 v0, 0x3f4

    goto :goto_0

    .line 85
    :sswitch_d
    const/16 v0, 0x3f5

    goto :goto_0

    .line 88
    :sswitch_e
    const/4 v0, 0x5

    goto :goto_0

    .line 91
    :sswitch_f
    const/16 v0, 0x3f7

    goto :goto_0

    .line 94
    :sswitch_10
    const/16 v0, 0x3f8

    goto :goto_0

    .line 97
    :sswitch_11
    const/16 v0, 0x3f9

    goto :goto_0

    .line 100
    :sswitch_12
    const/16 v0, 0x3fa

    goto :goto_0

    .line 103
    :sswitch_13
    const/16 v0, 0x3fb

    goto :goto_0

    .line 106
    :sswitch_14
    const/16 v0, 0x3fc

    goto :goto_0

    .line 109
    :sswitch_15
    const/16 v0, 0x3fd

    goto :goto_0

    .line 112
    :sswitch_16
    const/16 v0, 0x3fe

    goto :goto_0

    .line 115
    :sswitch_17
    const/16 v0, 0x3ff

    goto :goto_0

    .line 118
    :sswitch_18
    const/16 v0, 0x400

    goto :goto_0

    .line 121
    :sswitch_19
    const/16 v0, 0x401

    goto :goto_0

    .line 124
    :sswitch_1a
    const/16 v0, 0x402

    goto :goto_0

    .line 127
    :sswitch_1b
    const/16 v0, 0x403

    goto :goto_0

    .line 130
    :sswitch_1c
    const/16 v0, 0xf

    goto :goto_0

    .line 133
    :sswitch_1d
    const/16 v0, 0x404

    goto :goto_0

    .line 136
    :sswitch_1e
    const/16 v0, 0x405

    goto :goto_0

    .line 139
    :sswitch_1f
    const/16 v0, 0x406

    goto :goto_0

    .line 142
    :sswitch_20
    const/16 v0, 0x407

    goto :goto_0

    .line 145
    :sswitch_21
    const/16 v0, 0x408

    goto :goto_0

    .line 148
    :sswitch_22
    const/16 v0, 0x409

    goto :goto_0

    .line 151
    :sswitch_23
    const/16 v0, 0x40a

    goto :goto_0

    .line 154
    :sswitch_24
    const/16 v0, 0x40b

    goto :goto_0

    .line 157
    :sswitch_25
    const/16 v0, 0x40c

    goto :goto_0

    .line 160
    :sswitch_26
    const/16 v0, 0x40d

    goto :goto_0

    .line 163
    :sswitch_27
    const/16 v0, 0x40e

    goto :goto_0

    .line 166
    :sswitch_28
    const/16 v0, 0x40f

    goto :goto_0

    .line 169
    :sswitch_29
    const/16 v0, 0x410

    goto :goto_0

    .line 172
    :sswitch_2a
    const/16 v0, 0x411

    goto :goto_0

    .line 175
    :sswitch_2b
    const/16 v0, 0x412

    goto/16 :goto_0

    .line 178
    :sswitch_2c
    const/16 v0, 0x413

    goto/16 :goto_0

    .line 181
    :sswitch_2d
    const/16 v0, 0x414

    goto/16 :goto_0

    .line 184
    :sswitch_2e
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 187
    :sswitch_2f
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 191
    :sswitch_30
    const-string v0, "SBM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const/16 v0, 0x429

    goto/16 :goto_0

    .line 198
    :sswitch_31
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 202
    :sswitch_32
    const-string v0, "TCL"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/16 v0, 0x3f6

    goto/16 :goto_0

    .line 209
    :sswitch_33
    const/16 v0, 0x415

    goto/16 :goto_0

    .line 212
    :sswitch_34
    const/16 v0, 0x416

    goto/16 :goto_0

    .line 215
    :sswitch_35
    const/16 v0, 0x417

    goto/16 :goto_0

    .line 218
    :sswitch_36
    const/16 v0, 0x418

    goto/16 :goto_0

    .line 221
    :sswitch_37
    const/16 v0, 0x419

    goto/16 :goto_0

    .line 224
    :sswitch_38
    const/16 v0, 0x41a

    goto/16 :goto_0

    .line 227
    :sswitch_39
    const/16 v0, 0x41b

    goto/16 :goto_0

    .line 230
    :sswitch_3a
    const/16 v0, 0x41c

    goto/16 :goto_0

    .line 233
    :sswitch_3b
    const/16 v0, 0x41d

    goto/16 :goto_0

    .line 236
    :sswitch_3c
    const/16 v0, 0x41e

    goto/16 :goto_0

    .line 239
    :sswitch_3d
    const/16 v0, 0x41f

    goto/16 :goto_0

    .line 242
    :sswitch_3e
    const/16 v0, 0x420

    goto/16 :goto_0

    .line 245
    :sswitch_3f
    const/16 v0, 0x421

    goto/16 :goto_0

    .line 248
    :sswitch_40
    const/16 v0, 0x422

    goto/16 :goto_0

    .line 251
    :sswitch_41
    const/16 v0, 0x423

    goto/16 :goto_0

    .line 254
    :sswitch_42
    const/16 v0, 0x424

    goto/16 :goto_0

    .line 257
    :sswitch_43
    const/16 v0, 0x425

    goto/16 :goto_0

    .line 260
    :sswitch_44
    const/16 v0, 0x426

    goto/16 :goto_0

    .line 264
    :sswitch_45
    const/16 v0, 0x3e9

    goto/16 :goto_0

    .line 268
    :sswitch_46
    const/16 v0, 0x427

    goto/16 :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_31
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x19 -> :sswitch_8
        0x1a -> :sswitch_9
        0x1b -> :sswitch_a
        0x1c -> :sswitch_b
        0x1d -> :sswitch_c
        0x1e -> :sswitch_d
        0x1f -> :sswitch_32
        0x22 -> :sswitch_e
        0x26 -> :sswitch_f
        0x29 -> :sswitch_10
        0x2a -> :sswitch_11
        0x2b -> :sswitch_12
        0x2c -> :sswitch_13
        0x2f -> :sswitch_14
        0x31 -> :sswitch_15
        0x32 -> :sswitch_16
        0x37 -> :sswitch_17
        0x39 -> :sswitch_18
        0x3a -> :sswitch_19
        0x3f -> :sswitch_1a
        0x41 -> :sswitch_1b
        0x44 -> :sswitch_1c
        0x45 -> :sswitch_1d
        0x46 -> :sswitch_1e
        0x4f -> :sswitch_1f
        0x51 -> :sswitch_20
        0x57 -> :sswitch_21
        0x58 -> :sswitch_22
        0x5b -> :sswitch_23
        0x5f -> :sswitch_24
        0x60 -> :sswitch_25
        0x61 -> :sswitch_26
        0x62 -> :sswitch_27
        0x63 -> :sswitch_28
        0x64 -> :sswitch_29
        0x65 -> :sswitch_2a
        0x66 -> :sswitch_2b
        0x6f -> :sswitch_2c
        0x7f -> :sswitch_2d
        0xf0 -> :sswitch_2e
        0xf1 -> :sswitch_2f
        0xf3 -> :sswitch_30
        0x121 -> :sswitch_45
        0x3e7 -> :sswitch_46
        0x834 -> :sswitch_33
        0x835 -> :sswitch_34
        0x836 -> :sswitch_35
        0x837 -> :sswitch_36
        0x838 -> :sswitch_37
        0x839 -> :sswitch_38
        0x83a -> :sswitch_39
        0x83d -> :sswitch_3a
        0x83e -> :sswitch_3b
        0x83f -> :sswitch_3c
        0x840 -> :sswitch_3d
        0x841 -> :sswitch_3e
        0x842 -> :sswitch_3f
        0x843 -> :sswitch_40
        0x844 -> :sswitch_41
        0x845 -> :sswitch_42
        0x846 -> :sswitch_43
        0x847 -> :sswitch_44
    .end sparse-switch
.end method

.method public getDialNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dialedaddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "CA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TLS"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RGS"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    .end local p1    # "dialedaddress":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "dialedaddress":Ljava/lang/String;
    :cond_1
    move-object p1, p2

    goto :goto_0
.end method

.method public isUpdateAlertTime(Lcom/android/internal/telephony/DriverCall$State;J)Z
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/DriverCall$State;
    .param p2, "lAlertTime"    # J

    .prologue
    .line 36
    const-string v0, "CTC"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportRingBackTone()Z
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x0

    const-string v1, "RingBackTone"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
