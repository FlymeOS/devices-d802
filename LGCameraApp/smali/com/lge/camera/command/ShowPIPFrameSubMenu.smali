.class public Lcom/lge/camera/command/ShowPIPFrameSubMenu;
.super Lcom/lge/camera/command/Command;
.source "ShowPIPFrameSubMenu.java"


# static fields
.field private static BOARDER_WIDTH:I


# instance fields
.field private isLayoutInited:Z

.field private mOnPIPFrameEffectClickListener:Landroid/view/View$OnClickListener;

.field private mPIPFrameMaskMenuString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPIPFrameMenuImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPIPFrameMenuOffset:I

.field private mPIPFrameSelectedMenu:I

.field private mPIPFrameSelectedMenuPrev:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xa

    sput v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->BOARDER_WIDTH:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 42
    iput v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuOffset:I

    .line 43
    iput v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I

    .line 44
    iput v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenuPrev:I

    .line 47
    iput-boolean v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->isLayoutInited:Z

    .line 241
    new-instance v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;-><init>(Lcom/lge/camera/command/ShowPIPFrameSubMenu;)V

    iput-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mOnPIPFrameEffectClickListener:Landroid/view/View$OnClickListener;

    .line 52
    invoke-direct {p0}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->addPIPFrameMenuImageToArray()V

    .line 53
    invoke-direct {p0}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->addPIPFrameMaskStringToArray()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/ShowPIPFrameSubMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/command/ShowPIPFrameSubMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/command/ShowPIPFrameSubMenu;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/command/ShowPIPFrameSubMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenuPrev:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/command/ShowPIPFrameSubMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/command/ShowPIPFrameSubMenu;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenuPrev:I

    return p1
.end method

.method private addPIPFrameMaskStringToArray()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMaskMenuString:Ljava/util/ArrayList;

    .line 89
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMaskMenuString:Ljava/util/ArrayList;

    const v1, 0x7f0a0345

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMaskMenuString:Ljava/util/ArrayList;

    const v1, 0x7f0a034b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMaskMenuString:Ljava/util/ArrayList;

    const v1, 0x7f0a0346

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMaskMenuString:Ljava/util/ArrayList;

    const v1, 0x7f0a0347

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMaskMenuString:Ljava/util/ArrayList;

    const v1, 0x7f0a0348

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMaskMenuString:Ljava/util/ArrayList;

    const v1, 0x7f0a0349

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMaskMenuString:Ljava/util/ArrayList;

    const v1, 0x7f0a034a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMaskMenuString:Ljava/util/ArrayList;

    const v1, 0x7f0a034c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMaskMenuString:Ljava/util/ArrayList;

    const v1, 0x7f0a034e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMaskMenuString:Ljava/util/ArrayList;

    const v1, 0x7f0a034f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method private addPIPFrameMenuImageToArray()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuImage:Ljava/util/ArrayList;

    .line 75
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuImage:Ljava/util/ArrayList;

    const v1, 0x7f02035b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuImage:Ljava/util/ArrayList;

    const v1, 0x7f020362

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuImage:Ljava/util/ArrayList;

    const v1, 0x7f020360

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuImage:Ljava/util/ArrayList;

    const v1, 0x7f02035c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuImage:Ljava/util/ArrayList;

    const v1, 0x7f02035a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuImage:Ljava/util/ArrayList;

    const v1, 0x7f020359

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuImage:Ljava/util/ArrayList;

    const v1, 0x7f020361

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuImage:Ljava/util/ArrayList;

    const v1, 0x7f020358

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuImage:Ljava/util/ArrayList;

    const v1, 0x7f02035e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuImage:Ljava/util/ArrayList;

    const v1, 0x7f02035f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method private makePIPFrameMenu()V
    .locals 26

    .prologue
    .line 102
    const/4 v6, 0x0

    .line 103
    .local v6, "iv":Landroid/widget/ImageView;
    const/16 v18, 0x0

    .line 104
    .local v18, "tv":Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 105
    .local v13, "rl":Lcom/lge/camera/components/RotateLayout;
    const/4 v8, 0x0

    .line 106
    .local v8, "ll":Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    .line 107
    .local v19, "width":F
    const/4 v15, 0x0

    .line 108
    .local v15, "strokeSize":F
    const/4 v9, 0x0

    .line 109
    .local v9, "menuString":Ljava/lang/String;
    const/16 v17, 0x0

    .line 110
    .local v17, "tp":Landroid/text/TextPaint;
    const/16 v16, 0x0

    .line 111
    .local v16, "textWidth":F
    const/4 v14, 0x0

    .line 112
    .local v14, "scale":F
    const/4 v10, 0x0

    .line 114
    .local v10, "param1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->setCurrentPIPMask()V

    .line 116
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuOffset:I

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuImage:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_2

    .line 118
    new-instance v13, Lcom/lge/camera/components/RotateLayout;

    .end local v13    # "rl":Lcom/lge/camera/components/RotateLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Lcom/lge/camera/components/RotateLayout;-><init>(Landroid/content/Context;)V

    .line 119
    .restart local v13    # "rl":Lcom/lge/camera/components/RotateLayout;
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const v20, 0x7f09026a

    const v21, 0x7f09026b

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v12, "rLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v13, v12}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const v20, 0x7f020461

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/lge/camera/components/RotateLayout;->setBackgroundResource(I)V

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/lge/camera/components/RotateLayout;->setTag(Ljava/lang/Object;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mOnPIPFrameEffectClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/lge/camera/components/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v5, :cond_0

    .line 127
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/lge/camera/components/RotateLayout;->setSelected(Z)V

    .line 129
    :cond_0
    new-instance v8, Landroid/widget/LinearLayout;

    .end local v8    # "ll":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 130
    .restart local v8    # "ll":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 132
    .local v7, "lLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 135
    new-instance v6, Landroid/widget/ImageView;

    .end local v6    # "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 136
    .restart local v6    # "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMenuImage:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameMaskMenuString:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 140
    new-instance v18, Landroid/widget/TextView;

    .end local v18    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 142
    .restart local v18    # "tv":Landroid/widget/TextView;
    const v20, 0x7f09026a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->getPixelFromDimens(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 143
    const v20, 0x7f09025a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->getPixelFromDimens(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v15, v0

    .line 144
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v17

    .line 148
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->setSingleLine()V

    .line 149
    const v20, 0x7f09025b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->getPixelFromDimens(I)I

    move-result v20

    const/16 v21, 0x0

    const v22, 0x7f09025c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->getPixelFromDimens(I)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 152
    sget-object v20, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 154
    const/16 v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x99

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 157
    const/16 v20, 0x11

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    const/16 v20, 0x0

    const v21, 0x7f090259

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->getPixelFromDimens(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 162
    sget v20, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->BOARDER_WIDTH:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v19, v20

    cmpl-float v20, v16, v20

    if-lez v20, :cond_1

    .line 163
    sget v20, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->BOARDER_WIDTH:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v19, v20

    div-float v14, v20, v16

    .line 164
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 169
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    invoke-virtual {v13, v8}, Lcom/lge/camera/components/RotateLayout;->addView(Landroid/view/View;)V

    .line 175
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 176
    .local v11, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const v20, 0x7f09025d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->getPixelFromDimens(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 177
    const v20, 0x7f09025e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->getPixelFromDimens(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 178
    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .end local v10    # "param1":Landroid/widget/LinearLayout$LayoutParams;
    const v20, 0x7f09026a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->getPixelFromDimens(I)I

    move-result v20

    const v21, 0x7f09026b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->getPixelFromDimens(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    .restart local v10    # "param1":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    const v21, 0x7f0d0127

    invoke-interface/range {v20 .. v21}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 166
    .end local v11    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_1

    .line 186
    .end local v7    # "lLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "rLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->isLayoutInited:Z

    .line 187
    return-void
.end method

.method private setCurrentPIPMask()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I

    .line 238
    iget v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I

    iput v0, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenuPrev:I

    .line 239
    return-void
.end method

.method private show()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 190
    const-string v2, "CameraApp"

    const-string v3, "show"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->startPIPFrameSubMenuRotation(I)V

    .line 194
    iget-object v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0127

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "pipMenu":Landroid/view/View;
    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->makePIPFrameMenu()V

    .line 204
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v2

    iget v3, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I

    if-eq v2, v3, :cond_3

    .line 205
    iget v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 206
    invoke-direct {p0}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->setCurrentPIPMask()V

    .line 207
    iget v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setSelected(Z)V

    .line 209
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0122

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 211
    iget-object v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0126

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 213
    .local v1, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v1, v4, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 215
    .end local v1    # "sv":Landroid/widget/ScrollView;
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 221
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 58
    const-string v1, "CameraApp"

    const-string v2, "ShowPIPFrameSubMenu is EXECUTED !!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0122

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "pipLayout":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v1

    iget v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I

    if-ne v1, v2, :cond_0

    .line 63
    const-string v1, "CameraApp"

    const-string v2, "ShowPIPFrameSubMenu return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->isLayoutInited:Z

    if-nez v1, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->makePIPFrameMenu()V

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->show()V

    goto :goto_0
.end method
