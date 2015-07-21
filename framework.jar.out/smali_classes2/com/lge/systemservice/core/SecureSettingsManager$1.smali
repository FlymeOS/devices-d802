.class Lcom/lge/systemservice/core/SecureSettingsManager$1;
.super Ljava/lang/Object;
.source "SecureSettingsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/SecureSettingsManager;->getService()Lcom/lge/systemservice/core/ISecureSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/SecureSettingsManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/SecureSettingsManager;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/systemservice/core/SecureSettingsManager$1;->this$0:Lcom/lge/systemservice/core/SecureSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/systemservice/core/SecureSettingsManager$1;->this$0:Lcom/lge/systemservice/core/SecureSettingsManager;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/SecureSettingsManager;->mService:Lcom/lge/systemservice/core/ISecureSettingsManager;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/SecureSettingsManager;->access$002(Lcom/lge/systemservice/core/SecureSettingsManager;Lcom/lge/systemservice/core/ISecureSettingsManager;)Lcom/lge/systemservice/core/ISecureSettingsManager;

    return-void
.end method
