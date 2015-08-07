.class final Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;
.super Landroid/net/INetworkStatsServiceEx$Stub;
.source "NetworkStatsServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExtendedBinderInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkStatsServiceEx;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/net/NetworkStatsServiceEx;

    invoke-direct {p0}, Landroid/net/INetworkStatsServiceEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkStatsServiceEx;Lcom/android/server/net/NetworkStatsServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/net/NetworkStatsServiceEx;
    .param p2, "x1"    # Lcom/android/server/net/NetworkStatsServiceEx$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/net/NetworkStatsServiceEx;)V

    return-void
.end method


# virtual methods
.method public clearUsage(Landroid/net/NetworkTemplate;)Z
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 26
    const-string v0, "NetworkStatsServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called clearUsage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_CLEAR_USAGE_HISTORY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/net/NetworkStatsServiceEx;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsServiceEx;->forceUpdate()V

    .line 33
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/net/NetworkStatsServiceEx;

    # invokes: Lcom/android/server/net/NetworkStatsServiceEx;->clearUsageByTemplate(Landroid/net/NetworkTemplate;)Z
    invoke-static {v0, p1}, Lcom/android/server/net/NetworkStatsServiceEx;->access$000(Lcom/android/server/net/NetworkStatsServiceEx;Landroid/net/NetworkTemplate;)Z

    move-result v0

    goto :goto_0
.end method
