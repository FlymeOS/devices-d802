.class public Lcom/lge/camera/command/ShowHelpGuidePopup;
.super Lcom/lge/camera/command/Command;
.source "ShowHelpGuidePopup.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 22
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowHelpGuidePopup;->execute(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 7
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 31
    const-string v4, "CameraApp"

    const-string v5, "ShowHelpGuidePopup - start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 33
    check-cast v0, Landroid/os/Bundle;

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "dialog_id"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 37
    .local v1, "dialog_id":I
    if-nez v1, :cond_1

    .line 38
    const/4 v3, 0x0

    .line 39
    .local v3, "helpGuide":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowHelpGuidePopup;->checkMediator()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    iget-object v4, p0, Lcom/lge/camera/command/ShowHelpGuidePopup;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSettingParameterValue()Ljava/lang/String;

    move-result-object v3

    .line 42
    :cond_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "helpGuide = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    if-eqz v3, :cond_1

    .line 44
    invoke-static {v3}, Lcom/lge/camera/util/DialogCreater;->getHelpDialogId(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 50
    .end local v3    # "helpGuide":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/lge/camera/command/ShowHelpGuidePopup;->showHelpGuideDialogPopup(I)V

    .line 51
    return-void

    .line 47
    .restart local v3    # "helpGuide":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v4, "CameraApp"

    const-string v5, "NullPointerException:"

    invoke-static {v4, v5, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showHelpGuideDialogPopup(I)V
    .locals 1
    .param p1, "dialog_id"    # I

    .prologue
    .line 54
    packed-switch p1, :pswitch_data_0

    .line 76
    :goto_0
    :pswitch_0
    return-void

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/command/ShowHelpGuidePopup;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
