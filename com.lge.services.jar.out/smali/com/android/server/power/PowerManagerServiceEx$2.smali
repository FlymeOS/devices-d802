.class Lcom/android/server/power/PowerManagerServiceEx$2;
.super Landroid/telephony/PhoneStateListener;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0

    .prologue
    .line 1520
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$2;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1523
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$2;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->setQuickCharging(I)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->access$3500(Lcom/android/server/power/PowerManagerServiceEx;I)V

    .line 1528
    :goto_0
    return-void

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$2;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    const/4 v1, 0x4

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->setQuickCharging(I)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->access$3500(Lcom/android/server/power/PowerManagerServiceEx;I)V

    goto :goto_0
.end method
