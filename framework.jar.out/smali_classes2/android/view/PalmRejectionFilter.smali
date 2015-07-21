.class public Landroid/view/PalmRejectionFilter;
.super Ljava/lang/Object;
.source "PalmRejectionFilter.java"

# interfaces
.implements Landroid/view/IEventFilter;


# instance fields
.field private ignore:Z

.field private mFilteredAct:Landroid/view/IEventFilter$ReturnAct;

.field private needToRepeat:Z

.field private reportIdBits:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/view/PalmRejectionFilter;->reportIdBits:Ljava/util/BitSet;

    .line 29
    invoke-virtual {p0}, Landroid/view/PalmRejectionFilter;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/view/PalmRejectionFilter;->reportIdBits:Ljava/util/BitSet;

    .line 35
    invoke-virtual {p0}, Landroid/view/PalmRejectionFilter;->init()V

    .line 36
    return-void
.end method


# virtual methods
.method public filtering(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, "isPalm":Z
    iget-boolean v4, p0, Landroid/view/PalmRejectionFilter;->ignore:Z

    if-eqz v4, :cond_1

    .line 51
    sget-object v4, Landroid/view/IEventFilter$ReturnAct;->IGNORE:Landroid/view/IEventFilter$ReturnAct;

    iput-object v4, p0, Landroid/view/PalmRejectionFilter;->mFilteredAct:Landroid/view/IEventFilter$ReturnAct;

    .line 52
    iget-object v4, p0, Landroid/view/PalmRejectionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->clear()V

    .line 69
    :cond_0
    :goto_0
    return v6

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 55
    .local v3, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    .line 57
    .local v2, "p":F
    iget-object v4, p0, Landroid/view/PalmRejectionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 58
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ltz v4, :cond_2

    .line 59
    const/4 v1, 0x1

    .line 55
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    .end local v2    # "p":F
    :cond_3
    if-eqz v1, :cond_0

    .line 64
    iput-boolean v6, p0, Landroid/view/PalmRejectionFilter;->ignore:Z

    .line 65
    sget-object v4, Landroid/view/IEventFilter$ReturnAct;->CANCEL:Landroid/view/IEventFilter$ReturnAct;

    iput-object v4, p0, Landroid/view/PalmRejectionFilter;->mFilteredAct:Landroid/view/IEventFilter$ReturnAct;

    goto :goto_0
.end method

.method public getAct()Landroid/view/IEventFilter$ReturnAct;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/view/PalmRejectionFilter;->mFilteredAct:Landroid/view/IEventFilter$ReturnAct;

    return-object v0
.end method

.method public getReportMask()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/view/PalmRejectionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    sget-object v0, Landroid/view/IEventFilter$ReturnAct;->NONE:Landroid/view/IEventFilter$ReturnAct;

    iput-object v0, p0, Landroid/view/PalmRejectionFilter;->mFilteredAct:Landroid/view/IEventFilter$ReturnAct;

    .line 41
    iget-object v0, p0, Landroid/view/PalmRejectionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 42
    iput-boolean v1, p0, Landroid/view/PalmRejectionFilter;->needToRepeat:Z

    .line 43
    iput-boolean v1, p0, Landroid/view/PalmRejectionFilter;->ignore:Z

    .line 44
    return-void
.end method

.method public needToRepeat()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/view/PalmRejectionFilter;->needToRepeat:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PalmRejectionFilter: ignore["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/PalmRejectionFilter;->ignore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
