.class Lcom/lge/camera/controller/QuickFunctionDragController$2;
.super Ljava/lang/Object;
.source "QuickFunctionDragController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickFunctionDragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionDragController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionDragController;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 278
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectMenu List itemIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-boolean v5, v5, Lcom/lge/camera/controller/QuickFunctionDragController;->mInit:Z

    if-nez v5, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    add-int/lit8 v4, p3, 0x1

    .line 283
    .local v4, "menuPosition":I
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v5, v4}, Lcom/lge/camera/controller/QuickFunctionDragController;->checkPreference(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-object v5, v5, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-object v6, v6, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v4}, Lcom/lge/camera/ControllerFunction;->getIndexMenuKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 288
    .local v3, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/lge/camera/controller/QuickFunctionDragController;->checkMenuDuplicated(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$100(Lcom/lge/camera/controller/QuickFunctionDragController;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 292
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$200(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/setting/SelectMenuGridAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->notifyDataSetChanged()V

    .line 293
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$400(Lcom/lge/camera/controller/QuickFunctionDragController;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I
    invoke-static {v6}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$300(Lcom/lge/camera/controller/QuickFunctionDragController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v5, v3}, Lcom/lge/camera/components/RotateImageButton;->setTag(Ljava/lang/Object;)V

    .line 295
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 296
    .local v1, "iconIndex":I
    const/4 v2, 0x0

    .line 298
    .local v2, "iconResId":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 299
    :try_start_0
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v5

    aget v2, v5, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_1
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$400(Lcom/lge/camera/controller/QuickFunctionDragController;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I
    invoke-static {v6}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$300(Lcom/lge/camera/controller/QuickFunctionDragController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v5, v2}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 308
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$400(Lcom/lge/camera/controller/QuickFunctionDragController;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I
    invoke-static {v6}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$300(Lcom/lge/camera/controller/QuickFunctionDragController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-object v7, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-object v7, v7, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v4}, Lcom/lge/camera/ControllerFunction;->getIndexMenuKey(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/camera/controller/QuickFunctionDragController;->getMenuIconStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-object v5, v5, Lcom/lge/camera/controller/QuickFunctionDragController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v4}, Lcom/lge/camera/ControllerFunction;->getSettingMenuEnable(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 312
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$400(Lcom/lge/camera/controller/QuickFunctionDragController;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I
    invoke-static {v6}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$300(Lcom/lge/camera/controller/QuickFunctionDragController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDefaultColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/RotateImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0

    .line 301
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v2, v5, v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "CameraApp"

    const-string v6, "ArrayIndexOutOfBoundsException:"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    const/4 v2, 0x0

    goto :goto_1

    .line 314
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$400(Lcom/lge/camera/controller/QuickFunctionDragController;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I
    invoke-static {v6}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$300(Lcom/lge/camera/controller/QuickFunctionDragController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDimColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/RotateImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0
.end method
