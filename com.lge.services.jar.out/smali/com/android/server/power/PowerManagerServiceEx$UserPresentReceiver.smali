.class final Lcom/android/server/power/PowerManagerServiceEx$UserPresentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserPresentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$UserPresentReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerServiceEx$1;

    .prologue
    .line 1473
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx$UserPresentReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$UserPresentReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->access$3300(Lcom/android/server/power/PowerManagerServiceEx;Z)V

    .line 1480
    return-void
.end method
