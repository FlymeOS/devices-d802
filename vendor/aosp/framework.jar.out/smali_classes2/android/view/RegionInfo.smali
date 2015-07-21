.class Landroid/view/RegionInfo;
.super Ljava/lang/Object;
.source "RegionInfo.java"


# static fields
.field private static isPortrait:Z

.field private static lcdRatio:I

.field private static lcd_x:I

.field private static lcd_y:I


# instance fields
.field private edgeSize:I

.field private validX:I

.field private validY:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/RegionInfo;->setEdgeSize(I)V

    .line 24
    return-void
.end method

.method static getLCDRatio()I
    .locals 1

    .prologue
    .line 39
    sget v0, Landroid/view/RegionInfo;->lcdRatio:I

    return v0
.end method

.method static setLCDSize(II)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 33
    sput p0, Landroid/view/RegionInfo;->lcd_x:I

    .line 34
    sput p1, Landroid/view/RegionInfo;->lcd_y:I

    .line 35
    sget v0, Landroid/view/RegionInfo;->lcd_x:I

    sget v1, Landroid/view/RegionInfo;->lcd_y:I

    div-int/2addr v0, v1

    sput v0, Landroid/view/RegionInfo;->lcdRatio:I

    .line 36
    return-void
.end method

.method static setOrientation(Z)V
    .locals 0
    .param p0, "portrait"    # Z

    .prologue
    .line 43
    sput-boolean p0, Landroid/view/RegionInfo;->isPortrait:Z

    .line 44
    return-void
.end method


# virtual methods
.method getLeftEdgeRegion()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Landroid/view/RegionInfo;->edgeSize:I

    return v0
.end method

.method getRightEdgeRegion()I
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Landroid/view/RegionInfo;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 52
    iget v0, p0, Landroid/view/RegionInfo;->validX:I

    .line 54
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/RegionInfo;->validY:I

    goto :goto_0
.end method

.method setEdgeSize(I)V
    .locals 2
    .param p1, "edge"    # I

    .prologue
    .line 27
    iput p1, p0, Landroid/view/RegionInfo;->edgeSize:I

    .line 28
    sget v0, Landroid/view/RegionInfo;->lcd_x:I

    iget v1, p0, Landroid/view/RegionInfo;->edgeSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/view/RegionInfo;->validX:I

    .line 29
    sget v0, Landroid/view/RegionInfo;->lcd_y:I

    iget v1, p0, Landroid/view/RegionInfo;->edgeSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/view/RegionInfo;->validY:I

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCD["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/view/RegionInfo;->lcd_x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/view/RegionInfo;->lcd_y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Edge["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/RegionInfo;->getLeftEdgeRegion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/RegionInfo;->getRightEdgeRegion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
