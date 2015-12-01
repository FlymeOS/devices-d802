.class Lcom/lge/camera/controller/OptionMenuController$2;
.super Ljava/lang/Object;
.source "OptionMenuController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/OptionMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/OptionMenuController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/OptionMenuController;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lge/camera/controller/OptionMenuController$2;->this$0:Lcom/lge/camera/controller/OptionMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController$2;->this$0:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/OptionMenuController;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnItemClickListener position["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "itemTitle":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/OptionMenu;

    .line 205
    .local v1, "optionMenu":Lcom/lge/camera/components/OptionMenu;
    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {v1}, Lcom/lge/camera/components/OptionMenu;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController$2;->this$0:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/OptionMenuController;->hideOptionMenu()V

    .line 209
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController$2;->this$0:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v2, v0}, Lcom/lge/camera/controller/OptionMenuController;->onOptionItemSeleteced(Ljava/lang/String;)V

    goto :goto_0
.end method
