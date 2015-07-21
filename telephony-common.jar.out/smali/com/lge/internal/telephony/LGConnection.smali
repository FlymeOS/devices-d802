.class public Lcom/lge/internal/telephony/LGConnection;
.super Ljava/lang/Object;
.source "LGConnection.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/internal/telephony/LGConnection;


# instance fields
.field private mConnection:Lcom/android/internal/telephony/Connection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "LGConnection"

    sput-object v0, Lcom/lge/internal/telephony/LGConnection;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault(Lcom/android/internal/telephony/Connection;)Lcom/lge/internal/telephony/LGConnection;
    .locals 3
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 23
    const-class v1, Lcom/lge/internal/telephony/LGConnection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lge/internal/telephony/LGConnection;->LOG_TAG:Ljava/lang/String;

    const-string v2, "You are using Phone for LG API"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v0, Lcom/lge/internal/telephony/LGConnection;->sInstance:Lcom/lge/internal/telephony/LGConnection;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/lge/internal/telephony/LGConnection;

    invoke-direct {v0}, Lcom/lge/internal/telephony/LGConnection;-><init>()V

    sput-object v0, Lcom/lge/internal/telephony/LGConnection;->sInstance:Lcom/lge/internal/telephony/LGConnection;

    .line 29
    :cond_0
    sget-object v0, Lcom/lge/internal/telephony/LGConnection;->sInstance:Lcom/lge/internal/telephony/LGConnection;

    invoke-virtual {v0, p0}, Lcom/lge/internal/telephony/LGConnection;->setConnection(Lcom/android/internal/telephony/Connection;)V

    .line 31
    sget-object v0, Lcom/lge/internal/telephony/LGConnection;->sInstance:Lcom/lge/internal/telephony/LGConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getLine()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public setConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lge/internal/telephony/LGConnection;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 20
    return-void
.end method
