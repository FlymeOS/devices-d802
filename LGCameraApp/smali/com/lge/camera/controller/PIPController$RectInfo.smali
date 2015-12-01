.class Lcom/lge/camera/controller/PIPController$RectInfo;
.super Ljava/lang/Object;
.source "PIPController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PIPController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RectInfo"
.end annotation


# instance fields
.field private mHeight:I

.field private mPrevRectX0:I

.field private mPrevRectX1:I

.field private mPrevRectY0:I

.field private mPrevRectY1:I

.field private mRectX0:I

.field private mRectX1:I

.field private mRectY0:I

.field private mRectY1:I

.field private mWidth:I

.field final synthetic this$0:Lcom/lge/camera/controller/PIPController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/controller/PIPController;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    iput-object p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->this$0:Lcom/lge/camera/controller/PIPController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 108
    invoke-virtual {p0}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPrevPositionUpdate()V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/controller/PIPController;IIII)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "y0"    # I
    .param p4, "x1"    # I
    .param p5, "y1"    # I

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->this$0:Lcom/lge/camera/controller/PIPController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    return p1
.end method

.method static synthetic access$112(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    return v0
.end method

.method static synthetic access$120(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    return p1
.end method

.method static synthetic access$212(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    return v0
.end method

.method static synthetic access$220(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    return p1
.end method

.method static synthetic access$312(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    return v0
.end method

.method static synthetic access$320(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    return v0
.end method

.method static synthetic access$402(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    return p1
.end method

.method static synthetic access$412(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    return v0
.end method

.method static synthetic access$420(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    return v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/PIPController$RectInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/PIPController$RectInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController$RectInfo;

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mWidth:I

    return v0
.end method


# virtual methods
.method public restorePosition()V
    .locals 4

    .prologue
    .line 139
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectX0:I

    iget v1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectY0:I

    iget v2, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectX1:I

    iget v3, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectY1:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 143
    return-void
.end method

.method public setPosition(IIII)V
    .locals 2
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    .line 117
    iput p2, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    .line 118
    iput p3, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    .line 119
    iput p4, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    .line 120
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    iget v1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mWidth:I

    .line 121
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    iget v1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mHeight:I

    .line 122
    return-void
.end method

.method public setPosition(Lcom/lge/camera/controller/PIPController$RectInfo;)V
    .locals 4
    .param p1, "rect"    # Lcom/lge/camera/controller/PIPController$RectInfo;

    .prologue
    .line 125
    iget v0, p1, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    iget v1, p1, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    iget v2, p1, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    iget v3, p1, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 129
    return-void
.end method

.method public setPrevPositionUpdate()V
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectX0:I

    .line 133
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectY0:I

    .line 134
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectX1:I

    .line 135
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectY1:I

    .line 136
    return-void
.end method
