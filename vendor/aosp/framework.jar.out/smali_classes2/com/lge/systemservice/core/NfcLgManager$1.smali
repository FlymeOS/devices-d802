.class Lcom/lge/systemservice/core/NfcLgManager$1;
.super Ljava/lang/Object;
.source "NfcLgManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/NfcLgManager;->getService()Lcom/lge/systemservice/core/INfcLgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/NfcLgManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/NfcLgManager;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/systemservice/core/NfcLgManager$1;->this$0:Lcom/lge/systemservice/core/NfcLgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/systemservice/core/NfcLgManager$1;->this$0:Lcom/lge/systemservice/core/NfcLgManager;

    const/4 v1, 0x0

    # setter for: Lcom/lge/systemservice/core/NfcLgManager;->mService:Lcom/lge/systemservice/core/INfcLgManager;
    invoke-static {v0, v1}, Lcom/lge/systemservice/core/NfcLgManager;->access$002(Lcom/lge/systemservice/core/NfcLgManager;Lcom/lge/systemservice/core/INfcLgManager;)Lcom/lge/systemservice/core/INfcLgManager;

    return-void
.end method
