.class Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartCoverUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SmartCoverUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartCoverReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SmartCoverUtil;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SmartCoverUtil;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;->this$0:Lcom/android/internal/policy/impl/SmartCoverUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SmartCoverUtil;Lcom/android/internal/policy/impl/SmartCoverUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/SmartCoverUtil;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/SmartCoverUtil$1;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;-><init>(Lcom/android/internal/policy/impl/SmartCoverUtil;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const-string v2, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 161
    .local v1, "extra":I
    if-ne v1, v3, :cond_2

    .line 162
    sput-boolean v3, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverClosed:Z

    .line 163
    sget v2, Lcom/android/internal/policy/impl/SmartCoverUtil;->mCoverType:I

    if-ne v2, v3, :cond_1

    .line 164
    sput-boolean v3, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    .line 177
    .end local v1    # "extra":I
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v1    # "extra":I
    :cond_1
    sput-boolean v4, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    goto :goto_0

    .line 168
    :cond_2
    if-nez v1, :cond_3

    .line 169
    sput-boolean v4, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverClosed:Z

    .line 170
    sput-boolean v4, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    goto :goto_0

    .line 172
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 173
    sput-boolean v3, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverClosed:Z

    .line 174
    sput-boolean v3, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    goto :goto_0
.end method
