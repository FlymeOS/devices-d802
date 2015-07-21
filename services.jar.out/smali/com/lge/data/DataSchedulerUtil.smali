.class public Lcom/lge/data/DataSchedulerUtil;
.super Ljava/lang/Object;
.source "DataSchedulerUtil.java"


# static fields
.field private static final DBG:Z

.field public static final INTERNAL_TEST:Z = true

.field private static final TAG:Ljava/lang/String; = "DataSchedulerService"

.field private static final VERVOSE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_DATASCHEDULER_LOGGER:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    sput-boolean v0, Lcom/lge/data/DataSchedulerUtil;->DBG:Z

    .line 29
    sget-boolean v0, Lcom/lge/data/DataSchedulerUtil;->DBG:Z

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/data/DataSchedulerUtil;->VERVOSE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/lge/data/DataSchedulerUtil;->logd(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-boolean v0, Lcom/lge/data/DataSchedulerUtil;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "DataSchedulerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "DataSchedulerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, "DataSchedulerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public static logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-boolean v0, Lcom/lge/data/DataSchedulerUtil;->VERVOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "DataSchedulerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method

.method public static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "DataSchedulerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method
