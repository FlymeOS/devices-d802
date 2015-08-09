.class Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction$1;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->getPopup(ZI)Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;)V
    .locals 0

    .prologue
    .line 2911
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction$1;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2914
    const/4 v0, 0x1

    return v0
.end method
