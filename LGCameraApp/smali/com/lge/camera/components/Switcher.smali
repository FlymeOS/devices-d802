.class public Lcom/lge/camera/components/Switcher;
.super Lcom/lge/camera/components/RotateImageButton;
.source "Switcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/Switcher$OnSwitchListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/lge/camera/components/Switcher$OnSwitchListener;

.field private mSwitch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/Switcher;->mSwitch:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/Switcher;->mSwitch:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/Switcher;->mSwitch:Z

    .line 57
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/lge/camera/components/RotateImageButton;->performClick()Z

    move-result v0

    .line 66
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/lge/camera/components/Switcher;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/components/Switcher;->mListener:Lcom/lge/camera/components/Switcher$OnSwitchListener;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/lge/camera/components/Switcher;->mListener:Lcom/lge/camera/components/Switcher$OnSwitchListener;

    invoke-interface {v1, p0}, Lcom/lge/camera/components/Switcher$OnSwitchListener;->onSwitcherClick(Lcom/lge/camera/components/Switcher;)V

    .line 69
    :cond_0
    return v0
.end method

.method public setOnSwitchListener(Lcom/lge/camera/components/Switcher$OnSwitchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/camera/components/Switcher$OnSwitchListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/camera/components/Switcher;->mListener:Lcom/lge/camera/components/Switcher$OnSwitchListener;

    .line 61
    return-void
.end method

.method public setSwitch(Z)V
    .locals 1
    .param p1, "onOff"    # Z

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/lge/camera/components/Switcher;->mSwitch:Z

    if-ne v0, p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/components/Switcher;->mSwitch:Z

    .line 91
    invoke-virtual {p0}, Lcom/lge/camera/components/Switcher;->invalidate()V

    goto :goto_0
.end method

.method public setSwitcherImage(II)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "mode"    # I

    .prologue
    .line 96
    if-nez p2, :cond_0

    .line 97
    const v0, 0x7f020497

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/Switcher;->setBackgroundResource(I)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const v0, 0x7f020498

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/Switcher;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcom/lge/camera/components/Switcher;->mListener:Lcom/lge/camera/components/Switcher$OnSwitchListener;

    .line 74
    invoke-virtual {p0}, Lcom/lge/camera/components/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/Switcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/Switcher;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/Switcher;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_1
    return-void
.end method
