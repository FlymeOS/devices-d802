.class final Lcom/android/nfc/LNfcIndicatorIcon$1;
.super Ljava/util/HashMap;
.source "LNfcIndicatorIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcIndicatorIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 42
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 45
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleN:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->two_toggleN_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV1N:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->three_toggleV1N_tonedown:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void

    .line 45
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 47
    :array_1
    .array-data 4
        0x0
        0x7f020008
        0x7f020008
    .end array-data

    .line 51
    :array_2
    .array-data 4
        0x0
        0x7f020009
        0x7f020009
    .end array-data

    .line 55
    :array_3
    .array-data 4
        0x7f020006
        0x7f020008
        0x7f020008
    .end array-data

    .line 59
    :array_4
    .array-data 4
        0x7f020007
        0x7f020009
        0x7f020009
    .end array-data
.end method
