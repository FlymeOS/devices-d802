.class public Landroid/widget/CliptrayUtils;
.super Ljava/lang/Object;
.source "CliptrayUtils.java"


# static fields
.field private static final CLIPTRAY_HIDE:Ljava/lang/String; = "com.lge.systemservice.core.cliptray.HIDE_CLIPTRAY"

.field private static final CLIPTRAY_INPUTTYPE:Ljava/lang/String; = "com.lge.systemservice.core.cliptray.INPUTTYPE_CLIPTRAY"

.field private static final CLIPTRAY_PASTE:Ljava/lang/String; = "com.lge.systemservice.core.cliptray.PASTE_CLIPTRAY"

.field private static final CLIPTRAY_SHOW:Ljava/lang/String; = "com.lge.systemservice.core.cliptray.SHOW_CLIPTRAY"

.field private static final INIT_CLIPTRAY:I = 0xa

.field private static final INPUT_TYPE_TEXT_IMAGE:I = 0x2

.field private static final INPUT_TYPE_TEXT_ONLY:I = 0x0

.field private static POPUP_TEXT_LAYOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CliptrayUtils"

.field private static sCliptrayAvailable:Z


# instance fields
.field private mCliptrayTextView:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const v0, 0x10900d8

    sput v0, Landroid/widget/CliptrayUtils;->POPUP_TEXT_LAYOUT:I

    .line 36
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    sput-boolean v0, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    .line 40
    const-string v0, "CliptrayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CliptrayUtils created!! mTextView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public static getFeatureAvailable()Z
    .locals 3

    .prologue
    .line 50
    const-string v0, "CliptrayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFeatureAvailable() : sCliptrayAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-boolean v0, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    return v0
.end method

.method public static setFeatureAvailable(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-string v0, "CliptrayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sCliptrayAvailable is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method private setInputTypeforClipTray(Landroid/widget/Editor$InputContentType;Z)V
    .locals 6
    .param p1, "mInputContentType"    # Landroid/widget/Editor$InputContentType;
    .param p2, "init"    # Z

    .prologue
    .line 95
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.systemservice.core.cliptray.INPUTTYPE_CLIPTRAY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 97
    const-string v3, "Inputtype"

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    :goto_0
    iget-object v3, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void

    .line 99
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/widget/CliptrayUtils;->setInputTypeforClipTray(Landroid/widget/Editor$InputContentType;Z)V

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "inputTypeforClipTray":I
    if-eqz p1, :cond_2

    .line 102
    iget-object v2, p1, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 103
    .local v2, "options":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "com.lge.cliptray.image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    const/4 v0, 0x2

    .line 105
    const-string v3, "CliptrayUtils"

    const-string v4, "inputTypeforClipTray = INPUT_TYPE_TEXT_IMAGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    const-string v3, "Inputtype"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    .end local v2    # "options":Ljava/lang/String;
    :cond_2
    const-string v3, "CliptrayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInputTypeforClipTray(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showClipTray()V
    .locals 2

    .prologue
    .line 82
    sget-boolean v1, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.systemservice.core.cliptray.SHOW_CLIPTRAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method hideClipTray()V
    .locals 2

    .prologue
    .line 75
    sget-boolean v1, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.systemservice.core.cliptray.HIDE_CLIPTRAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method hideClipTrayIfNeeded()V
    .locals 2

    .prologue
    .line 66
    sget-boolean v0, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "CliptrayUtils"

    const-string v1, "hideClipTrayIfNeeded() TextView is focused!! hideClipTray()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Landroid/widget/CliptrayUtils;->hideClipTray()V

    .line 72
    :cond_0
    return-void
.end method

.method initCliptrayPopupWindow(Landroid/view/LayoutInflater;Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "wrapContent"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "mContentView"    # Landroid/view/ViewGroup;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 128
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v0, :cond_0

    .line 130
    sget v0, Lcom/lge/internal/R$layout;->bubble_item:I

    sput v0, Landroid/widget/CliptrayUtils;->POPUP_TEXT_LAYOUT:I

    .line 132
    :cond_0
    sget-boolean v0, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/CliptrayUtils;->isOwnerforClipTray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget v0, Landroid/widget/CliptrayUtils;->POPUP_TEXT_LAYOUT:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    sget v1, Lcom/lge/internal/R$string;->cliptray:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_1
    return-void
.end method

.method isOwnerforClipTray()Z
    .locals 4

    .prologue
    .line 115
    const/4 v0, 0x1

    .line 116
    .local v0, "mIsOwner":Z
    const-string v1, "kids"

    const-string v2, "service.plushome.currenthome"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/4 v0, 0x0

    .line 122
    :cond_1
    const-string v1, "CliptrayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOwnerforClipTray():mIsOwner :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v0
.end method

.method notifyPaste()V
    .locals 2

    .prologue
    .line 59
    sget-boolean v1, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.systemservice.core.cliptray.PASTE_CLIPTRAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method setInputTypeIfNeeded(Landroid/widget/Editor$InputContentType;Z)V
    .locals 1
    .param p1, "mInputContentType"    # Landroid/widget/Editor$InputContentType;
    .param p2, "init"    # Z

    .prologue
    .line 89
    sget-boolean v0, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/CliptrayUtils;->setInputTypeforClipTray(Landroid/widget/Editor$InputContentType;Z)V

    .line 92
    :cond_0
    return-void
.end method

.method setTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 55
    iput-object p1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    .line 56
    return-void
.end method

.method showCliptrayPopupWindow(ZZZ)V
    .locals 5
    .param p1, "canPaste"    # Z
    .param p2, "isPassword"    # Z
    .param p3, "isLockScreen"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    sget-boolean v4, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v4, :cond_1

    .line 144
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/lge/cappuccino/IMdm;->checkDisabledClipboard(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 146
    .local v1, "isMDMEnable":Z
    :goto_0
    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    move v0, v2

    .line 151
    .local v0, "canClipTray":Z
    :goto_1
    iget-object v4, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 152
    iget-object v4, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Landroid/widget/CliptrayUtils;->setInputTypeforClipTray(Landroid/widget/Editor$InputContentType;Z)V

    .line 156
    .end local v0    # "canClipTray":Z
    .end local v1    # "isMDMEnable":Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 144
    goto :goto_0

    .restart local v1    # "isMDMEnable":Z
    :cond_3
    move v0, v3

    .line 146
    goto :goto_1

    .line 152
    .restart local v0    # "canClipTray":Z
    :cond_4
    const/16 v3, 0x8

    goto :goto_2
.end method

.method showCliptrayfromPopupWindow(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mShowSoftInputOnFocus"    # Z

    .prologue
    .line 159
    sget-boolean v1, Landroid/widget/CliptrayUtils;->sCliptrayAvailable:Z

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mCliptrayTextView:Landroid/widget/TextView;

    if-ne v1, p1, :cond_1

    .line 161
    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 162
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 163
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Landroid/widget/CliptrayUtils;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 167
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-direct {p0}, Landroid/widget/CliptrayUtils;->showClipTray()V

    .line 170
    :cond_1
    return-void
.end method
