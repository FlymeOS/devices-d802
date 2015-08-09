.class Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$2;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;)V
    .locals 0

    .prologue
    .line 2214
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->dismiss()V

    .line 2218
    return-void
.end method
