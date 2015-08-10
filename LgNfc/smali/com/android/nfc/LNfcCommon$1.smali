.class final Lcom/android/nfc/LNfcCommon$1;
.super Ljava/util/HashSet;
.source "LNfcCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 225
    const-string v0, "com.lge.clock.alarmclock"

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcCommon$1;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v0, "lge.intent.action.UNREAD_MESSAGES"

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcCommon$1;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v0, "com.lge.provider.Telephony.LGE_CMAS_RECEIVED"

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcCommon$1;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v0, "android.intent.action.wapservice.push"

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcCommon$1;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v0, "android.intent.action.wapservice.cp"

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcCommon$1;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method
