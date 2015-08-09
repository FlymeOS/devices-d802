.class Lcom/android/internal/policy/impl/LGGlobalActions$Poweroffaction;
.super Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Poweroffaction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 6

    .prologue
    const v1, 0x1080030

    const v3, 0x1040127

    .line 1324
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$Poweroffaction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v3

    .line 1325
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1330
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1335
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 1337
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1338
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lge/cappuccino/IMdm;->setPowerOffDisplayMenu(Landroid/view/View;)V

    .line 1340
    :cond_0
    return-object v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 1345
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LGMDMPowerOffUIAdpater"

    invoke-interface {v0, v1, v2}, Lcom/lge/cappuccino/IMdm;->checkPoweroffGlobalAction(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    const-string v0, "MDM"

    const-string v1, "ToggleAction isEnabled false : restrict power off"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v0, 0x0

    .line 1351
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1361
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$Poweroffaction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$000(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 1362
    return v1
.end method

.method onToggle(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1355
    if-eqz p1, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$Poweroffaction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$000(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 1358
    :cond_0
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1370
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1366
    const/4 v0, 0x1

    return v0
.end method
