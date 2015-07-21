.class public final Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$1;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    }
.end annotation


# static fields
.field public static final RIL_CDMA_CALLED_PARTY_NUMBER_INFO_REC:I = 0x1

.field public static final RIL_CDMA_CALLING_PARTY_NUMBER_INFO_REC:I = 0x2

.field public static final RIL_CDMA_CONNECTED_NUMBER_INFO_REC:I = 0x3

.field public static final RIL_CDMA_DISPLAY_INFO_REC:I = 0x0

.field public static final RIL_CDMA_EXTENDED_DISPLAY_INFO_REC:I = 0x7

.field public static final RIL_CDMA_LINE_CONTROL_INFO_REC:I = 0x6

.field public static final RIL_CDMA_REDIRECTING_NUMBER_INFO_REC:I = 0x5

.field public static final RIL_CDMA_SIGNAL_INFO_REC:I = 0x4

.field public static final RIL_CDMA_T53_AUDIO_CONTROL_INFO_REC:I = 0xa

.field public static final RIL_CDMA_T53_CLIR_INFO_REC:I = 0x8

.field public static final RIL_CDMA_T53_RELEASE_INFO_REC:I = 0x9


# instance fields
.field public record:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 18
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 63
    .local v3, "id":I
    packed-switch v3, :pswitch_data_0

    .line 133
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL_UNSOL_CDMA_INFO_REC: unsupported record. Got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->idToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 66
    .local v12, "data":[B
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    invoke-direct {v2, v3, v12}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;-><init>(I[B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    .line 137
    .end local v12    # "data":[B
    :goto_0
    return-void

    .line 70
    :pswitch_1
    const-string v2, "CTC"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 72
    .local v14, "rData":[B
    array-length v15, v14

    .line 73
    .local v15, "realLength":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v2, v14

    if-ge v13, v2, :cond_1

    .line 75
    aget-byte v2, v14, v13

    if-nez v2, :cond_2

    add-int/lit8 v2, v13, 0x1

    aget-byte v2, v14, v2

    if-nez v2, :cond_2

    .line 76
    move v15, v13

    .line 81
    .end local v13    # "i":I
    :cond_1
    add-int/lit8 v2, v15, 0x2

    new-array v11, v2, [B

    .line 82
    .local v11, "ctcData":[B
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 83
    .local v16, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 84
    const/16 v2, -0x79

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 85
    int-to-byte v2, v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 86
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v2, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 87
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    const/4 v4, 0x7

    invoke-direct {v2, v4, v11}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;-><init>(I[B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto :goto_0

    .line 74
    .end local v11    # "ctcData":[B
    .end local v16    # "reqBuffer":Ljava/nio/ByteBuffer;
    .restart local v13    # "i":I
    :cond_2
    add-int/lit8 v13, v13, 0x2

    goto :goto_1

    .line 91
    .end local v13    # "i":I
    .end local v14    # "rData":[B
    .end local v15    # "realLength":I
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto :goto_0

    .line 97
    :pswitch_2
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;-><init>(ILjava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto/16 :goto_0

    .line 102
    :pswitch_3
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto/16 :goto_0

    .line 106
    :pswitch_4
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;-><init>(Ljava/lang/String;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto/16 :goto_0

    .line 111
    :pswitch_5
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto/16 :goto_0

    .line 116
    :pswitch_6
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto/16 :goto_0

    .line 120
    :pswitch_7
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto/16 :goto_0

    .line 126
    :pswitch_8
    const/16 v17, 0x0

    .line 127
    .local v17, "t53Rec":Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/telephony/LGCdmaInformationRecords;->getCDMAT53InfoRec()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 128
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto/16 :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static idToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 140
    packed-switch p0, :pswitch_data_0

    .line 152
    const-string v0, "<unknown record>"

    :goto_0
    return-object v0

    .line 141
    :pswitch_0
    const-string v0, "RIL_CDMA_DISPLAY_INFO_REC"

    goto :goto_0

    .line 142
    :pswitch_1
    const-string v0, "RIL_CDMA_CALLED_PARTY_NUMBER_INFO_REC"

    goto :goto_0

    .line 143
    :pswitch_2
    const-string v0, "RIL_CDMA_CALLING_PARTY_NUMBER_INFO_REC"

    goto :goto_0

    .line 144
    :pswitch_3
    const-string v0, "RIL_CDMA_CONNECTED_NUMBER_INFO_REC"

    goto :goto_0

    .line 145
    :pswitch_4
    const-string v0, "RIL_CDMA_SIGNAL_INFO_REC"

    goto :goto_0

    .line 146
    :pswitch_5
    const-string v0, "RIL_CDMA_REDIRECTING_NUMBER_INFO_REC"

    goto :goto_0

    .line 147
    :pswitch_6
    const-string v0, "RIL_CDMA_LINE_CONTROL_INFO_REC"

    goto :goto_0

    .line 148
    :pswitch_7
    const-string v0, "RIL_CDMA_EXTENDED_DISPLAY_INFO_REC"

    goto :goto_0

    .line 149
    :pswitch_8
    const-string v0, "RIL_CDMA_T53_CLIR_INFO_REC"

    goto :goto_0

    .line 150
    :pswitch_9
    const-string v0, "RIL_CDMA_T53_RELEASE_INFO_REC"

    goto :goto_0

    .line 151
    :pswitch_a
    const-string v0, "RIL_CDMA_T53_AUDIO_CONTROL_INFO_REC"

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
