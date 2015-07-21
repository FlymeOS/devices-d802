.class public Lcom/android/internal/widget/LockPatternViewEx;
.super Lcom/android/internal/widget/LockPatternView;
.source "LockPatternViewEx.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "tag":Ljava/lang/String;
    return-void
.end method


# virtual methods
.method public getCenterXForLastColumn()F
    .locals 4

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternViewEx;->mPattern:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternViewEx;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 55
    .local v0, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v1, p0, Lcom/android/internal/widget/LockPatternViewEx;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternViewEx;->mSquareWidth:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/internal/widget/LockPatternViewEx;->mSquareWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    return v1
.end method

.method public getCenterYForLastRow()F
    .locals 4

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternViewEx;->mPattern:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternViewEx;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 60
    .local v0, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v1, p0, Lcom/android/internal/widget/LockPatternViewEx;->mPaddingTop:I

    int-to-float v1, v1

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternViewEx;->mSquareHeight:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/internal/widget/LockPatternViewEx;->mSquareHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    return v1
.end method
