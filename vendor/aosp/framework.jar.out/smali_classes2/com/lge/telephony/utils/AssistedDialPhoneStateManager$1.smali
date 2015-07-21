.class Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$1;
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
    .line 49
    iput-object p1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$1;->this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 52
    const-string v0, "AssistedDial"

    const-string v1, "OtaMcc changed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$1;->this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$1;->this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    # invokes: Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryInternal()Lcom/lge/telephony/LGReferenceCountry;
    invoke-static {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->access$000(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;)Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v1

    # invokes: Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->updateOtaCountry(Lcom/lge/telephony/LGReferenceCountry;)Lcom/lge/telephony/LGReferenceCountry;
    invoke-static {v0, v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->access$100(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;Lcom/lge/telephony/LGReferenceCountry;)Lcom/lge/telephony/LGReferenceCountry;

    .line 54
    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager$1;->this$0:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    # invokes: Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->notifyChangeForReload()V
    invoke-static {v0}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->access$200(Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;)V

    .line 55
    return-void
.end method
