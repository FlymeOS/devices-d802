.class Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;
.super Ljava/lang/Object;
.source "WfdsEvent.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegListenerIdComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/wfds/WfdsEvent$RegisteredListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;


# direct methods
.method private constructor <init>(Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;->this$1:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;Lcom/lge/wfds/WfdsEvent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;
    .param p2, "x1"    # Lcom/lge/wfds/WfdsEvent$1;

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;-><init>(Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/wfds/WfdsEvent$RegisteredListener;Lcom/lge/wfds/WfdsEvent$RegisteredListener;)I
    .locals 2
    .param p1, "regListenerA"    # Lcom/lge/wfds/WfdsEvent$RegisteredListener;
    .param p2, "regListenerB"    # Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    .prologue
    .line 360
    iget v0, p1, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    iget v1, p2, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    if-le v0, v1, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    .line 362
    :cond_0
    iget v0, p1, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    iget v1, p2, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    if-ne v0, v1, :cond_1

    .line 363
    const/4 v0, 0x0

    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 358
    check-cast p1, Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;->compare(Lcom/lge/wfds/WfdsEvent$RegisteredListener;Lcom/lge/wfds/WfdsEvent$RegisteredListener;)I

    move-result v0

    return v0
.end method
