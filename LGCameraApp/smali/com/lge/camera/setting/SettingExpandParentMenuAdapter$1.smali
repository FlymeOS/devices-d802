.class Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$1;
.super Ljava/lang/Object;
.source "SettingExpandParentMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 229
    iput-object p1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$1;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const v8, 0x7f0d01f1

    const v7, 0x7f0d01f0

    const/4 v6, 0x0

    .line 232
    iget-object v3, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$1;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    const-wide/16 v4, 0x1f4

    # invokes: Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->isClickedLately(J)Z
    invoke-static {v3, v4, v5}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$000(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$1;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->calcTime:J
    invoke-static {v3, v4, v5}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$102(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;J)J

    .line 237
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPressedCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$1;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    # getter for: Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I
    invoke-static {v5}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$200(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v3, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$1;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    # getter for: Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I
    invoke-static {v3}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$200(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$1;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    const/4 v4, 0x0

    # setter for: Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I
    invoke-static {v3, v4}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$202(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;I)I

    .line 243
    const v3, 0x7f0d01ef

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/SettingExpandParentImage;

    .line 245
    .local v2, "parentImage":Lcom/lge/camera/components/SettingExpandParentImage;
    const-string v3, "key_none"

    iget-object v4, v2, Lcom/lge/camera/components/SettingExpandParentImage;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "column"

    iget v4, v2, Lcom/lge/camera/components/SettingExpandParentImage;->column:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v3, "row"

    iget v4, v2, Lcom/lge/camera/components/SettingExpandParentImage;->row:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const-string v3, "key"

    iget-object v4, v2, Lcom/lge/camera/components/SettingExpandParentImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 258
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "currentLanguage":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    const-string v3, "th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v6, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 263
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 266
    :cond_2
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 269
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    const-string v3, "th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 271
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v6, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 273
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 277
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$1;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    # getter for: Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$300(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    const-string v4, "com.lge.camera.command.ShowSettingExpandChild"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$1;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    # getter for: Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$300(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    const-string v4, "com.lge.camera.command.ShowSettingExpandChild"

    invoke-interface {v3, v4, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
