.class final Lcom/android/internal/policy/impl/LGGlobalActions$EpsmodeOffAction;
.super Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;
.source "LGGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/LGGlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EpsmodeOffAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 3

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$EpsmodeOffAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    .line 1419
    sget v0, Lcom/lge/internal/R$drawable;->icn_emergencypowersavemode:I

    sget v1, Lcom/lge/internal/R$string;->global_action_eps_mode:I

    sget v2, Lcom/lge/internal/R$string;->global_actions_eps_mode_off_summary:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;-><init>(III)V

    .line 1422
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;Lcom/android/internal/policy/impl/LGGlobalActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/LGGlobalActions$1;

    .prologue
    .line 1416
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$EpsmodeOffAction;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 1

    .prologue
    .line 1426
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 3

    .prologue
    .line 1442
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1443
    .local v0, "epsmIntent":Landroid/content/Intent;
    const-string v1, "com.nttdocomo.android.epsmodecontrol"

    const-string v2, "com.nttdocomo.android.epsmodecontrol.ChangeModeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1444
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1445
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1446
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1436
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1431
    const/4 v0, 0x1

    return v0
.end method
