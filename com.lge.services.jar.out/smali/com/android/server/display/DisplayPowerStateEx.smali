.class Lcom/android/server/display/DisplayPowerStateEx;
.super Lcom/android/server/display/DisplayPowerState;
.source "DisplayPowerStateEx.java"


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/lights/Light;Lcom/android/server/display/ColorFade;)V
    .locals 0
    .param p1, "blanker"    # Lcom/android/server/display/DisplayBlanker;
    .param p2, "backlight"    # Lcom/android/server/lights/Light;
    .param p3, "screenOffAniamtion"    # Lcom/android/server/display/ColorFade;

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/lights/Light;Lcom/android/server/display/ColorFade;)V

    .line 8
    return-void
.end method


# virtual methods
.method public setScreenOffAnimation(Lcom/android/server/display/ColorFade;)V
    .locals 0
    .param p1, "screenOffAniamtion"    # Lcom/android/server/display/ColorFade;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerStateEx;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 12
    return-void
.end method
