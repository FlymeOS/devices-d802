.class Lcom/android/internal/policy/impl/LGGlobalActions$6;
.super Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressAction;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;->createDialog()Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;II)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$000(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    .line 586
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x1

    return v0
.end method
