.class Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$1;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 0

    .prologue
    .line 2184
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iput-object p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$1;->val$this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$1;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->dismiss()V

    .line 2189
    return-void
.end method
