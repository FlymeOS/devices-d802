.class Lcom/lge/camera/controller/SettingRotatableController$12;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SettingRotatableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableController;)V
    .locals 0

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1259
    .local v0, "mActionEvent":I
    packed-switch v0, :pswitch_data_0

    .line 1267
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1261
    :pswitch_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/controller/SettingRotatableController;->isInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1263
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuAdapter;->update()V

    goto :goto_0

    .line 1259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
