.class Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "BatteryServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryServiceEx$BatteryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .line 561
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 562
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 566
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 567
    const/16 v0, 0xfa

    if-le p1, v0, :cond_1

    const/16 v0, 0x122

    if-ge p1, v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientation:I
    invoke-static {v0, v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2802(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    const/16 v0, 0x154

    if-gt p1, v0, :cond_2

    const/16 v0, 0x14

    if-ge p1, v0, :cond_3

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2802(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I

    goto :goto_0

    .line 573
    :cond_3
    const/16 v0, 0xa0

    if-le p1, v0, :cond_4

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_4

    .line 575
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2802(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I

    goto :goto_0

    .line 576
    :cond_4
    const/16 v0, 0x46

    if-le p1, v0, :cond_0

    const/16 v0, 0x6e

    if-ge p1, v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientation:I
    invoke-static {v0, v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2802(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I

    goto :goto_0
.end method
