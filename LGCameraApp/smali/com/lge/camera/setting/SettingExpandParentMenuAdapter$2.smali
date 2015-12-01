.class Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;
.super Ljava/lang/Object;
.source "SettingExpandParentMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;


# direct methods
.method constructor <init>(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 290
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 302
    :goto_0
    :pswitch_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPressedCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    # getter for: Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I
    invoke-static {v2}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$200(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return v3

    .line 292
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    # += operator for: Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I
    invoke-static {v0, v1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$212(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;I)I

    goto :goto_0

    .line 296
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    # -= operator for: Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I
    invoke-static {v0, v1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$220(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;I)I

    .line 297
    iget-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    iget-object v1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    # getter for: Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I
    invoke-static {v1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$200(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    # setter for: Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I
    invoke-static {v0, v1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$202(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;I)I

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
