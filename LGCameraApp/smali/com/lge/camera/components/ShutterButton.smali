.class public Lcom/lge/camera/components/ShutterButton;
.super Lcom/lge/camera/components/RotateImageButton;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;,
        Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private isShutterButtonFocusEnable:Z

.field private isShutterButtonReleaseImmediately:Z

.field private mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

.field private mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

.field private mOldPressed:Z

.field private mShutterButtonClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable:Z

    .line 57
    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonReleaseImmediately:Z

    .line 61
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable:Z

    .line 57
    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonReleaseImmediately:Z

    .line 66
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable:Z

    .line 57
    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonReleaseImmediately:Z

    .line 71
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/components/ShutterButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/components/ShutterButton;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lge/camera/components/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 135
    if-nez p1, :cond_0

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/lge/camera/components/RotateImageButton;->drawableStateChanged()V

    .line 88
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isPressed()Z

    move-result v0

    .line 92
    .local v0, "pressed":Z
    iget-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 93
    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->mOldPressed:Z

    .line 94
    if-nez v0, :cond_2

    .line 116
    iget-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonReleaseImmediately:Z

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0, v0}, Lcom/lge/camera/components/ShutterButton;->callShutterButtonFocus(Z)V

    .line 118
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonReleaseImmediately:Z

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    new-instance v1, Lcom/lge/camera/components/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/lge/camera/components/ShutterButton$1;-><init>(Lcom/lge/camera/components/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ShutterButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 127
    :cond_2
    invoke-direct {p0, v0}, Lcom/lge/camera/components/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public isShutterButtonClicked()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    return v0
.end method

.method public isShutterButtonFocusEnable()Z
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportShutterButtonBurst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

    invoke-interface {v0, p0}, Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;->onShutterButtonLongPressed(Lcom/lge/camera/components/ShutterButton;)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/lge/camera/components/RotateImageButton;->performClick()Z

    move-result v0

    .line 148
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 150
    iget-object v1, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 152
    :cond_0
    return v0
.end method

.method public performFocus(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 162
    :cond_0
    return-void
.end method

.method public setOnShutterButtonListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    .line 76
    return-void
.end method

.method public setOnShutterButtonLongPressListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lge/camera/components/ShutterButton;->mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

    .line 80
    return-void
.end method

.method public setShutterButtonFocusEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable:Z

    .line 182
    return-void
.end method

.method public setShutterButtonReleaseImmediately(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonReleaseImmediately:Z

    .line 186
    return-void
.end method

.method public unbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    iput-object v2, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    .line 190
    iput-object v2, p0, Lcom/lge/camera/components/ShutterButton;->mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable:Z

    .line 192
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 193
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 195
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 200
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ShutterButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :cond_1
    return-void
.end method
