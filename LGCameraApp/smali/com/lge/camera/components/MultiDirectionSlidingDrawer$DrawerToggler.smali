.class Lcom/lge/camera/components/MultiDirectionSlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "MultiDirectionSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;)V
    .locals 0

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$DrawerToggler;->this$0:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;Lcom/lge/camera/components/MultiDirectionSlidingDrawer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    .param p2, "x1"    # Lcom/lge/camera/components/MultiDirectionSlidingDrawer$1;

    .prologue
    .line 1094
    invoke-direct {p0, p1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$DrawerToggler;-><init>(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$DrawerToggler;->this$0:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    # getter for: Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mLocked:Z
    invoke-static {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->access$200(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    :goto_0
    return-void

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$DrawerToggler;->this$0:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    # getter for: Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimateOnClick:Z
    invoke-static {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->access$300(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$DrawerToggler;->this$0:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateToggle()V

    goto :goto_0

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$DrawerToggler;->this$0:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->toggle()V

    goto :goto_0
.end method
