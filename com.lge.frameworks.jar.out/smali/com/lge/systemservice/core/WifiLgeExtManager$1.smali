.class Lcom/lge/systemservice/core/WifiLgeExtManager$1;
.super Ljava/lang/Object;
.source "WifiLgeExtManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/WifiLgeExtManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/WifiLgeExtManager;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/systemservice/core/WifiLgeExtManager$1;->this$0:Lcom/lge/systemservice/core/WifiLgeExtManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/systemservice/core/WifiLgeExtManager$1;->this$0:Lcom/lge/systemservice/core/WifiLgeExtManager;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/WifiLgeExtManager;->access$002(Lcom/lge/systemservice/core/WifiLgeExtManager;Lcom/lge/systemservice/core/IWifiLgeExtManager;)Lcom/lge/systemservice/core/IWifiLgeExtManager;

    return-void
.end method
