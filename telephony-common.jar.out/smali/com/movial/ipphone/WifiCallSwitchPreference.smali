.class public Lcom/movial/ipphone/WifiCallSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "WifiCallSwitchPreference.java"


# static fields
.field private static final EVENT_IMS_WIFI_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiCallSwitchPreference"


# instance fields
.field private mCellOnly:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    .line 84
    const-string v0, "On"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 85
    const-string v0, "Off"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 86
    const-string v0, "Wi-Fi Calling"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method private registerToIPRegistry(Z)V
    .locals 0
    .param p1, "register"    # Z

    .prologue
    .line 115
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    .line 99
    return-void
.end method

.method public onSwitchClicked()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method
