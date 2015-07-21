.class Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$4;
.super Landroid/database/ContentObserver;
.source "AssistedDialPhoneStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;


# direct methods
.method constructor <init>(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$4;->this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 79
    const-string v0, "AssistedDial"

    const-string v1, "Ref Country changed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$4;->this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountry(Z)Lcom/lge/telephony/LGReferenceCountry;

    .line 81
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$4;->this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    # invokes: Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->notifyChangeForReload()V
    invoke-static {v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->access$200(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;)V

    .line 82
    return-void
.end method
