.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$1;,
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;
    }
.end annotation


# static fields
.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final ELLIPSIS_NORMAL:[C

.field static final ELLIPSIS_TWO_DOTS:[C

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

.field static final MAX_EMOJI:I

.field static final MIN_EMOJI:I

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 46
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 49
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 53
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 55
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 1939
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 1969
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1971
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 1974
    new-array v0, v3, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/Layout;->ELLIPSIS_NORMAL:[C

    .line 1975
    new-array v0, v3, [C

    const/16 v1, 0x2025

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/Layout;->ELLIPSIS_TWO_DOTS:[C

    return-void

    .line 57
    :cond_0
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 58
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_0

    .line 1969
    nop

    :array_0
    .array-data 4
        0x0
        0x3ffffff
    .end array-data

    .line 1971
    :array_1
    .array-data 4
        0x0
        0x7ffffff
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F

    .prologue
    .line 115
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 117
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1936
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 138
    if-gez p3, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    if-eqz p2, :cond_1

    .line 146
    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    .line 147
    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 150
    :cond_1
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 151
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 152
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 153
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 154
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 155
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 156
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 157
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 158
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 159
    return-void
.end method

.method static synthetic access$000(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/Layout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [C
    .param p5, "x5"    # I
    .param p6, "x6"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 1396
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    .line 1397
    .local v16, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 1398
    .local v15, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1400
    .local v9, "dirs":Landroid/text/Layout$Directions;
    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 1401
    add-int/lit8 v15, v15, -0x1

    .line 1403
    :cond_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_3

    .line 1404
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    .line 1405
    .local v13, "here":I
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    .line 1407
    .local v18, "there":I
    move/from16 v0, v18

    if-le v0, v15, :cond_1

    .line 1408
    move/from16 v18, v15

    .line 1410
    :cond_1
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    if-lt v0, v13, :cond_2

    .line 1411
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1412
    .local v17, "st":I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1414
    .local v10, "en":I
    move/from16 v0, v17

    if-eq v0, v10, :cond_2

    .line 1415
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v11

    .line 1416
    .local v11, "h1":F
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v12

    .line 1418
    .local v12, "h2":F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1419
    .local v4, "left":F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1421
    .local v6, "right":F
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1403
    .end local v4    # "left":F
    .end local v6    # "right":F
    .end local v10    # "en":I
    .end local v11    # "h1":F
    .end local v12    # "h2":F
    .end local v17    # "st":I
    :cond_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    .line 1425
    .end local v13    # "here":I
    .end local v18    # "there":I
    :cond_3
    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 1778
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 1780
    .local v2, "ellipsisCount":I
    if-nez v2, :cond_1

    .line 1806
    :cond_0
    return-void

    .line 1784
    :cond_1
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 1785
    .local v3, "ellipsisStart":I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1787
    .local v5, "linestart":I
    move v4, v3

    .local v4, "i":I
    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_0

    .line 1790
    if-ne v4, v3, :cond_3

    .line 1791
    invoke-direct {p0, p6}, Landroid/text/Layout;->getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C

    move-result v1

    .line 1796
    .local v1, "c":C
    :goto_1
    add-int v0, v4, v5

    .line 1798
    .local v0, "a":I
    if-lt v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    .line 1799
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v6, :cond_4

    .line 1800
    invoke-static {p1, p4, p5, v1, v0}, Landroid/text/LGEmojiUtil;->adjustEllipsisOffset(I[CICI)V

    .line 1787
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1793
    .end local v0    # "a":I
    .end local v1    # "c":C
    :cond_3
    const v1, 0xfeff

    .restart local v1    # "c":C
    goto :goto_1

    .line 1802
    .restart local v0    # "a":I
    :cond_4
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    goto :goto_2
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 5
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 81
    .local v1, "need":F
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_2

    .line 82
    const/16 v4, 0xa

    invoke-static {p0, v4, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 84
    .local v2, "next":I
    if-gez v2, :cond_0

    .line 85
    move v2, p2

    .line 88
    :cond_0
    invoke-static {p3, p0, v0, v2}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F

    move-result v3

    .line 90
    .local v3, "w":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    .line 91
    move v1, v3

    .line 93
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 81
    move v0, v2

    goto :goto_0

    .line 96
    .end local v2    # "next":I
    .end local v3    # "w":F
    :cond_2
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C
    .locals 2
    .param p1, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    const/4 v1, 0x0

    .line 1771
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/text/Layout;->ELLIPSIS_TWO_DOTS:[C

    aget-char v0, v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/text/Layout;->ELLIPSIS_NORMAL:[C

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method private getHorizontal(IZIZ)F
    .locals 14
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "line"    # I
    .param p4, "clamped"    # Z

    .prologue
    .line 835
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 836
    .local v4, "start":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 837
    .local v5, "end":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 838
    .local v6, "dir":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    .line 839
    .local v8, "hasTabOrEmoji":Z
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 841
    .local v7, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x0

    .line 842
    .local v9, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v8, :cond_0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 845
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    .line 846
    .local v12, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v2, v12

    if-lez v2, :cond_0

    .line 847
    new-instance v9, Landroid/text/Layout$TabStops;

    .end local v9    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v2, 0x14

    invoke-direct {v9, v2, v12}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 851
    .end local v12    # "tabs":[Landroid/text/style/TabStopSpan;
    .restart local v9    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 852
    .local v1, "tl":Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 853
    sub-int v2, p1, v4

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 854
    .local v13, "wid":F
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 856
    if-eqz p4, :cond_1

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    cmpl-float v2, v13, v2

    if-lez v2, :cond_1

    .line 857
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v13, v2

    .line 859
    :cond_1
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v10

    .line 860
    .local v10, "left":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v11

    .line 862
    .local v11, "right":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    return v2
.end method

.method private getHorizontal(IZZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "clamped"    # Z

    .prologue
    .line 829
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 831
    .local v0, "line":I
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 10
    .param p1, "line"    # I
    .param p2, "tabStops"    # Landroid/text/Layout$TabStops;
    .param p3, "full"    # Z

    .prologue
    .line 991
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 992
    .local v3, "start":I
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 993
    .local v4, "end":I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 994
    .local v7, "hasTabsOrEmoji":Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 995
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 997
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 998
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 999
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v9

    .line 1000
    .local v9, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1001
    return v9

    .line 992
    .end local v0    # "tl":Landroid/text/TextLine;
    .end local v4    # "end":I
    .end local v5    # "dir":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabsOrEmoji":Z
    .end local v9    # "width":F
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_0
.end method

.method private getLineExtent(IZ)F
    .locals 11
    .param p1, "line"    # I
    .param p2, "full"    # Z

    .prologue
    .line 955
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 956
    .local v3, "start":I
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 958
    .local v4, "end":I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 959
    .local v7, "hasTabsOrEmoji":Z
    const/4 v8, 0x0

    .line 960
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 963
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    .line 964
    .local v9, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v1, v9

    if-lez v1, :cond_0

    .line 965
    new-instance v8, Landroid/text/Layout$TabStops;

    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v1, 0x14

    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 968
    .end local v9    # "tabs":[Landroid/text/style/TabStopSpan;
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 970
    .local v6, "directions":Landroid/text/Layout$Directions;
    if-nez v6, :cond_2

    .line 971
    const/4 v10, 0x0

    .line 979
    :goto_1
    return v10

    .line 956
    .end local v4    # "end":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabsOrEmoji":Z
    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_0

    .line 973
    .restart local v4    # "end":I
    .restart local v6    # "directions":Landroid/text/Layout$Directions;
    .restart local v7    # "hasTabsOrEmoji":Z
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 975
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 976
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 977
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 978
    .local v10, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto :goto_1
.end method

.method private getLineStartPos(III)I
    .locals 12
    .param p1, "line"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    const/4 v11, 0x1

    .line 477
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 478
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 480
    .local v1, "dir":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_2

    .line 481
    if-ne v1, v11, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 487
    :cond_0
    :goto_0
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_5

    .line 488
    if-ne v1, v11, :cond_4

    .line 489
    move v8, p2

    .line 519
    .local v8, "x":I
    :goto_1
    return v8

    .line 481
    .end local v8    # "x":I
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 482
    :cond_2
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_0

    .line 483
    if-ne v1, v11, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_2
    goto :goto_0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 491
    :cond_4
    move v8, p3

    .restart local v8    # "x":I
    goto :goto_1

    .line 494
    .end local v8    # "x":I
    :cond_5
    const/4 v7, 0x0

    .line 495
    .local v7, "tabStops":Landroid/text/Layout$TabStops;
    iget-boolean v9, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v9, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 496
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 497
    .local v4, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 498
    .local v5, "start":I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 500
    .local v3, "spanEnd":I
    const-class v9, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    .line 502
    .local v6, "tabSpans":[Landroid/text/style/TabStopSpan;
    array-length v9, v6

    if-lez v9, :cond_6

    .line 503
    new-instance v7, Landroid/text/Layout$TabStops;

    .end local v7    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v9, 0x14

    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 506
    .end local v3    # "spanEnd":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "tabSpans":[Landroid/text/style/TabStopSpan;
    .restart local v7    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v9

    float-to-int v2, v9

    .line 507
    .local v2, "max":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_8

    .line 508
    if-ne v1, v11, :cond_7

    .line 509
    sub-int v8, p3, v2

    .restart local v8    # "x":I
    goto :goto_1

    .line 512
    .end local v8    # "x":I
    :cond_7
    sub-int v8, p2, v2

    .restart local v8    # "x":I
    goto :goto_1

    .line 515
    .end local v8    # "x":I
    :cond_8
    and-int/lit8 v2, v2, -0x2

    .line 516
    add-int v9, p2, p3

    sub-int/2addr v9, v2

    shr-int/lit8 v8, v9, 0x1

    .restart local v8    # "x":I
    goto :goto_1
.end method

.method private getLineVisibleEnd(III)I
    .locals 3
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1154
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1156
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    move v2, p3

    .line 1173
    :goto_0
    return v2

    .line 1160
    .local v0, "ch":C
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .end local v0    # "ch":C
    :cond_1
    if-le p3, p2, :cond_3

    .line 1161
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1163
    .restart local v0    # "ch":C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 1164
    add-int/lit8 v2, p3, -0x1

    goto :goto_0

    .line 1167
    :cond_2
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    .end local v0    # "ch":C
    :cond_3
    move v2, p3

    .line 1173
    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 9
    .param p1, "offset"    # I

    .prologue
    .line 1263
    if-nez p1, :cond_0

    .line 1264
    const/4 v7, 0x0

    .line 1293
    :goto_0
    return v7

    .line 1266
    :cond_0
    iget-object v6, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1267
    .local v6, "text":Ljava/lang/CharSequence;
    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1269
    .local v0, "c":C
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v7, :cond_3

    .line 1270
    invoke-static {p1, v6, v0}, Landroid/text/LGEmojiUtil;->adjustOffsetAtStartOf(ILjava/lang/CharSequence;C)I

    move-result p1

    .line 1280
    :cond_1
    :goto_1
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_4

    move-object v7, v6

    .line 1281
    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 1284
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v4

    if-ge v3, v7, :cond_4

    move-object v7, v6

    .line 1285
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, "start":I
    move-object v7, v6

    .line 1286
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1288
    .local v2, "end":I
    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 1289
    move p1, v5

    .line 1284
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1272
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "start":I
    :cond_3
    const v7, 0xdc00

    if-lt v0, v7, :cond_1

    const v7, 0xdfff

    if-gt v0, v7, :cond_1

    .line 1273
    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1275
    .local v1, "c1":C
    const v7, 0xd800

    if-lt v1, v7, :cond_1

    const v7, 0xdbff

    if-gt v1, v7, :cond_1

    .line 1276
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .end local v1    # "c1":C
    :cond_4
    move v7, p1

    .line 1293
    goto :goto_0
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 15
    .param p1, "caret"    # I
    .param p2, "toLeft"    # Z

    .prologue
    .line 1209
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    .line 1210
    .local v12, "line":I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1211
    .local v4, "lineStart":I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1212
    .local v5, "lineEnd":I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1214
    .local v6, "lineDir":I
    const/4 v13, 0x0

    .line 1215
    .local v13, "lineChanged":Z
    const/4 v2, -0x1

    if-ne v6, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    const/4 v10, 0x1

    .line 1217
    .local v10, "advance":Z
    :goto_1
    if-eqz v10, :cond_5

    .line 1218
    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 1219
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_4

    .line 1220
    const/4 v13, 0x1

    .line 1221
    add-int/lit8 v12, v12, 0x1

    .line 1237
    :cond_0
    :goto_2
    if-eqz v13, :cond_1

    .line 1238
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1239
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1240
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v14

    .line 1241
    .local v14, "newDir":I
    if-eq v14, v6, :cond_1

    .line 1245
    if-nez p2, :cond_7

    const/16 p2, 0x1

    .line 1246
    :goto_3
    move v6, v14

    .line 1250
    .end local v14    # "newDir":I
    :cond_1
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1252
    .local v7, "directions":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 1254
    .local v1, "tl":Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1255
    sub-int v2, p1, v4

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v2

    add-int p1, v4, v2

    .line 1256
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-result-object v1

    move/from16 v11, p1

    .line 1257
    .end local v1    # "tl":Landroid/text/TextLine;
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local p1    # "caret":I
    .local v11, "caret":I
    :goto_4
    return v11

    .line 1215
    .end local v10    # "advance":Z
    .end local v11    # "caret":I
    .restart local p1    # "caret":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10    # "advance":Z
    :cond_4
    move/from16 v11, p1

    .line 1223
    .end local p1    # "caret":I
    .restart local v11    # "caret":I
    goto :goto_4

    .line 1227
    .end local v11    # "caret":I
    .restart local p1    # "caret":I
    :cond_5
    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 1228
    if-lez v12, :cond_6

    .line 1229
    const/4 v13, 0x1

    .line 1230
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_6
    move/from16 v11, p1

    .line 1232
    .end local p1    # "caret":I
    .restart local v11    # "caret":I
    goto :goto_4

    .line 1245
    .end local v11    # "caret":I
    .restart local v14    # "newDir":I
    .restart local p1    # "caret":I
    :cond_7
    const/16 p2, 0x0

    goto :goto_3
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 16
    .param p1, "line"    # I

    .prologue
    .line 1538
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v14, :cond_1

    .line 1539
    const/4 v6, 0x0

    .line 1573
    :cond_0
    :goto_0
    return v6

    .line 1541
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    .line 1543
    .local v11, "spanned":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1544
    .local v5, "lineStart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1545
    .local v4, "lineEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 1547
    .local v9, "spanEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v11, v5, v9, v14}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    .line 1549
    .local v12, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v14, v12

    if-nez v14, :cond_2

    .line 1550
    const/4 v6, 0x0

    goto :goto_0

    .line 1553
    :cond_2
    const/4 v6, 0x0

    .line 1555
    .local v6, "margin":I
    if-eqz v5, :cond_3

    add-int/lit8 v14, v5, -0x1

    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_5

    :cond_3
    const/4 v3, 0x1

    .line 1558
    .local v3, "isFirstParaLine":Z
    :goto_1
    move v13, v3

    .line 1559
    .local v13, "useFirstLineMargin":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v14, v12

    if-ge v2, v14, :cond_7

    .line 1560
    aget-object v14, v12, v2

    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_4

    .line 1561
    aget-object v14, v12, v2

    invoke-interface {v11, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1562
    .local v7, "spStart":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 1563
    .local v10, "spanLine":I
    aget-object v14, v12, v2

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    .line 1565
    .local v1, "count":I
    add-int v14, v10, v1

    move/from16 v0, p1

    if-ge v0, v14, :cond_6

    const/4 v14, 0x1

    :goto_3
    or-int/2addr v13, v14

    .line 1559
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1555
    .end local v2    # "i":I
    .end local v3    # "isFirstParaLine":Z
    .end local v13    # "useFirstLineMargin":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 1565
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "isFirstParaLine":Z
    .restart local v7    # "spStart":I
    .restart local v10    # "spanLine":I
    .restart local v13    # "useFirstLineMargin":Z
    :cond_6
    const/4 v14, 0x0

    goto :goto_3

    .line 1568
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_7
    const/4 v2, 0x0

    :goto_4
    array-length v14, v12

    if-ge v2, v14, :cond_0

    .line 1569
    aget-object v8, v12, v2

    .line 1570
    .local v8, "span":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v6, v14

    .line 1568
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1763
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 1764
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 1767
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F
    .locals 26
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1579
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v21

    .line 1580
    .local v21, "mt":Landroid/text/MeasuredText;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v25

    .line 1582
    .local v25, "tl":Landroid/text/TextLine;
    :try_start_0
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 1585
    move-object/from16 v0, v21

    iget-boolean v4, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v4, :cond_0

    .line 1586
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1587
    .local v10, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x1

    .line 1593
    .local v9, "dir":I
    :goto_0
    move-object/from16 v0, v21

    iget-object v14, v0, Landroid/text/MeasuredText;->mChars:[C

    .line 1594
    .local v14, "chars":[C
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/MeasuredText;->mLen:I

    move/from16 v17, v0

    .line 1595
    .local v17, "len":I
    const/4 v11, 0x0

    .line 1596
    .local v11, "hasTabs":Z
    const/4 v12, 0x0

    .line 1598
    .local v12, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v20, 0x0

    .line 1599
    .local v20, "margin":I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_1

    .line 1600
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v23, v0

    .line 1601
    .local v23, "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v23

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Landroid/text/style/LeadingMarginSpan;

    .line 1603
    .local v24, "spans":[Landroid/text/style/LeadingMarginSpan;
    move-object/from16 v13, v24

    .local v13, "arr$":[Landroid/text/style/LeadingMarginSpan;
    array-length v0, v13

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget-object v19, v13, v16

    .line 1604
    .local v19, "lms":Landroid/text/style/LeadingMarginSpan;
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v20, v20, v4

    .line 1603
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1589
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v13    # "arr$":[Landroid/text/style/LeadingMarginSpan;
    .end local v14    # "chars":[C
    .end local v16    # "i$":I
    .end local v17    # "len":I
    .end local v18    # "len$":I
    .end local v19    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v20    # "margin":I
    .end local v23    # "spanned":Landroid/text/Spanned;
    .end local v24    # "spans":[Landroid/text/style/LeadingMarginSpan;
    :cond_0
    move-object/from16 v0, v21

    iget v4, v0, Landroid/text/MeasuredText;->mDir:I

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v6, 0x0

    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v8, 0x0

    move-object/from16 v0, v21

    iget v9, v0, Landroid/text/MeasuredText;->mLen:I

    invoke-static/range {v4 .. v9}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v10

    .line 1591
    .restart local v10    # "directions":Landroid/text/Layout$Directions;
    move-object/from16 v0, v21

    iget v9, v0, Landroid/text/MeasuredText;->mDir:I

    .restart local v9    # "dir":I
    goto :goto_0

    .line 1607
    .restart local v11    # "hasTabs":Z
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v14    # "chars":[C
    .restart local v17    # "len":I
    .restart local v20    # "margin":I
    :cond_1
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_2

    .line 1608
    aget-char v4, v14, v15

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 1609
    const/4 v11, 0x1

    .line 1610
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_2

    .line 1611
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v23, v0

    .line 1612
    .restart local v23    # "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v23

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v22

    .line 1614
    .local v22, "spanEnd":I
    const-class v4, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v23

    move/from16 v1, p2

    move/from16 v2, v22

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Landroid/text/style/TabStopSpan;

    .line 1616
    .local v24, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v24

    array-length v4, v0

    if-lez v4, :cond_2

    .line 1617
    new-instance v12, Landroid/text/Layout$TabStops;

    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v4, 0x14

    move-object/from16 v0, v24

    invoke-direct {v12, v4, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .end local v22    # "spanEnd":I
    .end local v23    # "spanned":Landroid/text/Spanned;
    .end local v24    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_2
    move-object/from16 v4, v25

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1623
    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1624
    move/from16 v0, v20

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-float/2addr v4, v5

    .line 1626
    invoke-static/range {v25 .. v25}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1627
    invoke-static/range {v21 .. v21}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return v4

    .line 1607
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1626
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v14    # "chars":[C
    .end local v15    # "i":I
    .end local v17    # "len":I
    .end local v20    # "margin":I
    :catchall_0
    move-exception v4

    invoke-static/range {v25 .. v25}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1627
    invoke-static/range {v21 .. v21}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v4
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "h"    # F
    .param p4, "tabs"    # [Ljava/lang/Object;

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    .line 1706
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 1707
    .local v2, "nh":F
    const/4 v0, 0x0

    .line 1709
    .local v0, "alltabs":Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_4

    .line 1710
    if-nez p4, :cond_0

    .line 1711
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 1712
    const/4 v0, 0x1

    .line 1715
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_3

    .line 1716
    if-nez v0, :cond_2

    .line 1717
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_2

    .line 1715
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1721
    :cond_2
    aget-object v4, p4, v1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 1723
    .local v3, "where":I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_1

    .line 1724
    int-to-float v2, v3

    goto :goto_1

    .line 1727
    .end local v3    # "where":I
    :cond_3
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    move v4, v2

    .line 1731
    .end local v1    # "i":I
    :goto_2
    return v4

    :cond_4
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    goto :goto_2
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 13
    .param p1, "offset"    # I

    .prologue
    const v12, 0x3ffffff

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 742
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 743
    .local v4, "line":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 744
    .local v6, "lineStart":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 745
    .local v5, "lineEnd":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    iget-object v7, v11, Landroid/text/Layout$Directions;->mDirections:[I

    .line 747
    .local v7, "runs":[I
    const/4 v1, -0x1

    .line 748
    .local v1, "levelAt":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v11, v7

    if-ge v0, v11, :cond_2

    .line 749
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 750
    .local v8, "start":I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 751
    .local v3, "limit":I
    if-le v3, v5, :cond_0

    .line 752
    move v3, v5

    .line 754
    :cond_0
    if-lt p1, v8, :cond_5

    if-ge p1, v3, :cond_5

    .line 755
    if-le p1, v8, :cond_1

    .line 787
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :goto_1
    return v9

    .line 759
    .restart local v3    # "limit":I
    .restart local v8    # "start":I
    :cond_1
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v1, v11, 0x3f

    .line 763
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_2
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    .line 765
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_6

    move v1, v9

    .line 769
    :cond_3
    :goto_2
    const/4 v2, -0x1

    .line 770
    .local v2, "levelBefore":I
    if-ne p1, v6, :cond_8

    .line 771
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_7

    move v2, v9

    .line 787
    :cond_4
    :goto_3
    if-ge v2, v1, :cond_b

    :goto_4
    move v9, v10

    goto :goto_1

    .line 748
    .end local v2    # "levelBefore":I
    .restart local v3    # "limit":I
    .restart local v8    # "start":I
    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_6
    move v1, v10

    .line 765
    goto :goto_2

    .restart local v2    # "levelBefore":I
    :cond_7
    move v2, v10

    .line 771
    goto :goto_3

    .line 773
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 774
    const/4 v0, 0x0

    :goto_5
    array-length v11, v7

    if-ge v0, v11, :cond_4

    .line 775
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 776
    .restart local v8    # "start":I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 777
    .restart local v3    # "limit":I
    if-le v3, v5, :cond_9

    .line 778
    move v3, v5

    .line 780
    :cond_9
    if-lt p1, v8, :cond_a

    if-ge p1, v3, :cond_a

    .line 781
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v2, v11, 0x3f

    .line 782
    goto :goto_3

    .line 774
    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_b
    move v10, v9

    .line 787
    goto :goto_4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 185
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v8

    .line 200
    .local v8, "lineRange":J
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    .line 201
    .local v5, "firstLine":I
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 202
    .local v6, "lastLine":I
    if-gez v6, :cond_0

    .line 207
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 204
    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 206
    invoke-virtual {p0, p1, v5, v6}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    goto :goto_0
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I
    .param p5, "firstLine"    # I
    .param p6, "lastLine"    # I

    .prologue
    .line 371
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v3, :cond_7

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v3, :cond_0

    .line 373
    new-instance v3, Landroid/text/SpanSet;

    const-class v5, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v3, v5}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 376
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    .line 377
    .local v10, "buffer":Landroid/text/Spanned;
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v21

    .line 378
    .local v21, "textLength":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v10, v5, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_6

    .line 381
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    .line 382
    .local v16, "previousLineBottom":I
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v17

    .line 383
    .local v17, "previousLineEnd":I
    sget-object v19, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 384
    .local v19, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v20, 0x0

    .line 385
    .local v20, "spansLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 386
    .local v4, "paint":Landroid/text/TextPaint;
    const/16 v18, 0x0

    .line 387
    .local v18, "spanEnd":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    .line 388
    .local v6, "width":I
    move/from16 v13, p5

    .local v13, "i":I
    :goto_0
    move/from16 v0, p6

    if-gt v13, v0, :cond_6

    .line 389
    move/from16 v11, v17

    .line 390
    .local v11, "start":I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 391
    .local v12, "end":I
    move/from16 v17, v12

    .line 393
    move/from16 v7, v16

    .line 394
    .local v7, "ltop":I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 395
    .local v9, "lbottom":I
    move/from16 v16, v9

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    .line 398
    .local v8, "lbaseline":I
    move/from16 v0, v18

    if-lt v11, v0, :cond_4

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    move/from16 v0, v21

    invoke-virtual {v3, v11, v0}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v18

    .line 403
    const/16 v20, 0x0

    .line 405
    if-ne v11, v12, :cond_1

    if-nez v11, :cond_4

    .line 408
    :cond_1
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v14, v3, :cond_4

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v14

    if-ge v3, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v14

    if-gt v3, v11, :cond_3

    .line 408
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 413
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/LineBackgroundSpan;

    aget-object v3, v3, v14

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v19, [Landroid/text/style/ParagraphStyle;

    .line 415
    .restart local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 420
    .end local v14    # "j":I
    :cond_4
    const/4 v15, 0x0

    .local v15, "n":I
    :goto_3
    move/from16 v0, v20

    if-ge v15, v0, :cond_5

    .line 421
    aget-object v2, v19, v15

    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    .line 422
    .local v2, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 420
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 388
    .end local v2    # "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 428
    .end local v4    # "paint":Landroid/text/TextPaint;
    .end local v6    # "width":I
    .end local v7    # "ltop":I
    .end local v8    # "lbaseline":I
    .end local v9    # "lbottom":I
    .end local v11    # "start":I
    .end local v12    # "end":I
    .end local v13    # "i":I
    .end local v15    # "n":I
    .end local v16    # "previousLineBottom":I
    .end local v17    # "previousLineEnd":I
    .end local v18    # "spanEnd":I
    .end local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v20    # "spansLength":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v3}, Landroid/text/SpanSet;->recycle()V

    .line 433
    .end local v10    # "buffer":Landroid/text/Spanned;
    .end local v21    # "textLength":I
    :cond_7
    if-eqz p2, :cond_9

    .line 434
    if-eqz p4, :cond_8

    const/4 v3, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 435
    :cond_8
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 436
    if-eqz p4, :cond_9

    const/4 v3, 0x0

    move/from16 v0, p4

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 438
    :cond_9
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 47
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .prologue
    .line 213
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v35

    .line 214
    .local v35, "previousLineBottom":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v36

    .line 215
    .local v36, "previousLineEnd":I
    sget-object v39, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 216
    .local v39, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v38, 0x0

    .line 217
    .local v38, "spanEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 218
    .local v5, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 220
    .local v11, "buf":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v34, v0

    .line 221
    .local v34, "paraAlign":Landroid/text/Layout$Alignment;
    const/16 v27, 0x0

    .line 222
    .local v27, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v42, 0x0

    .line 224
    .local v42, "tabStopsIsInitialized":Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v44

    .line 228
    .local v44, "tl":Landroid/text/TextLine;
    move/from16 v30, p2

    .local v30, "i":I
    move-object/from16 v41, v27

    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .local v41, "tabStops":Landroid/text/Layout$TabStops;
    :goto_0
    move/from16 v0, v30

    move/from16 v1, p3

    if-gt v0, v1, :cond_15

    .line 229
    move/from16 v12, v36

    .line 230
    .local v12, "start":I
    add-int/lit8 v4, v30, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v36

    .line 231
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v36

    invoke-direct {v0, v1, v12, v2}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v13

    .line 233
    .local v13, "end":I
    move/from16 v8, v35

    .line 234
    .local v8, "ltop":I
    add-int/lit8 v4, v30, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 235
    .local v10, "lbottom":I
    move/from16 v35, v10

    .line 236
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v4

    sub-int v9, v10, v4

    .line 238
    .local v9, "lbaseline":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 239
    .local v7, "dir":I
    const/16 v18, 0x0

    .line 240
    .local v18, "left":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    .line 242
    .local v6, "right":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_a

    move-object/from16 v37, v11

    .line 243
    check-cast v37, Landroid/text/Spanned;

    .line 244
    .local v37, "sp":Landroid/text/Spanned;
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v43

    .line 245
    .local v43, "textLength":I
    if-eqz v12, :cond_0

    add-int/lit8 v4, v12, -0x1

    invoke-interface {v11, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v15, 0xa

    if-ne v4, v15, :cond_6

    :cond_0
    const/4 v14, 0x1

    .line 257
    .local v14, "isFirstParaLine":Z
    :goto_1
    move/from16 v0, v38

    if-lt v12, v0, :cond_3

    move/from16 v0, v30

    move/from16 v1, p2

    if-eq v0, v1, :cond_1

    if-eqz v14, :cond_3

    .line 258
    :cond_1
    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v37

    move/from16 v1, v43

    invoke-interface {v0, v12, v1, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v38

    .line 260
    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v0, v12, v1, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v39, [Landroid/text/style/ParagraphStyle;

    .line 262
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v34, v0

    .line 263
    move-object/from16 v0, v39

    array-length v4, v0

    add-int/lit8 v33, v4, -0x1

    .local v33, "n":I
    :goto_2
    if-ltz v33, :cond_2

    .line 264
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v4, :cond_7

    .line 265
    aget-object v4, v39, v33

    check-cast v4, Landroid/text/style/AlignmentSpan;

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v34

    .line 270
    :cond_2
    const/16 v42, 0x0

    .line 275
    .end local v33    # "n":I
    :cond_3
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v31, v0

    .line 276
    .local v31, "length":I
    move/from16 v45, v14

    .line 277
    .local v45, "useFirstLineMargin":Z
    const/16 v33, 0x0

    .restart local v33    # "n":I
    :goto_3
    move/from16 v0, v33

    move/from16 v1, v31

    if-ge v0, v1, :cond_4

    .line 278
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v4, :cond_8

    .line 279
    aget-object v4, v39, v33

    check-cast v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v4}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v29

    .line 280
    .local v29, "count":I
    aget-object v4, v39, v33

    move-object/from16 v0, v37

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v40

    .line 283
    .local v40, "startLine":I
    add-int v4, v40, v29

    move/from16 v0, v30

    if-ge v0, v4, :cond_8

    .line 284
    const/16 v45, 0x1

    .line 289
    .end local v29    # "count":I
    .end local v40    # "startLine":I
    :cond_4
    const/16 v33, 0x0

    :goto_4
    move/from16 v0, v33

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    .line 290
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan;

    if-eqz v4, :cond_5

    .line 291
    aget-object v3, v39, v33

    check-cast v3, Landroid/text/style/LeadingMarginSpan;

    .line 292
    .local v3, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v4, -0x1

    if-ne v7, v4, :cond_9

    move-object/from16 v4, p1

    move-object/from16 v15, p0

    .line 293
    invoke-interface/range {v3 .. v15}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 296
    move/from16 v0, v45

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    sub-int/2addr v6, v4

    .line 289
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_5
    :goto_5
    add-int/lit8 v33, v33, 0x1

    goto :goto_4

    .line 245
    .end local v14    # "isFirstParaLine":Z
    .end local v31    # "length":I
    .end local v33    # "n":I
    .end local v45    # "useFirstLineMargin":Z
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 263
    .restart local v14    # "isFirstParaLine":Z
    .restart local v33    # "n":I
    :cond_7
    add-int/lit8 v33, v33, -0x1

    goto :goto_2

    .line 277
    .restart local v31    # "length":I
    .restart local v45    # "useFirstLineMargin":Z
    :cond_8
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .restart local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object v15, v3

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, p0

    .line 298
    invoke-interface/range {v15 .. v27}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 301
    move/from16 v0, v45

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v18, v18, v4

    goto :goto_5

    .line 307
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v14    # "isFirstParaLine":Z
    .end local v31    # "length":I
    .end local v33    # "n":I
    .end local v37    # "sp":Landroid/text/Spanned;
    .end local v43    # "textLength":I
    .end local v45    # "useFirstLineMargin":Z
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v26

    .line 309
    .local v26, "hasTabOrEmoji":Z
    if-eqz v26, :cond_16

    if-nez v42, :cond_16

    .line 310
    if-nez v41, :cond_c

    .line 311
    new-instance v27, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-direct {v0, v4, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 315
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    :goto_6
    const/16 v42, 0x1

    .line 319
    :goto_7
    move-object/from16 v28, v34

    .line 320
    .local v28, "align":Landroid/text/Layout$Alignment;
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_e

    .line 321
    const/4 v4, 0x1

    if-ne v7, v4, :cond_d

    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 329
    :cond_b
    :goto_8
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_11

    .line 330
    const/4 v4, 0x1

    if-ne v7, v4, :cond_10

    .line 331
    move/from16 v46, v18

    .line 349
    .local v46, "x":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v25

    .line 350
    .local v25, "directions":Landroid/text/Layout$Directions;
    sget-object v4, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v4, :cond_14

    if-nez v26, :cond_14

    .line 352
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v24, v0

    move-object/from16 v19, p1

    move-object/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v25, v5

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 228
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    :goto_a
    add-int/lit8 v30, v30, 0x1

    move-object/from16 v41, v27

    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    goto/16 :goto_0

    .line 313
    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v46    # "x":I
    :cond_c
    const/16 v4, 0x14

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v27, v41

    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_6

    .line 321
    .restart local v28    # "align":Landroid/text/Layout$Alignment;
    :cond_d
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    .line 323
    :cond_e
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_b

    .line 324
    const/4 v4, 0x1

    if-ne v7, v4, :cond_f

    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_b
    goto :goto_8

    :cond_f
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_b

    .line 333
    :cond_10
    move/from16 v46, v6

    .restart local v46    # "x":I
    goto :goto_9

    .line 336
    .end local v46    # "x":I
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v0, v4

    move/from16 v32, v0

    .line 337
    .local v32, "max":I
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_13

    .line 338
    const/4 v4, 0x1

    if-ne v7, v4, :cond_12

    .line 339
    sub-int v46, v6, v32

    .restart local v46    # "x":I
    goto :goto_9

    .line 341
    .end local v46    # "x":I
    :cond_12
    sub-int v46, v18, v32

    .restart local v46    # "x":I
    goto :goto_9

    .line 344
    .end local v46    # "x":I
    :cond_13
    and-int/lit8 v32, v32, -0x2

    .line 345
    add-int v4, v6, v18

    sub-int v4, v4, v32

    shr-int/lit8 v46, v4, 0x1

    .restart local v46    # "x":I
    goto :goto_9

    .end local v32    # "max":I
    .restart local v25    # "directions":Landroid/text/Layout$Directions;
    :cond_14
    move-object/from16 v19, v44

    move-object/from16 v20, v5

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v7

    .line 354
    invoke-virtual/range {v19 .. v27}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 355
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v44

    move-object/from16 v20, p1

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto :goto_a

    .line 359
    .end local v6    # "right":I
    .end local v7    # "dir":I
    .end local v8    # "ltop":I
    .end local v9    # "lbaseline":I
    .end local v10    # "lbottom":I
    .end local v12    # "start":I
    .end local v13    # "end":I
    .end local v18    # "left":I
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    .end local v26    # "hasTabOrEmoji":Z
    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v46    # "x":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_15
    invoke-static/range {v44 .. v44}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 360
    return-void

    .restart local v6    # "right":I
    .restart local v7    # "dir":I
    .restart local v8    # "ltop":I
    .restart local v9    # "lbaseline":I
    .restart local v10    # "lbottom":I
    .restart local v12    # "start":I
    .restart local v13    # "end":I
    .restart local v18    # "left":I
    .restart local v26    # "hasTabOrEmoji":Z
    :cond_16
    move-object/from16 v27, v41

    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    goto/16 :goto_7
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "point"    # I
    .param p2, "dest"    # Landroid/graphics/Path;
    .param p3, "editingBuffer"    # Ljava/lang/CharSequence;

    .prologue
    .line 1321
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1323
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 1324
    .local v7, "line":I
    invoke-virtual {p0, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    .line 1325
    .local v8, "top":I
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1327
    .local v0, "bottom":I
    invoke-virtual {p0, v7}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v2

    .line 1328
    .local v2, "clamped":Z
    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v5, v9, v10

    .line 1329
    .local v5, "h1":F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v6, v9, v10

    .line 1331
    .local v6, "h2":F
    :goto_0
    const/4 v9, 0x1

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    const/16 v10, 0x800

    invoke-static {p3, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v10

    or-int v1, v9, v10

    .line 1333
    .local v1, "caps":I
    const/4 v9, 0x2

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1334
    .local v4, "fn":I
    const/4 v3, 0x0

    .line 1336
    .local v3, "dist":I
    if-nez v1, :cond_0

    if-eqz v4, :cond_2

    .line 1337
    :cond_0
    sub-int v9, v0, v8

    shr-int/lit8 v3, v9, 0x2

    .line 1339
    if-eqz v4, :cond_1

    .line 1340
    add-int/2addr v8, v3

    .line 1341
    :cond_1
    if-eqz v1, :cond_2

    .line 1342
    sub-int/2addr v0, v3

    .line 1345
    :cond_2
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_3

    .line 1346
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1347
    :cond_3
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v6, v9

    if-gez v9, :cond_4

    .line 1348
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1350
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_8

    .line 1351
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1352
    int-to-float v9, v0

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1361
    :goto_1
    const/4 v9, 0x2

    if-ne v1, v9, :cond_9

    .line 1362
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1363
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1364
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1365
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1377
    :cond_5
    :goto_2
    const/4 v9, 0x2

    if-ne v4, v9, :cond_a

    .line 1378
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1379
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1380
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1381
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1392
    :cond_6
    :goto_3
    return-void

    .end local v1    # "caps":I
    .end local v3    # "dist":I
    .end local v4    # "fn":I
    .end local v6    # "h2":F
    :cond_7
    move v6, v5

    .line 1329
    goto :goto_0

    .line 1354
    .restart local v1    # "caps":I
    .restart local v3    # "dist":I
    .restart local v4    # "fn":I
    .restart local v6    # "h2":F
    :cond_8
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1355
    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1357
    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1358
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 1366
    :cond_9
    const/4 v9, 0x1

    if-ne v1, v9, :cond_5

    .line 1367
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1368
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1370
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1371
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1373
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1374
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 1382
    :cond_a
    const/4 v9, 0x1

    if-ne v4, v9, :cond_6

    .line 1383
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1384
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1386
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1387
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1389
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1390
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 570
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1197
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1188
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1180
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 616
    if-eqz p2, :cond_0

    .line 617
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 618
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 619
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 620
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 622
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1142
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 1034
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, "high":I
    const/4 v2, -0x1

    .line 1036
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1037
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1039
    .local v0, "guess":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1040
    move v1, v0

    goto :goto_0

    .line 1042
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1045
    .end local v0    # "guess":I
    :cond_1
    if-gez v2, :cond_2

    .line 1046
    const/4 v2, 0x0

    .line 1048
    .end local v2    # "low":I
    :cond_2
    return v2
.end method

.method public getLineForVertical(I)I
    .locals 5
    .param p1, "vertical"    # I

    .prologue
    .line 1011
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, "high":I
    const/4 v2, -0x1

    .line 1013
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1014
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1016
    .local v0, "guess":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1017
    move v1, v0

    goto :goto_0

    .line 1019
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1022
    .end local v0    # "guess":I
    :cond_1
    if-gez v2, :cond_2

    .line 1023
    const/4 v2, 0x0

    .line 1025
    .end local v2    # "low":I
    :cond_2
    return v2
.end method

.method public getLineLeft(I)F
    .locals 8
    .param p1, "line"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 870
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 871
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 873
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_1

    .line 892
    :cond_0
    :goto_0
    return v5

    .line 875
    :cond_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_2

    .line 876
    if-ne v1, v7, :cond_0

    .line 877
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 880
    :cond_2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_3

    .line 881
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 882
    :cond_3
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_4

    .line 883
    if-eq v1, v7, :cond_0

    .line 886
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 888
    :cond_4
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 889
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 890
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 892
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 932
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 933
    .local v0, "margin":F
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 934
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .end local v1    # "signedExtent":F
    :goto_0
    add-float v2, v0, v1

    return v2

    .restart local v1    # "signedExtent":F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 448
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v6

    .line 449
    :try_start_0
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 451
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    monitor-exit v6

    .line 462
    :goto_0
    return-wide v4

    .line 454
    :cond_0
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 455
    .local v2, "dtop":I
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 456
    .local v1, "dbottom":I
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 459
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 461
    .local v0, "bottom":I
    if-lt v3, v0, :cond_1

    invoke-static {v5, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    goto :goto_0

    .line 456
    .end local v0    # "bottom":I
    .end local v1    # "dbottom":I
    .end local v2    # "dtop":I
    .end local v3    # "top":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 462
    .restart local v0    # "bottom":I
    .restart local v1    # "dbottom":I
    .restart local v2    # "dtop":I
    .restart local v3    # "top":I
    :cond_1
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    goto :goto_0
.end method

.method public getLineRight(I)F
    .locals 7
    .param p1, "line"    # I

    .prologue
    const/4 v6, -0x1

    .line 901
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 902
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 904
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    .line 905
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    .line 923
    :goto_0
    return v5

    .line 906
    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    .line 907
    if-ne v1, v6, :cond_1

    .line 908
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 910
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    .line 911
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 912
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 913
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    .line 914
    if-ne v1, v6, :cond_4

    .line 915
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    .line 917
    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 919
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 920
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 921
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 923
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1150
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 942
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 943
    .local v0, "margin":F
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 944
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .end local v1    # "signedExtent":F
    :goto_0
    add-float v2, v0, v1

    return v2

    .restart local v1    # "signedExtent":F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 21
    .param p1, "line"    # I
    .param p2, "horiz"    # F

    .prologue
    .line 1056
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v19

    add-int/lit8 v14, v19, -0x1

    .line 1057
    .local v14, "max":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v15

    .line 1058
    .local v15, "min":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1060
    .local v7, "dirs":Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1061
    add-int/lit8 v14, v14, 0x1

    .line 1071
    :cond_0
    :goto_0
    move v4, v15

    .line 1072
    .local v4, "best":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v19

    sub-float v19, v19, p2

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1074
    .local v6, "bestdist":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    iget-object v0, v7, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_d

    .line 1075
    iget-object v0, v7, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v19, v0

    aget v19, v19, v12

    add-int v10, v15, v19

    .line 1076
    .local v10, "here":I
    iget-object v0, v7, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v12, 0x1

    aget v19, v19, v20

    const v20, 0x3ffffff

    and-int v19, v19, v20

    add-int v18, v10, v19

    .line 1077
    .local v18, "there":I
    iget-object v0, v7, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v12, 0x1

    aget v19, v19, v20

    const/high16 v20, 0x4000000

    and-int v19, v19, v20

    if-eqz v19, :cond_5

    const/16 v17, -0x1

    .line 1079
    .local v17, "swap":I
    :goto_2
    move/from16 v0, v18

    if-le v0, v14, :cond_1

    .line 1080
    move/from16 v18, v14

    .line 1081
    :cond_1
    add-int/lit8 v19, v18, -0x1

    add-int/lit8 v11, v19, 0x1

    .local v11, "high":I
    add-int/lit8 v19, v10, 0x1

    add-int/lit8 v13, v19, -0x1

    .line 1083
    .local v13, "low":I
    :goto_3
    sub-int v19, v11, v13

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 1084
    add-int v19, v11, v13

    div-int/lit8 v9, v19, 0x2

    .line 1085
    .local v9, "guess":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 1087
    .local v2, "adguess":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v19

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p2

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_6

    .line 1088
    move v11, v9

    goto :goto_3

    .line 1062
    .end local v2    # "adguess":I
    .end local v4    # "best":I
    .end local v6    # "bestdist":F
    .end local v9    # "guess":I
    .end local v10    # "here":I
    .end local v11    # "high":I
    .end local v12    # "i":I
    .end local v13    # "low":I
    .end local v17    # "swap":I
    .end local v18    # "there":I
    :cond_2
    sget-boolean v19, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v19, :cond_0

    .line 1063
    const/16 v19, 0x2

    move/from16 v0, v19

    if-le v14, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    add-int/lit8 v20, v14, -0x3

    invoke-static/range {v19 .. v20}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1064
    add-int/lit8 v14, v14, -0x3

    goto/16 :goto_0

    .line 1065
    :cond_3
    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    add-int/lit8 v20, v14, -0x1

    invoke-interface/range {v19 .. v20}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v19

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    add-int/lit8 v20, v14, -0x1

    invoke-static/range {v19 .. v20}, Lcom/lge/emoji/EmojiUtil;->isDiacriticalMark(Ljava/lang/CharSequence;I)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1067
    :cond_4
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .line 1077
    .restart local v4    # "best":I
    .restart local v6    # "bestdist":F
    .restart local v10    # "here":I
    .restart local v12    # "i":I
    .restart local v18    # "there":I
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 1090
    .restart local v2    # "adguess":I
    .restart local v9    # "guess":I
    .restart local v11    # "high":I
    .restart local v13    # "low":I
    .restart local v17    # "swap":I
    :cond_6
    move v13, v9

    goto/16 :goto_3

    .line 1093
    .end local v2    # "adguess":I
    .end local v9    # "guess":I
    :cond_7
    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    if-ge v13, v0, :cond_8

    .line 1094
    add-int/lit8 v13, v10, 0x1

    .line 1096
    :cond_8
    move/from16 v0, v18

    if-ge v13, v0, :cond_a

    .line 1097
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v13

    .line 1099
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v19

    sub-float v19, v19, p2

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1101
    .local v8, "dist":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1102
    .local v3, "aft":I
    move/from16 v0, v18

    if-ge v3, v0, :cond_c

    .line 1103
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v19

    sub-float v19, v19, p2

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1105
    .local v16, "other":F
    cmpg-float v19, v16, v8

    if-gez v19, :cond_9

    .line 1106
    move/from16 v8, v16

    .line 1107
    move v13, v3

    .line 1114
    .end local v16    # "other":F
    :cond_9
    cmpg-float v19, v8, v6

    if-gez v19, :cond_a

    .line 1115
    move v6, v8

    .line 1116
    move v4, v13

    .line 1120
    .end local v3    # "aft":I
    .end local v8    # "dist":F
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v19

    sub-float v19, v19, p2

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1122
    .restart local v8    # "dist":F
    cmpg-float v19, v8, v6

    if-gez v19, :cond_b

    .line 1123
    move v6, v8

    .line 1124
    move v4, v10

    .line 1074
    :cond_b
    add-int/lit8 v12, v12, 0x2

    goto/16 :goto_1

    .line 1109
    .restart local v3    # "aft":I
    :cond_c
    sget-boolean v19, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v19, :cond_9

    move/from16 v0, v18

    if-le v3, v0, :cond_9

    if-le v3, v14, :cond_9

    .line 1110
    move v4, v13

    move v5, v4

    .line 1135
    .end local v3    # "aft":I
    .end local v4    # "best":I
    .end local v10    # "here":I
    .end local v11    # "high":I
    .end local v13    # "low":I
    .end local v17    # "swap":I
    .end local v18    # "there":I
    .local v5, "best":I
    :goto_4
    return v5

    .line 1128
    .end local v5    # "best":I
    .end local v8    # "dist":F
    .restart local v4    # "best":I
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v19

    sub-float v19, v19, p2

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1130
    .restart local v8    # "dist":F
    cmpg-float v19, v8, v6

    if-gtz v19, :cond_e

    .line 1131
    move v6, v8

    .line 1132
    move v4, v14

    :cond_e
    move v5, v4

    .line 1135
    .end local v4    # "best":I
    .restart local v5    # "best":I
    goto :goto_4
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1201
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7
    .param p1, "line"    # I

    .prologue
    .line 1490
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1492
    .local v0, "align":Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_0

    .line 1493
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1494
    .local v1, "sp":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1498
    .local v3, "spans":[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1499
    .local v2, "spanLength":I
    if-lez v2, :cond_0

    .line 1500
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1504
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v2    # "spanLength":I
    .end local v3    # "spans":[Landroid/text/style/AlignmentSpan;
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1511
    const/4 v1, 0x0

    .line 1512
    .local v1, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1513
    .local v0, "dir":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_1

    .line 1516
    .end local v1    # "left":I
    :cond_0
    :goto_0
    return v1

    .restart local v1    # "left":I
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v1

    goto :goto_0
.end method

.method public final getParagraphRight(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1523
    iget v1, p0, Landroid/text/Layout;->mWidth:I

    .line 1524
    .local v1, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1525
    .local v0, "dir":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_1

    .line 1528
    .end local v1    # "right":I
    :cond_0
    :goto_0
    return v1

    .restart local v1    # "right":I
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 796
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getPrimaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 805
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 806
    .local v0, "trailing":Z
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 815
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 824
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 825
    .local v0, "trailing":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 1434
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1436
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 1483
    :goto_0
    return-void

    .line 1439
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 1440
    move/from16 v17, p2

    .line 1441
    .local v17, "temp":I
    move/from16 p2, p1

    .line 1442
    move/from16 p1, v17

    .line 1445
    .end local v17    # "temp":I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1446
    .local v3, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1448
    .local v15, "endline":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1449
    .local v6, "top":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1451
    .local v7, "bottom":I
    if-ne v3, v15, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1452
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_0

    .line 1454
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 1456
    .local v18, "width":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1459
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 1460
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1466
    :goto_1
    add-int/lit8 v16, v3, 0x1

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    .line 1467
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1468
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1469
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1466
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1463
    .end local v16    # "i":I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 1472
    .restart local v16    # "i":I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1473
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1475
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1478
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 1479
    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 1481
    :cond_5
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .param p1, "wid"    # I

    .prologue
    .line 559
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    .line 560
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 564
    return-void
.end method

.method public isLevelBoundary(I)Z
    .locals 11
    .param p1, "offset"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 689
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 690
    .local v2, "line":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 691
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v10, :cond_0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v8

    .line 695
    :cond_1
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 696
    .local v7, "runs":[I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 697
    .local v4, "lineStart":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 698
    .local v3, "lineEnd":I
    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_5

    .line 699
    :cond_2
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-ne v10, v9, :cond_3

    move v5, v8

    .line 700
    .local v5, "paraLevel":I
    :goto_1
    if-ne p1, v4, :cond_4

    move v6, v8

    .line 701
    .local v6, "runIndex":I
    :goto_2
    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    if-eq v10, v5, :cond_0

    move v8, v9

    goto :goto_0

    .end local v5    # "paraLevel":I
    .end local v6    # "runIndex":I
    :cond_3
    move v5, v9

    .line 699
    goto :goto_1

    .line 700
    .restart local v5    # "paraLevel":I
    :cond_4
    array-length v10, v7

    add-int/lit8 v6, v10, -0x2

    goto :goto_2

    .line 704
    .end local v5    # "paraLevel":I
    :cond_5
    sub-int/2addr p1, v4

    .line 705
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v10, v7

    if-ge v1, v10, :cond_0

    .line 706
    aget v10, v7, v1

    if-ne p1, v10, :cond_6

    move v8, v9

    .line 707
    goto :goto_0

    .line 705
    :cond_6
    add-int/lit8 v1, v1, 0x2

    goto :goto_3
.end method

.method public isRtlCharAt(I)Z
    .locals 12
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 719
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 720
    .local v4, "line":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 721
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    .line 738
    :cond_0
    :goto_0
    return v9

    .line 724
    :cond_1
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_2

    move v9, v8

    .line 725
    goto :goto_0

    .line 727
    :cond_2
    iget-object v6, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 728
    .local v6, "runs":[I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 729
    .local v5, "lineStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v10, v6

    if-ge v1, v10, :cond_0

    .line 730
    aget v10, v6, v1

    add-int v7, v5, v10

    .line 731
    .local v7, "start":I
    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    const v11, 0x3ffffff

    and-int/2addr v10, v11

    add-int v3, v7, v10

    .line 732
    .local v3, "limit":I
    if-lt p1, v7, :cond_4

    if-ge p1, v3, :cond_4

    .line 733
    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v2, v10, 0x3f

    .line 734
    .local v2, "level":I
    and-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_3

    :goto_2
    move v9, v8

    goto :goto_0

    :cond_3
    move v8, v9

    goto :goto_2

    .line 729
    .end local v2    # "level":I
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method protected final isSpanned()Z
    .locals 1

    .prologue
    .line 1735
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F

    .prologue
    .line 167
    if-gez p3, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 172
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 173
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 174
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 175
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 176
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 177
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 178
    return-void
.end method

.method public shouldClampCursor(I)Z
    .locals 4
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1303
    sget-object v2, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1309
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1307
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
