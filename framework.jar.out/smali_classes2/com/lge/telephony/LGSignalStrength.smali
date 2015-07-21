.class public Lcom/lge/telephony/LGSignalStrength;
.super Ljava/lang/Object;
.source "LGSignalStrength.java"


# static fields
.field private static final DBG:Z = false

.field private static final INVALID:I = 0x7fffffff

.field public static final INVALID_LEVEL:I = -0x1

.field private static final LG_SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "LGSignalStrength"

.field private static final NUM_LG_SIGNAL_STRENGTH_AWESOME:I = 0x5

.field private static final NUM_LG_SIGNAL_STRENGTH_BEST:I = 0x6

.field public static final NUM_LG_SIGNAL_STRENGTH_BINS:I

.field private static final NUM_LG_SIGNAL_STRENGTH_GREAT:I = 0x4

.field private static lastLevelIndex:I

.field private static lastLevels:[I

.field private static mLGRssiData:Lcom/lge/telephony/LGRssiData;


# instance fields
.field private LGE_GSM_ASU_VALUE:[I

.field private LGE_LTE_RSRP_VALUE:[I

.field private LGE_UMTS_ASU_VALUE:[I

.field private mDataRadioTechnology:I

.field private mLteBand:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getNumSignalStrength()I

    move-result v0

    sput v0, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/telephony/LGSignalStrength;->lastLevels:[I

    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/lge/telephony/LGSignalStrength;->lastLevelIndex:I

    return-void

    .line 56
    :array_0
    .array-data 4
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    .line 47
    iput v1, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    .line 50
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 51
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 52
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 61
    iput v1, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    .line 63
    iput v1, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    .line 65
    return-void

    .line 50
    nop

    :array_0
    .array-data 4
        -0x54
        -0x5e
        -0x68
        -0x72
        -0x7f
    .end array-data

    .line 51
    :array_1
    .array-data 4
        0xc
        0x9
        0x8
        0x6
        0x5
    .end array-data

    .line 52
    :array_2
    .array-data 4
        0xd
        0xa
        0x7
        0x5
        0x2
    .end array-data
.end method

.method private averageOfRecentLevels(I)I
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 813
    const/4 v2, 0x0

    .line 814
    .local v2, "sum":I
    const/4 v0, 0x0

    .line 815
    .local v0, "avr":I
    sget-object v3, Lcom/lge/telephony/LGSignalStrength;->lastLevels:[I

    sget v4, Lcom/lge/telephony/LGSignalStrength;->lastLevelIndex:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/lge/telephony/LGSignalStrength;->lastLevelIndex:I

    aput p1, v3, v4

    .line 816
    sget v3, Lcom/lge/telephony/LGSignalStrength;->lastLevelIndex:I

    sget-object v4, Lcom/lge/telephony/LGSignalStrength;->lastLevels:[I

    array-length v4, v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    sput v3, Lcom/lge/telephony/LGSignalStrength;->lastLevelIndex:I

    .line 817
    :cond_0
    const/4 v1, 0x0

    .local v1, "kk":I
    :goto_0
    sget-object v3, Lcom/lge/telephony/LGSignalStrength;->lastLevels:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 818
    sget-object v3, Lcom/lge/telephony/LGSignalStrength;->lastLevels:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 820
    :cond_1
    sget-object v3, Lcom/lge/telephony/LGSignalStrength;->lastLevels:[I

    array-length v3, v3

    div-int v0, v2, v3

    .line 821
    if-le p1, v0, :cond_2

    .line 822
    :goto_1
    return p1

    :cond_2
    move p1, v0

    .line 821
    goto :goto_1
.end method

.method private getAxgpLevel(III)I
    .locals 8
    .param p1, "mLteSignalStrength"    # I
    .param p2, "mLteRsrp"    # I
    .param p3, "mLteRssnr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 828
    const/16 v6, 0x63

    if-ne p1, v6, :cond_1

    move v2, v4

    .line 872
    :cond_0
    :goto_0
    return v2

    .line 832
    :cond_1
    const/4 v2, -0x1

    .line 833
    .local v2, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 835
    .local v3, "snrIconLevel":I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getAxgpRsrpValue()[I

    move-result-object v0

    .line 836
    .local v0, "mAxgpRsrpValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getAxgpRssnrValue()[I

    move-result-object v1

    .line 838
    .local v1, "mAxgpRssnrValue":[I
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    move v2, v4

    .line 839
    goto :goto_0

    .line 847
    :cond_2
    const/16 v6, -0x2c

    invoke-virtual {p0, p2, v6, v0}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v2

    .line 848
    const/16 v6, 0x12c

    invoke-virtual {p0, p3, v6, v1}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v3

    .line 854
    const-string v6, "SBM"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 855
    if-eq v2, v5, :cond_3

    if-ne v3, v5, :cond_4

    :cond_3
    move v2, v5

    .line 856
    goto :goto_0

    .line 860
    :cond_4
    if-eq v3, v7, :cond_5

    if-eq v2, v7, :cond_5

    .line 861
    if-lt v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    .line 864
    :cond_5
    if-eq v3, v7, :cond_6

    move v2, v3

    .line 865
    goto :goto_0

    .line 868
    :cond_6
    if-ne v2, v7, :cond_0

    move v2, v4

    .line 872
    goto :goto_0
.end method

.method private static getLGRssiData()Lcom/lge/telephony/LGRssiData;
    .locals 1

    .prologue
    .line 901
    sget-object v0, Lcom/lge/telephony/LGSignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    if-nez v0, :cond_0

    .line 902
    invoke-static {}, Lcom/lge/telephony/LGRssiData;->getInstance()Lcom/lge/telephony/LGRssiData;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/LGSignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    .line 903
    sget-object v0, Lcom/lge/telephony/LGSignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    invoke-virtual {v0}, Lcom/lge/telephony/LGRssiData;->init()V

    .line 906
    :cond_0
    sget-object v0, Lcom/lge/telephony/LGSignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    return-object v0
.end method

.method private getLevelACG(IIIIIIIIZ)I
    .locals 1
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "isGsm"    # Z

    .prologue
    .line 734
    invoke-direct/range {p0 .. p9}, Lcom/lge/telephony/LGSignalStrength;->getLevelUSC(IIIIIIIIZ)I

    move-result v0

    return v0
.end method

.method private getLevelCT(IIIIIIIIZ)I
    .locals 5
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "isGsm"    # Z

    .prologue
    .line 675
    const/4 v2, 0x0

    .line 677
    .local v2, "level":I
    if-eqz p9, :cond_1

    .line 678
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v2

    .line 679
    if-nez v2, :cond_0

    .line 680
    invoke-virtual {p0, p1}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(I)I

    move-result v2

    .line 699
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLevelCT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 700
    return v2

    .line 683
    :cond_1
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v2

    .line 684
    if-nez v2, :cond_0

    .line 685
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .line 686
    .local v0, "cdmaLevel":I
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v1

    .line 687
    .local v1, "evdoLevel":I
    if-nez v1, :cond_2

    .line 689
    move v2, v0

    goto :goto_0

    .line 690
    :cond_2
    if-nez v0, :cond_3

    .line 692
    move v2, v1

    goto :goto_0

    .line 695
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    :goto_1
    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method private getLevelH3G(IIIIIIZ)I
    .locals 2
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mLteSignalStrength"    # I
    .param p5, "mLteRsrp"    # I
    .param p6, "mLteRssnr"    # I
    .param p7, "isGsm"    # Z

    .prologue
    .line 767
    const/4 v0, 0x0

    .line 773
    .local v0, "level":I
    if-eqz p7, :cond_0

    .line 774
    invoke-virtual {p0, p4, p5, p6}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v0

    .line 775
    if-nez v0, :cond_0

    const/16 v1, 0x63

    if-eq p1, v1, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 793
    :pswitch_0
    const v1, -0x37849

    if-ne p3, v1, :cond_1

    .line 795
    invoke-virtual {p0, p1}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(I)I

    move-result v0

    .line 808
    :cond_0
    :goto_0
    return v0

    .line 780
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(I)I

    move-result v0

    .line 781
    goto :goto_0

    .line 788
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .line 789
    goto :goto_0

    .line 797
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    goto :goto_0

    .line 776
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getLevelKDDI(IIIIIIIIZ)I
    .locals 5
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "isGsm"    # Z

    .prologue
    .line 633
    const/4 v2, 0x0

    .line 635
    .local v2, "level":I
    if-eqz p9, :cond_2

    .line 636
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v2

    .line 637
    if-nez v2, :cond_0

    .line 638
    invoke-virtual {p0, p1}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(I)I

    move-result v2

    .line 641
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, -0x78

    if-eq p2, v3, :cond_1

    const/16 v3, -0xa0

    if-eq p3, v3, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 644
    const-string v3, "KDDI signalstrength When in call"

    invoke-static {v3}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v2

    .line 667
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLevelKDDI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 668
    return v2

    .line 649
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .line 650
    .local v0, "cdmaLevel":I
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v1

    .line 651
    .local v1, "evdoLevel":I
    if-nez v1, :cond_3

    .line 653
    move v2, v0

    .line 662
    :goto_1
    if-nez v2, :cond_1

    .line 663
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v2

    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMALEVEL is Unknown , getLteLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_3
    if-nez v0, :cond_4

    .line 656
    move v2, v1

    goto :goto_1

    .line 659
    :cond_4
    if-ge v0, v1, :cond_5

    move v2, v0

    :goto_2
    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method private getLevelKR(IIIIIIIIIZ)I
    .locals 4
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "mLteRsrq"    # I
    .param p10, "isGsm"    # Z

    .prologue
    .line 428
    if-eqz p10, :cond_3

    .line 431
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v0

    .line 432
    .local v0, "level":I
    const-string v1, "LGU"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    const/16 v1, -0x10

    if-lt v1, p9, :cond_0

    if-lez v0, :cond_0

    .line 435
    add-int/lit8 v0, v0, -0x1

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLteRsrq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fixed level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 439
    :cond_0
    if-nez v0, :cond_1

    .line 440
    invoke-virtual {p0, p1}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(I)I

    move-result v0

    .line 456
    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .end local v0    # "level":I
    :cond_2
    return v0

    .line 442
    :cond_3
    const/4 v1, 0x0

    const-string/jumbo v2, "support_svlte"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    const-string v2, "net.ims.ims_indicator"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 448
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v0

    .restart local v0    # "level":I
    goto :goto_0

    .line 451
    .end local v0    # "level":I
    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .restart local v0    # "level":I
    goto :goto_0
.end method

.method private getLevelSBM(IIIIIIIIZ)I
    .locals 3
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "isGsm"    # Z

    .prologue
    const/16 v2, -0x78

    .line 877
    const/4 v0, 0x0

    .line 879
    .local v0, "level":I
    if-eqz p9, :cond_4

    .line 880
    invoke-direct {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getAxgpLevel(III)I

    move-result v0

    .line 881
    if-nez v0, :cond_0

    .line 882
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v0

    .line 884
    :cond_0
    if-nez v0, :cond_2

    if-ne p2, v2, :cond_1

    const/16 v1, -0xa0

    if-eq p3, v1, :cond_2

    .line 885
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .line 887
    :cond_2
    if-nez v0, :cond_3

    if-eq p4, v2, :cond_3

    .line 888
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v0

    .line 890
    :cond_3
    if-nez v0, :cond_4

    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBM tech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 892
    const/4 v0, 0x1

    .line 895
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLevelSBM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 896
    return v0
.end method

.method private getLevelSPR(IIIIIIIIZ)I
    .locals 5
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "isGsm"    # Z

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "level":I
    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v2

    .line 473
    .local v2, "rat":I
    const/4 v3, 0x0

    const-string v4, "data_only_device"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    invoke-direct {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getAxgpLevel(III)I

    move-result v0

    .line 475
    if-nez v0, :cond_0

    .line 476
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v0

    :cond_0
    move v1, v0

    .line 553
    .end local v0    # "level":I
    .local v1, "level":I
    :goto_0
    return v1

    .line 482
    .end local v1    # "level":I
    .restart local v0    # "level":I
    :cond_1
    if-eqz p9, :cond_5

    .line 488
    invoke-direct {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getAxgpLevel(III)I

    move-result v0

    .line 489
    if-nez v0, :cond_2

    .line 490
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v0

    .line 493
    :cond_2
    if-nez v0, :cond_4

    .line 494
    invoke-virtual {p0, p1}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(I)I

    move-result v0

    .line 495
    if-nez v0, :cond_4

    .line 496
    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    const/16 v3, 0xc

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd

    if-ne v2, v3, :cond_4

    .line 500
    :cond_3
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v0

    :cond_4
    :goto_1
    move v1, v0

    .line 553
    .end local v0    # "level":I
    .restart local v1    # "level":I
    goto :goto_0

    .line 506
    .end local v1    # "level":I
    .restart local v0    # "level":I
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_6

    .line 510
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .line 511
    if-nez v0, :cond_4

    const/16 v3, 0xe

    if-ne v3, v2, :cond_4

    .line 514
    invoke-direct {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getAxgpLevel(III)I

    move-result v0

    .line 515
    if-nez v0, :cond_4

    .line 516
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v0

    goto :goto_1

    .line 520
    :cond_6
    packed-switch v2, :pswitch_data_0

    .line 535
    :pswitch_0
    invoke-direct {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getAxgpLevel(III)I

    move-result v0

    .line 536
    if-nez v0, :cond_7

    .line 537
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v0

    .line 540
    :cond_7
    if-nez v0, :cond_4

    .line 541
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v0

    .line 542
    if-nez v0, :cond_4

    .line 543
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    goto :goto_1

    .line 524
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .line 525
    goto :goto_1

    .line 530
    :pswitch_2
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v0

    .line 531
    goto :goto_1

    .line 520
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getLevelUSC(IIIIIIIIZ)I
    .locals 1
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "isGsm"    # Z

    .prologue
    .line 707
    const/4 v0, 0x0

    .line 712
    .local v0, "level":I
    if-eqz p9, :cond_1

    .line 713
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v0

    .line 714
    if-nez v0, :cond_0

    .line 715
    invoke-virtual {p0, p1}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(I)I

    move-result v0

    .line 724
    :cond_0
    :goto_0
    return v0

    .line 718
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method private getLevelUsGsm(IIIIIIIIZ)I
    .locals 2
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "isGsm"    # Z

    .prologue
    .line 742
    const/4 v0, 0x0

    .line 747
    .local v0, "level":I
    if-eqz p9, :cond_0

    .line 748
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v0

    .line 749
    if-nez v0, :cond_0

    .line 750
    const v1, -0x37849

    if-eq p3, v1, :cond_1

    .line 751
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .line 761
    :cond_0
    :goto_0
    return v0

    .line 753
    :cond_1
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method private getLevelVZW(IIIIIIIIZ)I
    .locals 5
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "isGsm"    # Z

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v3

    .line 564
    .local v3, "rat":I
    if-eqz p9, :cond_2

    .line 565
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v2

    .line 566
    .local v2, "level":I
    if-nez v2, :cond_1

    .line 567
    invoke-virtual {p0, p1}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(I)I

    move-result v2

    .line 568
    if-nez v2, :cond_1

    .line 575
    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    .line 580
    :cond_0
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v2

    .line 626
    :cond_1
    :goto_0
    return v2

    .line 585
    .end local v2    # "level":I
    :cond_2
    invoke-virtual {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(III)I

    move-result v2

    .line 586
    .restart local v2    # "level":I
    if-nez v2, :cond_1

    .line 600
    packed-switch v3, :pswitch_data_0

    .line 614
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .line 615
    .local v0, "cdmaLevel":I
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v1

    .line 616
    .local v1, "evdoLevel":I
    if-lt v0, v1, :cond_3

    move v2, v0

    :goto_1
    goto :goto_0

    .line 604
    .end local v0    # "cdmaLevel":I
    .end local v1    # "evdoLevel":I
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v2

    .line 605
    goto :goto_0

    .line 610
    :pswitch_2
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v2

    .line 611
    goto :goto_0

    .restart local v0    # "cdmaLevel":I
    .restart local v1    # "evdoLevel":I
    :cond_3
    move v2, v1

    .line 616
    goto :goto_1

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected static getNumSignalStrength()I
    .locals 2

    .prologue
    .line 387
    const-string v0, "BM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    :cond_0
    const/4 v0, 0x7

    .line 402
    :goto_0
    return v0

    .line 393
    :cond_1
    const-string v0, "DCM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    const/4 v0, 0x5

    goto :goto_0

    .line 397
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNumSignalStrength: mRssiLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    sget v1, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    sget v0, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 399
    const/4 v0, 0x6

    goto :goto_0

    .line 402
    :cond_3
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    sget v0, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 981
    const-string v0, "LGSignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/lge/telephony/LGSignalStrength;)V
    .locals 1
    .param p1, "s"    # Lcom/lge/telephony/LGSignalStrength;

    .prologue
    .line 946
    iget v0, p1, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    .line 948
    iget v0, p1, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    .line 950
    return-void
.end method

.method public getCdmaLevel(II)I
    .locals 7
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I

    .prologue
    const/4 v6, -0x1

    .line 247
    const/4 v0, -0x1

    .line 248
    .local v0, "level":I
    const/4 v1, 0x0

    .line 249
    .local v1, "levelDbm":I
    const/4 v2, 0x0

    .line 250
    .local v2, "levelEcio":I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/telephony/LGRssiData;->getCdmaDbmValue()[I

    move-result-object v3

    .line 251
    .local v3, "mDbmValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/telephony/LGRssiData;->getEcioValue()[I

    move-result-object v4

    .line 256
    .local v4, "mEcioValue":[I
    if-nez v3, :cond_0

    if-eqz v4, :cond_2

    .line 257
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v1

    .line 258
    invoke-virtual {p0, p2, v4}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v2

    .line 262
    const-string v5, "ATT"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 263
    invoke-direct {p0, v2}, Lcom/lge/telephony/LGSignalStrength;->averageOfRecentLevels(I)I

    move-result v2

    .line 266
    :cond_1
    if-eq v1, v6, :cond_4

    if-eq v2, v6, :cond_4

    .line 267
    if-ge v1, v2, :cond_3

    move v5, v1

    :goto_0
    move v0, v5

    .line 275
    .end local v0    # "level":I
    :cond_2
    :goto_1
    return v0

    .restart local v0    # "level":I
    :cond_3
    move v5, v2

    .line 267
    goto :goto_0

    .line 268
    :cond_4
    if-eq v1, v6, :cond_5

    move v0, v1

    goto :goto_1

    .line 269
    :cond_5
    if-eq v2, v6, :cond_6

    move v0, v2

    goto :goto_1

    .line 271
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDataRadioTechnology()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    return v0
.end method

.method public getEvdoLevel(II)I
    .locals 7
    .param p1, "evdoDbm"    # I
    .param p2, "evdoSnr"    # I

    .prologue
    const/4 v6, -0x1

    .line 279
    const/4 v0, -0x1

    .line 280
    .local v0, "level":I
    const/4 v1, 0x0

    .line 281
    .local v1, "levelEvdoDbm":I
    const/4 v2, 0x0

    .line 282
    .local v2, "levelEvdoSnr":I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/telephony/LGRssiData;->getEvdoDbmValue()[I

    move-result-object v3

    .line 283
    .local v3, "mEvdoDbmValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/telephony/LGRssiData;->getEvdoSnrValue()[I

    move-result-object v4

    .line 287
    .local v4, "mEvdoSnrValue":[I
    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    .line 288
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v1

    .line 289
    invoke-virtual {p0, p2, v4}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v2

    .line 291
    if-eq v1, v6, :cond_3

    if-eq v2, v6, :cond_3

    .line 292
    if-ge v1, v2, :cond_2

    move v5, v1

    :goto_0
    move v0, v5

    .line 300
    .end local v0    # "level":I
    :cond_1
    :goto_1
    return v0

    .restart local v0    # "level":I
    :cond_2
    move v5, v2

    .line 292
    goto :goto_0

    .line 294
    :cond_3
    if-eq v1, v6, :cond_4

    move v0, v1

    goto :goto_1

    .line 295
    :cond_4
    if-eq v2, v6, :cond_5

    move v0, v2

    goto :goto_1

    .line 297
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getGsmLevel(I)I
    .locals 11
    .param p1, "asu"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x5

    const/16 v8, 0x63

    .line 68
    const/4 v0, -0x1

    .line 70
    .local v0, "level":I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getAsuGsmValue()[I

    move-result-object v2

    .line 71
    .local v2, "mAsuGsmValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getAsuUmtsValue()[I

    move-result-object v3

    .line 72
    .local v3, "mAsuUmtsValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getAsuEtcValue()[I

    move-result-object v1

    .line 74
    .local v1, "mAsuEtcValue":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v4

    .line 81
    .local v4, "voice_networkType":I
    const-string v6, "ro.board.platform"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    new-array v6, v9, [I

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 84
    new-array v6, v9, [I

    fill-array-data v6, :array_1

    iput-object v6, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 86
    new-array v6, v9, [I

    fill-array-data v6, :array_2

    iput-object v6, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 91
    :cond_0
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    sget v6, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 106
    iget-object v6, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_UMTS_ASU_VALUE:[I

    invoke-virtual {p0, p1, v8, v6}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v0

    .line 111
    :goto_0
    if-ne v0, v10, :cond_2

    .line 152
    :cond_1
    :goto_1
    return v5

    .line 98
    :sswitch_0
    iget-object v6, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_GSM_ASU_VALUE:[I

    invoke-virtual {p0, p1, v8, v6}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v0

    .line 99
    goto :goto_0

    :cond_2
    move v5, v0

    .line 111
    goto :goto_1

    .line 114
    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_7

    .line 115
    :cond_4
    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 134
    :pswitch_0
    const-string v6, "VZW"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "LRA"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 135
    :cond_5
    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v6

    if-nez v6, :cond_6

    .line 136
    const/4 v6, 0x3

    if-ne v4, v6, :cond_6

    .line 137
    invoke-virtual {p0, p1, v8, v3}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v0

    .line 148
    :goto_2
    if-eq v0, v10, :cond_1

    move v5, v0

    goto :goto_1

    .line 119
    :pswitch_1
    invoke-virtual {p0, p1, v8, v2}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v0

    .line 120
    goto :goto_2

    .line 127
    :pswitch_2
    invoke-virtual {p0, p1, v8, v3}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v0

    .line 128
    goto :goto_2

    .line 143
    :cond_6
    invoke-virtual {p0, p1, v8, v2}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v0

    goto :goto_2

    :cond_7
    move v5, v0

    .line 152
    goto :goto_1

    .line 83
    :array_0
    .array-data 4
        0xb
        0x9
        0x7
        0x5
        0x4
    .end array-data

    .line 84
    :array_1
    .array-data 4
        0xd
        0xb
        0x8
        0x6
        0x3
    .end array-data

    .line 86
    :array_2
    .array-data 4
        -0x55
        -0x5f
        -0x69
        -0x73
        -0x80
    .end array-data

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getItemLevel(II[I)I
    .locals 4
    .param p1, "value"    # I
    .param p2, "valid"    # I
    .param p3, "range"    # [I

    .prologue
    const v3, 0x7fffffff

    const/16 v2, 0x63

    .line 910
    const/4 v1, 0x0

    .line 913
    .local v1, "level":I
    if-nez p3, :cond_0

    .line 914
    const/4 v2, -0x1

    .line 926
    :goto_0
    return v2

    .line 917
    :cond_0
    if-ne p2, v2, :cond_1

    if-eq p1, v2, :cond_3

    :cond_1
    if-ne p2, v3, :cond_2

    if-eq p1, v3, :cond_3

    :cond_2
    if-le p1, p2, :cond_4

    .line 918
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 920
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_5

    .line 921
    aget v2, p3, v0

    if-lt p1, v2, :cond_6

    .line 925
    :cond_5
    sget v2, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v3, v0, 0x1

    sub-int v1, v2, v3

    move v2, v1

    .line 926
    goto :goto_0

    .line 920
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getItemLevel(I[I)I
    .locals 4
    .param p1, "value"    # I
    .param p2, "range"    # [I

    .prologue
    .line 930
    const/4 v1, 0x0

    .line 933
    .local v1, "level":I
    if-nez p2, :cond_0

    .line 934
    const/4 v2, -0x1

    .line 942
    :goto_0
    return v2

    .line 936
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 937
    aget v2, p2, v0

    if-lt p1, v2, :cond_2

    .line 941
    :cond_1
    sget v2, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v3, v0, 0x1

    sub-int v1, v2, v3

    move v2, v1

    .line 942
    goto :goto_0

    .line 936
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getLevel(IIIIIIIIIZ)I
    .locals 11
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "mLteRsrq"    # I
    .param p10, "isGsm"    # Z

    .prologue
    .line 305
    const/4 v10, -0x1

    .line 308
    .local v10, "level":I
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    invoke-direct/range {p0 .. p10}, Lcom/lge/telephony/LGSignalStrength;->getLevelKR(IIIIIIIIIZ)I

    move-result v10

    .line 373
    .end local v10    # "level":I
    :cond_0
    :goto_0
    return v10

    .line 314
    .restart local v10    # "level":I
    :cond_1
    const-string v0, "SPR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    .line 315
    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGSignalStrength;->getLevelSPR(IIIIIIIIZ)I

    move-result v10

    goto :goto_0

    .line 320
    :cond_2
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LRA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const-string/jumbo v1, "trf_based_vzw"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    .line 324
    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGSignalStrength;->getLevelVZW(IIIIIIIIZ)I

    move-result v10

    goto :goto_0

    .line 329
    :cond_4
    const-string v0, "KDDI"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    .line 330
    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGSignalStrength;->getLevelKDDI(IIIIIIIIZ)I

    move-result v10

    goto :goto_0

    .line 335
    :cond_5
    const-string v0, "CTC"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    .line 336
    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGSignalStrength;->getLevelCT(IIIIIIIIZ)I

    move-result v10

    goto/16 :goto_0

    .line 341
    :cond_6
    const-string v0, "USC"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    .line 342
    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGSignalStrength;->getLevelUSC(IIIIIIIIZ)I

    move-result v10

    goto/16 :goto_0

    .line 347
    :cond_7
    const-string v0, "ACG"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    .line 348
    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGSignalStrength;->getLevelACG(IIIIIIIIZ)I

    move-result v10

    goto/16 :goto_0

    .line 353
    :cond_8
    const-string v0, "US"

    const-string v1, "TMO"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "US"

    const-string v1, "MPCS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "US"

    const-string v1, "AIO"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "US"

    const-string v1, "CRK"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ATT"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    .line 358
    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGSignalStrength;->getLevelUsGsm(IIIIIIIIZ)I

    move-result v10

    goto/16 :goto_0

    .line 363
    :cond_a
    const-string v0, "SBM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    .line 364
    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGSignalStrength;->getLevelSBM(IIIIIIIIZ)I

    move-result v10

    goto/16 :goto_0

    .line 368
    :cond_b
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v0

    const-string v1, "H3G"

    invoke-virtual {v0, v1}, Lcom/lge/telephony/LGRssiData;->checkOperatorbaseonIMSI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "H3G"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_c
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p10

    .line 369
    invoke-direct/range {v0 .. v7}, Lcom/lge/telephony/LGSignalStrength;->getLevelH3G(IIIIIIZ)I

    move-result v10

    goto/16 :goto_0
.end method

.method public getLteBand()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    return v0
.end method

.method public getLteLevel(III)I
    .locals 12
    .param p1, "mLteSignalStrength"    # I
    .param p2, "mLteRsrp"    # I
    .param p3, "mLteRssnr"    # I

    .prologue
    const/16 v11, -0x2c

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 183
    const/4 v5, 0x0

    .local v5, "rssiIconLevel":I
    const/4 v4, -0x1

    .local v4, "rsrpIconLevel":I
    const/4 v6, -0x1

    .line 185
    .local v6, "snrIconLevel":I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/telephony/LGRssiData;->getRsrpValue()[I

    move-result-object v1

    .line 186
    .local v1, "mLteRsrpValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/telephony/LGRssiData;->getRssnrValue()[I

    move-result-object v2

    .line 187
    .local v2, "mLteRssnrValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/telephony/LGRssiData;->getLteSignalValue()[I

    move-result-object v3

    .line 193
    .local v3, "mLteSignalValue":[I
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    sget v9, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_1

    .line 196
    const v7, 0x7fffffff

    iget-object v8, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_LTE_RSRP_VALUE:[I

    invoke-virtual {p0, p2, v7, v8}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v7

    .line 243
    :cond_0
    :goto_0
    return v7

    .line 198
    :cond_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v3, :cond_0

    .line 199
    :cond_2
    invoke-virtual {p0, p2, v11, v1}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v4

    .line 200
    const/16 v9, 0x12c

    invoke-virtual {p0, p3, v9, v2}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v6

    .line 206
    const-string v9, "VZW"

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 207
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/telephony/LGRssiData;->getLteRsrpOffsetValue()[I

    move-result-object v0

    .line 213
    .local v0, "mLteRsrpOffsetValue":[I
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getLteBand()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getLteBand()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    .line 214
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " LteLevel +- Offset For VZW mLteBand = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getLteBand()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, p2, v11, v0}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v4

    .line 221
    .end local v0    # "mLteRsrpOffsetValue":[I
    :cond_4
    const-string v9, "SBM"

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 222
    if-eq v4, v8, :cond_5

    if-ne v6, v8, :cond_6

    :cond_5
    move v7, v8

    .line 223
    goto :goto_0

    .line 228
    :cond_6
    if-eq v6, v7, :cond_8

    if-eq v4, v7, :cond_8

    .line 229
    if-ge v4, v6, :cond_7

    move v7, v4

    goto :goto_0

    :cond_7
    move v7, v6

    goto :goto_0

    .line 232
    :cond_8
    if-eq v6, v7, :cond_9

    move v7, v6

    goto :goto_0

    .line 234
    :cond_9
    if-eq v4, v7, :cond_a

    move v7, v4

    goto :goto_0

    .line 236
    :cond_a
    const/16 v8, 0x3f

    invoke-virtual {p0, p1, v8, v3}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v5

    .line 240
    if-ne v5, v7, :cond_b

    const/4 v7, 0x0

    goto :goto_0

    :cond_b
    move v7, v5

    goto :goto_0
.end method

.method public getTdScdmaLevel(I)I
    .locals 5
    .param p1, "tdScdmaDbm"    # I

    .prologue
    .line 157
    const/4 v0, -0x1

    .line 159
    .local v0, "level":I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/telephony/LGRssiData;->getTdscdmaDbmValue()[I

    move-result-object v2

    .line 163
    .local v2, "mTdscdmaDbmValue":[I
    if-nez v2, :cond_0

    sget v3, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    move v1, v0

    .line 178
    .end local v0    # "level":I
    .local v1, "level":I
    :goto_0
    return v1

    .line 168
    .end local v1    # "level":I
    .restart local v0    # "level":I
    :cond_0
    if-eqz v2, :cond_3

    .line 169
    const/16 v3, -0x19

    if-gt p1, v3, :cond_1

    const v3, 0x7fffffff

    if-ne p1, v3, :cond_2

    .line 170
    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 175
    .end local v0    # "level":I
    .restart local v1    # "level":I
    goto :goto_0

    .line 172
    .end local v1    # "level":I
    .restart local v0    # "level":I
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v0

    goto :goto_1

    :cond_3
    move v1, v0

    .line 178
    .end local v0    # "level":I
    .restart local v1    # "level":I
    goto :goto_0
.end method

.method public readFrom(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 967
    const-string v0, "mDataRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    .line 969
    const-string v0, "mLteBand"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    .line 971
    return-void
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    .line 955
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    .line 957
    return-void
.end method

.method public setDataRadioTechnology(I)V
    .locals 2
    .param p1, "dataRadioTechnology"    # I

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDataRadioTechnology: dataRadioTechnology = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 407
    iput p1, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    .line 408
    return-void
.end method

.method public setLteBand(I)V
    .locals 0
    .param p1, "lteBand"    # I

    .prologue
    .line 416
    iput p1, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    .line 417
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 974
    const-string v0, "mDataRadioTechnology"

    iget v1, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 976
    const-string v0, "mLteBand"

    iget v1, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 978
    return-void
.end method

.method public writeTo(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 960
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    return-void
.end method
