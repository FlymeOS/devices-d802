.class public Lcom/android/nfc/utils/LNfcLog;
.super Ljava/lang/Object;
.source "LNfcLog.java"


# static fields
.field public static DBG:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    .line 16
    const-string v0, "LgNfcDebug"

    sput-object v0, Lcom/android/nfc/utils/LNfcLog;->TAG:Ljava/lang/String;

    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "payload"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/android/nfc/utils/LNfcLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 24
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 25
    :cond_0
    sget-object v0, Lcom/android/nfc/utils/LNfcLog;->TAG:Ljava/lang/String;

    const-string v1, "nfcLog tag or payload is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "dbg"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 19
    if-eqz p0, :cond_0

    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "payload"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Lcom/android/nfc/utils/LNfcLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 54
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 55
    :cond_0
    sget-object v0, Lcom/android/nfc/utils/LNfcLog;->TAG:Ljava/lang/String;

    const-string v1, "nfcLog tag or payload is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "dbg"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    .line 50
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "payload"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Lcom/android/nfc/utils/LNfcLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 84
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 85
    :cond_0
    sget-object v0, Lcom/android/nfc/utils/LNfcLog;->TAG:Ljava/lang/String;

    const-string v1, "nfcLog tag or payload is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "dbg"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p0, :cond_0

    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "payload"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v0, Lcom/android/nfc/utils/LNfcLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/nfc/utils/LNfcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 69
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 70
    :cond_0
    sget-object v0, Lcom/android/nfc/utils/LNfcLog;->TAG:Ljava/lang/String;

    const-string v1, "nfcLog tag or payload is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "dbg"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 64
    if-eqz p0, :cond_0

    .line 65
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "payload"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/android/nfc/utils/LNfcLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 39
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 40
    :cond_0
    sget-object v0, Lcom/android/nfc/utils/LNfcLog;->TAG:Ljava/lang/String;

    const-string v1, "nfcLog tag or payload is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "dbg"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 34
    if-eqz p0, :cond_0

    .line 35
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method
