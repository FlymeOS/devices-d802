.class public Lcom/android/internal/telephony/soi/SoiContext;
.super Ljava/lang/Object;
.source "SoiContext.java"


# static fields
.field private static sInstance:Lcom/android/internal/telephony/soi/SoiContext;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/soi/SoiContext;->sInstance:Lcom/android/internal/telephony/soi/SoiContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/soi/SoiContext;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/soi/SoiContext;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/android/internal/telephony/soi/SoiContext;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/soi/SoiContext;->sInstance:Lcom/android/internal/telephony/soi/SoiContext;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/android/internal/telephony/soi/SoiContext;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/SoiContext;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/soi/SoiContext;->sInstance:Lcom/android/internal/telephony/soi/SoiContext;

    .line 28
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/soi/SoiContext;->sInstance:Lcom/android/internal/telephony/soi/SoiContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/soi/SoiContext;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "SoiContext context null"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/soi/SoiContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/soi/SoiContext;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method
