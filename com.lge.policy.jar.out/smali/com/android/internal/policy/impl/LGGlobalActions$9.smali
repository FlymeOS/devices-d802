.class Lcom/android/internal/policy/impl/LGGlobalActions$9;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1300(Lcom/android/internal/policy/impl/LGGlobalActions;)Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/LGGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$Action;->onLongPress()Z

    move-result v0

    return v0
.end method
