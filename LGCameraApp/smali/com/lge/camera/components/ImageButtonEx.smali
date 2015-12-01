.class public Lcom/lge/camera/components/ImageButtonEx;
.super Landroid/widget/ImageButton;
.source "ImageButtonEx.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;,
        Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    }
.end annotation


# static fields
.field public static final BUTTON_STATE_LONG_PRESSED:I = 0x2

.field public static final BUTTON_STATE_NOT_PRESSED:I = 0x0

.field public static final BUTTON_STATE_PRESSED:I = 0x1

.field public static final BUTTON_STATE_RELEASED:I = 0x3

.field public static final IBE_BUTTON_MIN:I = 0x0

.field public static final IBE_BUTTON_PLUS:I = 0x1

.field private static final LONG_PRESS_EVENT_DELAY:J = 0xc8L

.field private static final LONG_PRESS_JUDGE_TIMEOUT:J = 0x3e8L


# instance fields
.field private mButtonCheckTimer:Ljava/util/Timer;

.field private mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

.field private mButtonStatus:I

.field public mContext:Landroid/content/Context;

.field private mReleaseArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 65
    iput-object p1, p0, Lcom/lge/camera/components/ImageButtonEx;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mContext:Landroid/content/Context;

    .line 69
    iput-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 85
    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 57
    iput-object p1, p0, Lcom/lge/camera/components/ImageButtonEx;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/ImageButtonEx;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/ImageButtonEx;->setFocusable(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/lge/camera/components/ImageButtonEx;->initReleaseArea()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 52
    iput-object p1, p0, Lcom/lge/camera/components/ImageButtonEx;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/components/ImageButtonEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/components/ImageButtonEx;

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/components/ImageButtonEx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/components/ImageButtonEx;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/components/ImageButtonEx;)Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/components/ImageButtonEx;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    return-object v0
.end method

.method private checkOutRange(Landroid/view/View;IFF)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 113
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    iget v0, v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mTop:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    iget v0, v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mBottom:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    :cond_0
    move v0, v1

    .line 120
    :goto_0
    return v0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    iget v0, v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    iget v0, v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mRight:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    :cond_2
    move v0, v1

    .line 118
    goto :goto_0

    .line 120
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doTouchActionDown(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 166
    new-instance v1, Lcom/lge/camera/components/ImageButtonEx$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/components/ImageButtonEx$1;-><init>(Lcom/lge/camera/components/ImageButtonEx;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xc8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/components/ImageButtonEx;->startTimerTask(Ljava/util/TimerTask;JJ)V

    .line 186
    return-void
.end method

.method private doTouchActionMove(Landroid/view/View;FF)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 154
    iget v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/lge/camera/components/ImageButtonEx;->checkOutRange(Landroid/view/View;IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 157
    invoke-direct {p0}, Lcom/lge/camera/components/ImageButtonEx;->stopTimerTask()V

    .line 158
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;->onChange(I)V

    .line 161
    :cond_0
    return-void
.end method

.method private doTouchActionUp(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 148
    invoke-direct {p0}, Lcom/lge/camera/components/ImageButtonEx;->stopTimerTask()V

    .line 149
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;->onChange(I)V

    .line 151
    :cond_0
    return-void
.end method

.method private startTimerTask(Ljava/util/TimerTask;JJ)V
    .locals 6
    .param p1, "t"    # Ljava/util/TimerTask;
    .param p2, "judge"    # J
    .param p4, "interval"    # J

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/util/Timer;

    const-string v1, "timer_long_press_check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    .line 99
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 101
    :cond_0
    return-void
.end method

.method private stopTimerTask()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 106
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public initReleaseArea()V
    .locals 6

    .prologue
    const/16 v2, 0xa

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;-><init>(Lcom/lge/camera/components/ImageButtonEx;IIII)V

    .line 91
    .local v0, "ra":Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 92
    new-instance v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    .end local v0    # "ra":Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;-><init>(Lcom/lge/camera/components/ImageButtonEx;IIII)V

    .line 93
    .restart local v0    # "ra":Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 125
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 126
    .local v1, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 141
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 128
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/lge/camera/components/ImageButtonEx;->doTouchActionDown(Landroid/view/View;)V

    .line 129
    const/4 v2, 0x1

    goto :goto_1

    .line 132
    :pswitch_1
    invoke-direct {p0, p1, v0, v1}, Lcom/lge/camera/components/ImageButtonEx;->doTouchActionMove(Landroid/view/View;FF)V

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/lge/camera/components/ImageButtonEx;->doTouchActionUp(Landroid/view/View;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setImageButtonExStatusListener(Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 190
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Lcom/lge/camera/components/ImageButtonEx;->stopTimerTask()V

    .line 198
    iput-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 199
    invoke-virtual {p0}, Lcom/lge/camera/components/ImageButtonEx;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 200
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ImageButtonEx;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-virtual {p0}, Lcom/lge/camera/components/ImageButtonEx;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 202
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ImageButtonEx;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    return-void
.end method
