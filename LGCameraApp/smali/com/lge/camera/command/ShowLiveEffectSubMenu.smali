.class public Lcom/lge/camera/command/ShowLiveEffectSubMenu;
.super Lcom/lge/camera/command/Command;
.source "ShowLiveEffectSubMenu.java"


# static fields
.field private static BOARDER_WIDTH:I = 0x0

.field private static final EFFECT:I = 0x1

.field private static final NONE_EFFECT:I


# instance fields
.field private hasVideoRecordMode:Z

.field private mBackEffectImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceEffectImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceMenuOffset:I

.field private mFaceSelectedMenu:I

.field private mOnFaceEffectClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xa

    sput v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->BOARDER_WIDTH:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I

    .line 45
    iput v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    .line 47
    iput-boolean v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hasVideoRecordMode:Z

    .line 350
    new-instance v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;-><init>(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)V

    iput-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mOnFaceEffectClickListener:Landroid/view/View$OnClickListener;

    .line 54
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->addImageToArray()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hide()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/command/ShowLiveEffectSubMenu;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    return p1
.end method

.method static synthetic access$202(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/command/ShowLiveEffectSubMenu;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hasVideoRecordMode:Z

    return v0
.end method

.method private addImageToArray()V
    .locals 3

    .prologue
    const v2, 0x7f020494

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    .line 100
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02032a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f020329

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02032e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02032b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02032d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02032f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    .line 109
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f020325

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f020326

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f020328

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f020327

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 339
    const-string v0, "CameraApp"

    const-string v1, "hide"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 341
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 343
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d00e9

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d00ed

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 346
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d00ee

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 348
    return-void
.end method

.method private initializeMenu()V
    .locals 18

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v16, "key_live_effect"

    invoke-interface/range {v15 .. v16}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v10

    .line 119
    .local v10, "liveEffectPref":Lcom/lge/camera/setting/ListPreference;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v16, "key_video_record_mode"

    invoke-interface/range {v15 .. v16}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v14

    .line 120
    .local v14, "videoModePref":Lcom/lge/camera/setting/ListPreference;
    if-nez v10, :cond_0

    if-eqz v14, :cond_0

    .line 121
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hasVideoRecordMode:Z

    .line 124
    :cond_0
    const-string v4, ""

    .line 125
    .local v4, "effectSelection":Ljava/lang/String;
    const/4 v9, 0x0

    .line 126
    .local v9, "liveEffecEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 128
    .local v8, "liveEffecEntriValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hasVideoRecordMode:Z

    if-eqz v15, :cond_3

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v15}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0703ee

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "effectList":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "liveEffecEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .restart local v9    # "liveEffecEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v12, v1, v6

    .line 133
    .local v12, "s":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 135
    .end local v12    # "s":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v15}, Lcom/lge/camera/ControllerFunction;->getLiveEffectList()Ljava/util/ArrayList;

    move-result-object v8

    .line 136
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v15}, Lcom/lge/camera/ControllerFunction;->getLiveEffect()Ljava/lang/String;

    move-result-object v4

    .line 151
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "effectList":[Ljava/lang/String;
    :goto_1
    const-string v15, "CameraApp"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "effectSelection :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-nez v4, :cond_6

    .line 200
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_2
    :goto_2
    return-void

    .line 138
    :cond_3
    if-eqz v10, :cond_2

    .line 141
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "liveEffecEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .restart local v9    # "liveEffecEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/CharSequence;
    array-length v7, v1

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_3
    if-ge v6, v7, :cond_4

    aget-object v2, v1, v6

    .line 143
    .local v2, "cs":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 145
    .end local v2    # "cs":Ljava/lang/CharSequence;
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "liveEffecEntriValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .restart local v8    # "liveEffecEntriValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v7, v1

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_5

    aget-object v2, v1, v6

    .line 147
    .restart local v2    # "cs":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 149
    .end local v2    # "cs":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v16, "key_live_effect"

    invoke-interface/range {v15 .. v16}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 156
    .end local v1    # "arr$":[Ljava/lang/CharSequence;
    :cond_6
    const-string v15, "off"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 157
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I

    .line 159
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    .line 162
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hasVideoRecordMode:Z

    if-nez v15, :cond_7

    .line 163
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v16, "key_live_effect"

    invoke-interface/range {v15 .. v16}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v11

    .line 164
    .local v11, "menuIndex":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v15, v11}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 165
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v15, v11, v0}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerMenuIcon(II)V

    .line 190
    .end local v11    # "menuIndex":I
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->makeFaceMenu(Ljava/util/ArrayList;)V

    .line 193
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v15}, Lcom/lge/camera/ControllerFunction;->isSensorSupportBackdropper()Z

    move-result v15

    if-nez v15, :cond_2

    goto/16 :goto_2

    .line 169
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 170
    .local v13, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    if-ge v5, v13, :cond_7

    .line 171
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 172
    const/4 v15, 0x6

    if-gt v5, v15, :cond_9

    .line 173
    move-object/from16 v0, p0

    iput v5, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    .line 174
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I

    goto :goto_5

    .line 180
    :cond_9
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    .line 181
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I

    .line 170
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6
.end method

.method private makeFaceMenu(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "liveEffecEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 204
    .local v2, "iv":Landroid/widget/ImageView;
    const/4 v10, 0x0

    .line 205
    .local v10, "tv":Landroid/widget/TextView;
    const/4 v11, 0x0

    .line 206
    .local v11, "width":F
    const/4 v4, 0x0

    .line 207
    .local v4, "menuString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 208
    .local v9, "tp":Landroid/text/TextPaint;
    const/4 v8, 0x0

    .line 209
    .local v8, "textWidth":F
    const/4 v7, 0x0

    .line 210
    .local v7, "scale":F
    const/4 v5, 0x0

    .line 211
    .local v5, "param1":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x0

    .line 212
    .local v6, "param2":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_2

    .line 213
    new-instance v2, Landroid/widget/ImageView;

    .end local v2    # "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v2, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 214
    .restart local v2    # "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    const v12, 0x7f020486

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 217
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I

    if-ne v12, v1, :cond_0

    .line 218
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 220
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mOnFaceEffectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "menuString":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 224
    .restart local v4    # "menuString":Ljava/lang/String;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5    # "param1":Landroid/widget/RelativeLayout$LayoutParams;
    const v12, 0x7f0901ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->getPixelFromDimens(I)I

    move-result v12

    const v13, 0x7f0901eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->getPixelFromDimens(I)I

    move-result v13

    invoke-direct {v5, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    .restart local v5    # "param1":Landroid/widget/RelativeLayout$LayoutParams;
    const v12, 0x7f0901ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->getPixelFromDimens(I)I

    move-result v12

    mul-int/2addr v12, v3

    iput v12, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 228
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0d00ed

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    new-instance v10, Landroid/widget/TextView;

    .end local v10    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 232
    .restart local v10    # "tv":Landroid/widget/TextView;
    const v12, 0x7f0901ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->getPixelFromDimens(I)I

    move-result v12

    int-to-float v11, v12

    .line 233
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 234
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 235
    const/high16 v12, -0x1000000

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    const v12, 0x3f333333    # 0.7f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 239
    const/16 v12, 0x11

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 240
    const/4 v12, 0x0

    const v13, 0x7f0901e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->getPixelFromDimens(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 242
    invoke-virtual {v9, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 244
    sget v12, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->BOARDER_WIDTH:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    cmpl-float v12, v8, v12

    if-lez v12, :cond_1

    .line 245
    sget v12, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->BOARDER_WIDTH:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    div-float v7, v12, v8

    .line 246
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 251
    :goto_1
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 254
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v6    # "param2":Landroid/widget/RelativeLayout$LayoutParams;
    const v12, 0x7f0901ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->getPixelFromDimens(I)I

    move-result v12

    const/4 v13, -0x2

    invoke-direct {v6, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 257
    .restart local v6    # "param2":Landroid/widget/RelativeLayout$LayoutParams;
    const v12, 0x7f0901ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->getPixelFromDimens(I)I

    move-result v12

    mul-int/2addr v12, v3

    iput v12, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0d00ee

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v10, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 248
    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_1

    .line 260
    :cond_2
    return-void
.end method

.method private show()V
    .locals 5

    .prologue
    .line 323
    const-string v1, "CameraApp"

    const-string v2, "show"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-boolean v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hasVideoRecordMode:Z

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->startSubMenuRotation(I)V

    .line 333
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00e9

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "live_effect"

    const/16 v3, 0x6b

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    .line 336
    return-void

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_live_effect"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, "menuIndex":I
    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->startSubMenuRotation(I)V

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 59
    const-string v0, "CameraApp"

    const-string v1, "ShowLiveEffectSubMenu is EXECUTE !!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/lge/camera/EffectsRecorder;->isEffectSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    const-string v0, "CameraApp"

    const-string v1, "NOT WORKING!!! live effect does not support in framework!!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionDragControllerVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideQuickFunctionDragDrop"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionSettingControllerShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 78
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isNullSettingView()Z

    move-result v0

    if-nez v0, :cond_6

    .line 81
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 82
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 86
    :cond_6
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->initializeMenu()V

    .line 88
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 89
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d00e9

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 90
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hide()V

    goto :goto_0

    .line 92
    :cond_7
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->show()V

    .line 93
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_live_effect"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 94
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    goto/16 :goto_0
.end method
