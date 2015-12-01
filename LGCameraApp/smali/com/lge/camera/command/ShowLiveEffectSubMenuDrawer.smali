.class public Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;
.super Lcom/lge/camera/command/Command;
.source "ShowLiveEffectSubMenuDrawer.java"


# static fields
.field private static BOARDER_WIDTH:I = 0x0

.field public static final DEFAULT_EFFECT:I = 0x1

.field private static final NONE_EFFECT:I

.field private static mFaceSelectedMenu:I


# instance fields
.field private hasVideoRecordMode:Z

.field private isLayoutInited:Z

.field private mEffectViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/RotateLayout;",
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

.field private mOnFaceEffectClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xa

    sput v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->BOARDER_WIDTH:I

    .line 49
    const/4 v0, 0x1

    sput v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceSelectedMenu:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 43
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->checkRecordMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceMenuOffset:I

    .line 44
    iput-boolean v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->hasVideoRecordMode:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mEffectViewList:Ljava/util/ArrayList;

    .line 50
    iput-boolean v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->isLayoutInited:Z

    .line 332
    new-instance v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer$1;-><init>(Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;)V

    iput-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mOnFaceEffectClickListener:Landroid/view/View$OnClickListener;

    .line 54
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->checkRecordMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->hasVideoRecordMode:Z

    .line 55
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->addImageToArray()V

    .line 56
    return-void

    :cond_0
    move v0, v1

    .line 43
    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceSelectedMenu:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 37
    sput p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceSelectedMenu:I

    return p0
.end method

.method static synthetic access$100(Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->updateSettingMenu(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->clearSelection()V

    return-void
.end method

.method private addImageToArray()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceEffectImage:Ljava/util/ArrayList;

    .line 133
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f020494

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02032a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f020329

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02032e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02032b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02032d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceEffectImage:Ljava/util/ArrayList;

    const v1, 0x7f02032f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method private animateOpen()V
    .locals 3

    .prologue
    .line 295
    const-string v1, "CameraApp"

    const-string v2, "animation open"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 297
    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 298
    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00f0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .line 300
    .local v0, "drawer":Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateOpen()V

    .line 304
    :cond_0
    return-void
.end method

.method private checkRecordMode()Z
    .locals 4

    .prologue
    .line 59
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_live_effect"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 60
    .local v0, "liveEffectPref":Lcom/lge/camera/setting/ListPreference;
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_record_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 61
    .local v1, "videoModePref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 62
    const/4 v2, 0x1

    .line 64
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clearSelection()V
    .locals 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mEffectViewList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 313
    :cond_0
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mEffectViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mEffectViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateLayout;->setSelected(Z)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initializeMenu()V
    .locals 15

    .prologue
    .line 143
    const-string v3, ""

    .line 144
    .local v3, "effectSelection":Ljava/lang/String;
    const/4 v8, 0x0

    .line 145
    .local v8, "liveEffecEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 147
    .local v7, "liveEffecEntriValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v12, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->hasVideoRecordMode:Z

    if-eqz v12, :cond_1

    .line 148
    iget-object v12, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0703ee

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "effectList":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "liveEffecEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .restart local v8    # "liveEffecEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v10, v0, v5

    .line 152
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 154
    .end local v10    # "s":Ljava/lang/String;
    :cond_0
    iget-object v12, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getLiveEffectList()Ljava/util/ArrayList;

    move-result-object v7

    .line 155
    iget-object v12, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getLiveEffect()Ljava/lang/String;

    move-result-object v3

    .line 168
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "effectList":[Ljava/lang/String;
    :goto_1
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "effectSelection :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    if-nez v3, :cond_4

    .line 188
    :goto_2
    return-void

    .line 157
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    iget-object v12, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v13, "key_live_effect"

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v9

    .line 158
    .local v9, "liveEffectPref":Lcom/lge/camera/setting/ListPreference;
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "liveEffecEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .restart local v8    # "liveEffecEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/CharSequence;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .line 160
    .local v1, "cs":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 162
    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "liveEffecEntriValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .restart local v7    # "liveEffecEntriValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v6, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_3

    aget-object v1, v0, v5

    .line 164
    .restart local v1    # "cs":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 166
    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_3
    iget-object v12, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v13, "key_live_effect"

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 174
    .end local v0    # "arr$":[Ljava/lang/CharSequence;
    .end local v9    # "liveEffectPref":Lcom/lge/camera/setting/ListPreference;
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 175
    .local v11, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v11, :cond_5

    .line 176
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 177
    const/4 v12, 0x6

    if-gt v4, v12, :cond_6

    .line 178
    sput v4, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceSelectedMenu:I

    .line 186
    :cond_5
    invoke-direct {p0, v8}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->makeFaceMenu(Ljava/util/ArrayList;)V

    .line 187
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->isLayoutInited:Z

    goto :goto_2

    .line 181
    :cond_6
    const/4 v12, 0x0

    sput v12, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceSelectedMenu:I

    .line 175
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method private makeFaceMenu(Ljava/util/ArrayList;)V
    .locals 26
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
    .line 191
    .local p1, "liveEffecEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 192
    .local v5, "iv":Landroid/widget/ImageView;
    const/16 v17, 0x0

    .line 193
    .local v17, "tv":Landroid/widget/TextView;
    const/4 v12, 0x0

    .line 194
    .local v12, "rl":Lcom/lge/camera/components/RotateLayout;
    const/4 v7, 0x0

    .line 195
    .local v7, "ll":Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    .line 196
    .local v19, "width":F
    const/4 v14, 0x0

    .line 197
    .local v14, "strokeSize":F
    const/4 v8, 0x0

    .line 198
    .local v8, "menuString":Ljava/lang/String;
    const/16 v16, 0x0

    .line 199
    .local v16, "tp":Landroid/text/TextPaint;
    const/4 v15, 0x0

    .line 200
    .local v15, "textWidth":F
    const/4 v13, 0x0

    .line 201
    .local v13, "scale":F
    const/4 v9, 0x0

    .line 202
    .local v9, "param1":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mEffectViewList:Ljava/util/ArrayList;

    .line 204
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceMenuOffset:I

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceEffectImage:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_2

    .line 206
    new-instance v12, Lcom/lge/camera/components/RotateLayout;

    .end local v12    # "rl":Lcom/lge/camera/components/RotateLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Lcom/lge/camera/components/RotateLayout;-><init>(Landroid/content/Context;)V

    .line 207
    .restart local v12    # "rl":Lcom/lge/camera/components/RotateLayout;
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const v20, 0x7f090281

    const v21, 0x7f090282

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v11, "rLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v12, v11}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    const v20, 0x7f020487

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/lge/camera/components/RotateLayout;->setBackgroundResource(I)V

    .line 212
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/lge/camera/components/RotateLayout;->setTag(Ljava/lang/Object;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mEffectViewList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mOnFaceEffectClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/lge/camera/components/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v7, Landroid/widget/LinearLayout;

    .end local v7    # "ll":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 217
    .restart local v7    # "ll":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v6, "lLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 222
    new-instance v5, Landroid/widget/ImageView;

    .end local v5    # "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 223
    .restart local v5    # "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceEffectImage:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "menuString":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 227
    .restart local v8    # "menuString":Ljava/lang/String;
    new-instance v17, Landroid/widget/TextView;

    .end local v17    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 229
    .restart local v17    # "tv":Landroid/widget/TextView;
    const v20, 0x7f090281

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->getPixelFromDimens(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 230
    const v20, 0x7f090273

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->getPixelFromDimens(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v14, v0

    .line 231
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v16

    .line 232
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 234
    const/high16 v20, -0x1000000

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x99

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 237
    const/16 v20, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 238
    const/16 v20, 0x0

    const v21, 0x7f090272

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->getPixelFromDimens(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 240
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 242
    sget v20, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->BOARDER_WIDTH:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v19, v20

    cmpl-float v20, v15, v20

    if-lez v20, :cond_1

    .line 243
    sget v20, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->BOARDER_WIDTH:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v19, v20

    div-float v13, v20, v15

    .line 244
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 249
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    invoke-virtual {v12, v7}, Lcom/lge/camera/components/RotateLayout;->addView(Landroid/view/View;)V

    .line 255
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 256
    .local v10, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const v20, 0x7f090274

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->getPixelFromDimens(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 257
    const v20, 0x7f090275

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->getPixelFromDimens(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 258
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .end local v9    # "param1":Landroid/widget/LinearLayout$LayoutParams;
    const v20, 0x7f090281

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->getPixelFromDimens(I)I

    move-result v20

    const v21, 0x7f090282

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->getPixelFromDimens(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 263
    .restart local v9    # "param1":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v20, v0

    const v21, 0x7f0d00f4

    invoke-interface/range {v20 .. v21}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 264
    .local v18, "view":Landroid/view/View;
    if-eqz v18, :cond_0

    .line 265
    check-cast v18, Landroid/widget/LinearLayout;

    .end local v18    # "view":Landroid/view/View;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 246
    .end local v10    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_1

    .line 268
    .end local v6    # "lLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "rLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private show(Z)V
    .locals 4
    .param p1, "open"    # Z

    .prologue
    .line 271
    const-string v2, "CameraApp"

    const-string v3, "show"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d00f4

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, "menuView":Landroid/view/View;
    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 279
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->initializeMenu()V

    .line 280
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->clearSelection()V

    .line 281
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->updateMenuViewWithCurrentLiveEffect()V

    .line 284
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->startLiveEffectDrawerSubMenuRotation(I)V

    .line 285
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d00ef

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 286
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 287
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :cond_3
    if-eqz p1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->animateOpen()V

    goto :goto_0
.end method

.method private updateMenuViewWithCurrentLiveEffect()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 316
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mEffectViewList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 317
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFaceSelectedMenu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceSelectedMenu:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFaceMenuOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceMenuOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget v2, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceSelectedMenu:I

    iget v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceMenuOffset:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mEffectViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget v2, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceSelectedMenu:I

    iget v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceMenuOffset:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 321
    :cond_0
    sput v1, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceSelectedMenu:I

    .line 322
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->checkRecordMode()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iput v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceMenuOffset:I

    .line 325
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mEffectViewList:Ljava/util/ArrayList;

    sget v2, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceSelectedMenu:I

    iget v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceMenuOffset:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateLayout;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_2
    :goto_1
    return-void

    .line 322
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "CameraApp"

    const-string v2, "ArrayIndexOutOfBoundsException"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateSettingMenu(I)V
    .locals 8
    .param p1, "selectedMenu"    # I

    .prologue
    .line 353
    const/4 v4, 0x0

    .line 354
    .local v4, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 355
    .local v1, "menuIndex":I
    iget-boolean v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->hasVideoRecordMode:Z

    if-eqz v5, :cond_2

    .line 356
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getLiveEffectList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "value":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 357
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v1

    .line 358
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v4}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    .line 359
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 360
    .local v2, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 361
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v1}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 362
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "recordmode_live_effect"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getChildIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(I)Z

    .line 363
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerAllMenuIcons()V

    .line 369
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "recordmode_live_effect"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->setPreviousRecordModeString(Ljava/lang/String;)V

    .line 385
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.setting.SetLiveEffect"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 386
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOnFaceEffectClickListener idx:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", onClick:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :goto_2
    return-void

    .line 365
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex(Ljava/lang/String;)I

    move-result v3

    .line 366
    .local v3, "settingMenuIndex":I
    const-string v5, "recordmode_live_effect"

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 367
    .local v0, "childIndex":I
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v3, v0}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(II)Z

    goto :goto_0

    .line 372
    .end local v0    # "childIndex":I
    .end local v2    # "pref":Lcom/lge/camera/setting/ListPreference;
    .end local v3    # "settingMenuIndex":I
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_live_effect"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 373
    .restart local v2    # "pref":Lcom/lge/camera/setting/ListPreference;
    if-nez v2, :cond_3

    .line 374
    const-string v5, "CameraApp"

    const-string v6, "pref is null"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 377
    :cond_3
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, p1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 378
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_live_effect"

    invoke-interface {v5, v6, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 379
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_live_effect"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v1

    .line 381
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v1}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 382
    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v1, p1}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerMenuIcon(II)V

    goto :goto_1
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->execute(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 7
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 75
    const-string v3, "CameraApp"

    const-string v4, "ShowLiveEffectSubMenuDrawer is EXECUTE !!!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x1

    .line 79
    .local v1, "isDrawerOpen":Z
    instance-of v3, p1, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 80
    check-cast v0, Landroid/os/Bundle;

    .line 81
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "menu_open"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 84
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_1

    .line 125
    :goto_0
    return-void

    .line 87
    :cond_1
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/lge/camera/EffectsRecorder;->isEffectSupported(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 88
    const-string v3, "CameraApp"

    const-string v4, "NOT WORKING!!! live effect is not supported by framework!!!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->setCurrentLiveEffectWithDefault()V

    .line 93
    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d00ef

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 94
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    if-nez v1, :cond_4

    .line 97
    iget-boolean v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->hasVideoRecordMode:Z

    if-eqz v3, :cond_3

    .line 98
    const-string v3, "CameraApp"

    const-string v4, "live_effect_sliding_drawer_menu_view is already visible"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_3
    const-string v3, "CameraApp"

    const-string v4, "live_effect_sliding_drawer_menu_view is already visible, only open sliding drawer"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->animateOpen()V

    goto :goto_0

    .line 107
    :cond_4
    iget-boolean v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->hasVideoRecordMode:Z

    if-nez v3, :cond_5

    if-eqz v1, :cond_5

    .line 108
    invoke-direct {p0, v6}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->updateSettingMenu(I)V

    .line 109
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->setCurrentLiveEffectWithDefault()V

    .line 112
    :cond_5
    iget-boolean v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->isLayoutInited:Z

    if-nez v3, :cond_6

    .line 113
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->initializeMenu()V

    .line 116
    :cond_6
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->clearSelection()V

    .line 117
    invoke-direct {p0}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->updateMenuViewWithCurrentLiveEffect()V

    .line 121
    invoke-direct {p0, v1}, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->show(Z)V

    .line 122
    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_live_effect"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v6, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 123
    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    goto :goto_0
.end method

.method public setCurrentLiveEffectWithDefault()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getLiveEffectList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getLiveEffect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/lge/camera/command/ShowLiveEffectSubMenuDrawer;->mFaceSelectedMenu:I

    .line 129
    return-void
.end method
