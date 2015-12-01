.class public abstract Lcom/lge/camera/setting/SettingMenu;
.super Ljava/util/Observable;
.source "SettingMenu.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;
    }
.end annotation


# static fields
.field public static final DEFAULT_VIDEO_DURATION:I = 0x708

.field public static final VIDEO_QUALITY_HIGH:Ljava/lang/String; = "high"

.field public static final VIDEO_QUALITY_YOUTUBE:Ljava/lang/String; = "youtube"

.field public static final YOUTUBE_VIDEO_DURATION:I = 0x258


# instance fields
.field protected backupCurrentMenuIndex:I

.field protected currentMenuIndex:I

.field protected mBrightnessValue:I

.field public mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

.field protected mSetting:Lcom/lge/camera/setting/Setting;

.field protected mZoomValue:I

.field protected menu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/setting/SettingMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 34
    iput v0, p0, Lcom/lge/camera/setting/SettingMenu;->backupCurrentMenuIndex:I

    .line 37
    iput v0, p0, Lcom/lge/camera/setting/SettingMenu;->mZoomValue:I

    .line 38
    iput v0, p0, Lcom/lge/camera/setting/SettingMenu;->mBrightnessValue:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    .line 65
    iput-object p1, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    .line 66
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 491
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 492
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuItem;->close()V

    .line 493
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 491
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 497
    :cond_0
    iput-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    .line 499
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v1, p0}, Lcom/lge/camera/setting/Setting;->deleteObserver(Ljava/util/Observer;)V

    .line 500
    iput-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 501
    return-void
.end method

.method public findMenuBySettingIndex(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 4
    .param p1, "settingIndex"    # I

    .prologue
    .line 137
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 138
    .local v1, "menuCount":I
    const/4 v2, 0x0

    .line 139
    .local v2, "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 140
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    check-cast v2, Lcom/lge/camera/setting/SettingMenuItem;

    .line 141
    .restart local v2    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenuItem;->getSettingIndex()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 146
    :cond_0
    return-object v2

    .line 139
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBackupCurrentMenuIndex()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/lge/camera/setting/SettingMenu;->backupCurrentMenuIndex:I

    return v0
.end method

.method public getChildIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenuItem;->getChildIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentChildSettingIcon(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 457
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v3

    .line 461
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v4, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 463
    .local v2, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 465
    .local v0, "iconIndex":I
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v1

    .line 466
    .local v1, "iconResources":[I
    if-eqz v1, :cond_0

    .line 467
    if-ne v0, v3, :cond_2

    .line 468
    const/4 v3, 0x0

    aget v3, v1, v3

    goto :goto_0

    .line 470
    :cond_2
    aget v3, v1, v0

    goto :goto_0
.end method

.method public getCurrentChildSettingIcons(Ljava/lang/String;)[I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-object v1

    .line 482
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v2, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 483
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getSettingMenuIconResources()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentChildSettingValue(I)Ljava/lang/String;
    .locals 8
    .param p1, "menuIndex"    # I

    .prologue
    .line 404
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 405
    :cond_0
    const-string v0, ""

    .line 426
    :cond_1
    :goto_0
    return-object v0

    .line 408
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v4, v1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 410
    .local v2, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_6

    .line 411
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "entry":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 413
    :cond_3
    const-string v4, "key_brightness"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 414
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v4, v1}, Lcom/lge/camera/setting/Setting;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float v3, v4, v5

    .line 416
    .local v3, "value":F
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 417
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    .line 419
    :cond_4
    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 420
    goto :goto_0

    .line 421
    .end local v3    # "value":F
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v4, v1}, Lcom/lge/camera/setting/Setting;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 426
    .end local v0    # "entry":Ljava/lang/String;
    :cond_6
    const-string v0, ""

    goto :goto_0
.end method

.method public getCurrentChildSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 430
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 431
    :cond_0
    const-string v0, ""

    .line 452
    :cond_1
    :goto_0
    return-object v0

    .line 435
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 436
    .local v1, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_6

    .line 437
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "entry":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    :cond_3
    const-string v3, "key_brightness"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 440
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/Setting;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float v2, v3, v4

    .line 442
    .local v2, "value":F
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 443
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    .line 445
    :cond_4
    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 446
    goto :goto_0

    .line 447
    .end local v2    # "value":F
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/Setting;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 452
    .end local v0    # "entry":Ljava/lang/String;
    :cond_6
    const-string v0, ""

    goto :goto_0
.end method

.method public getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;
    .locals 4

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .restart local v1    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    :goto_0
    return-object v1

    .line 153
    .end local v1    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    .line 155
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    .restart local v1    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    goto :goto_0
.end method

.method public getCurrentMenuIndex()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    return v0
.end method

.method public getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    return-object v0
.end method

.method public getMenu(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 88
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v1

    .line 92
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    goto :goto_0
.end method

.method public getMenuCount()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMenuIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v1, -0x1

    .line 102
    .local v1, "index":I
    if-nez p1, :cond_0

    move v2, v1

    .line 113
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    return v2

    .line 106
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 107
    .local v3, "menuSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 108
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    move v1, v0

    :cond_1
    move v2, v1

    .line 113
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 107
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getMenuList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/setting/SettingMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedChild(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 117
    if-nez p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 120
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    iget v1, v1, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    goto :goto_0
.end method

.method public getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    iget v1, v1, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/SettingMenuItem;->getChild(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedChildIndex()I
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    iget v0, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    return v0
.end method

.method public abstract getSetting()Lcom/lge/camera/setting/Setting;
.end method

.method protected abstract initMenu()V
.end method

.method public insertMenuItem(ILcom/lge/camera/setting/SettingMenuItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/lge/camera/setting/SettingMenuItem;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method public removeMenuItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public setAllChildMenuEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->setAllChildMenuEnabled(Ljava/lang/String;Z)V

    .line 338
    :cond_0
    return-void
.end method

.method public setBackupCurrentMenuIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/lge/camera/setting/SettingMenu;->backupCurrentMenuIndex:I

    .line 166
    return-void
.end method

.method public setCurrentMenu(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 173
    iget v0, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    if-eq v0, p1, :cond_0

    .line 174
    iput p1, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    .line 176
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 177
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    .line 179
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentMenuOnly(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 186
    iget v0, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    if-eq v0, p1, :cond_0

    .line 187
    iput p1, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    .line 188
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v4

    .line 271
    .local v4, "parentMenuIndex":I
    const/4 v2, 0x0

    .line 272
    .local v2, "isQFLMenu":Z
    if-ltz v4, :cond_0

    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_3

    .line 273
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v6, p1}, Lcom/lge/camera/setting/Setting;->getQfIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 305
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v6}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->initSettingMenu()V

    .line 277
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v4

    .line 278
    const/4 v2, 0x1

    .line 280
    :cond_3
    const/4 v0, 0x0

    .line 281
    .local v0, "childMenuIndex":I
    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v6, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 282
    .local v3, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_1

    .line 286
    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/setting/SettingMenuItem;

    .line 288
    .local v5, "parentMenuItem":Lcom/lge/camera/setting/SettingMenuItem;
    invoke-virtual {v3, p2}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 289
    if-gez v0, :cond_4

    .line 290
    const/4 v0, 0x0

    .line 292
    :cond_4
    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/SettingMenuItem;->getChild(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    .line 293
    .local v1, "childMenuItem":Lcom/lge/camera/setting/SettingMenuItem;
    iget-boolean v6, v1, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eq v6, p3, :cond_6

    .line 294
    iput-boolean p3, v1, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    .line 295
    if-eqz v2, :cond_5

    .line 296
    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v6}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    .line 298
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 299
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    goto :goto_0

    .line 301
    :cond_6
    if-eqz v2, :cond_1

    .line 302
    iget-object v6, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v6}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    goto :goto_0
.end method

.method public setEnabled(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v1

    .line 309
    .local v1, "parentMenuIndex":I
    const/4 v0, 0x0

    .line 310
    .local v0, "isQFLMenu":Z
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 311
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/Setting;->getQfIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v3}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->initSettingMenu()V

    .line 315
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v1

    .line 316
    const/4 v0, 0x1

    .line 319
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/SettingMenuItem;

    .line 320
    .local v2, "parentMenuItem":Lcom/lge/camera/setting/SettingMenuItem;
    iget-boolean v3, v2, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eq v3, p2, :cond_5

    .line 321
    iput-boolean p2, v2, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    .line 322
    if-eqz v0, :cond_4

    .line 323
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v3}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    .line 325
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 326
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    goto :goto_0

    .line 328
    :cond_5
    if-eqz v0, :cond_1

    .line 329
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v3}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    goto :goto_0
.end method

.method public setSelectedChild(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v2

    .line 243
    .local v2, "parentMenuIndex":I
    const/4 v1, 0x0

    .line 244
    .local v1, "isQFLMenu":Z
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 245
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/Setting;->getQfIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 267
    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v3}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->initSettingMenu()V

    .line 249
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v2

    .line 250
    const/4 v1, 0x1

    .line 252
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    .line 254
    .local v0, "currentMenu":Lcom/lge/camera/setting/SettingMenuItem;
    iget v3, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-eq v3, p2, :cond_5

    .line 255
    iput p2, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 256
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/lge/camera/setting/Setting;->setSetting(Ljava/lang/String;I)Z

    .line 257
    if-eqz v1, :cond_4

    .line 258
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v3}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    .line 260
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 261
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    goto :goto_0

    .line 263
    :cond_5
    if-eqz v1, :cond_1

    .line 264
    iget-object v3, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v3}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    goto :goto_0
.end method

.method public setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "saveSetting"    # Z

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v3

    .line 342
    .local v3, "parentMenuIndex":I
    const/4 v1, 0x0

    .line 343
    .local v1, "isQFLMenu":Z
    if-ltz v3, :cond_0

    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 344
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v5, p1}, Lcom/lge/camera/setting/Setting;->getQfIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 388
    :cond_1
    :goto_0
    return-void

    .line 347
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v5}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->initSettingMenu()V

    .line 348
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v3

    .line 349
    const/4 v1, 0x1

    .line 352
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v5, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 353
    .local v2, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_1

    .line 357
    invoke-virtual {v2, p2}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, "childMenuIndex":I
    if-ltz v3, :cond_4

    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_5

    .line 359
    :cond_4
    if-eqz v1, :cond_1

    .line 360
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v5}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    goto :goto_0

    .line 364
    :cond_5
    if-gez v0, :cond_6

    .line 365
    if-eqz v1, :cond_1

    .line 366
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v5}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    goto :goto_0

    .line 371
    :cond_6
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/SettingMenuItem;

    .line 372
    .local v4, "parentMenuItem":Lcom/lge/camera/setting/SettingMenuItem;
    iget v5, v4, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-eq v5, v0, :cond_9

    .line 373
    iput v0, v4, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 374
    if-eqz p3, :cond_7

    .line 375
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/lge/camera/setting/Setting;->setSetting(Ljava/lang/String;I)Z

    .line 377
    :cond_7
    if-eqz v1, :cond_8

    .line 378
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v5}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    .line 380
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 381
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    goto :goto_0

    .line 384
    :cond_9
    if-eqz v1, :cond_1

    .line 385
    iget-object v5, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v5}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->removeSettingItem()V

    goto :goto_0
.end method

.method public setSelectedChild(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 212
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    .line 214
    .local v0, "currentMenu":Lcom/lge/camera/setting/SettingMenuItem;
    iget v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-eq v1, p1, :cond_0

    .line 215
    iput p1, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 216
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/camera/setting/SettingMenu;->currentMenuIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/lge/camera/setting/Setting;->setSetting(Ljava/lang/String;I)Z

    .line 217
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 218
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    .line 220
    const/4 v1, 0x1

    .line 222
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSelectedChild(II)Z
    .locals 3
    .param p1, "menuIndex"    # I
    .param p2, "index"    # I

    .prologue
    .line 227
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    .line 229
    .local v0, "currentMenu":Lcom/lge/camera/setting/SettingMenuItem;
    iget v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    if-eq v1, p2, :cond_0

    .line 230
    iput p2, v0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 231
    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/lge/camera/setting/Setting;->setSetting(Ljava/lang/String;I)Z

    .line 232
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 233
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    .line 235
    const/4 v1, 0x1

    .line 237
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSettingPreferenceGroupForVideo(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 1
    .param p1, "preferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v0}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->isMMSIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v0}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v0}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/properties/MmsProperties;->getMmsResolutionsLength(Landroid/content/ContentResolver;)I

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->setPreferenceGroup(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 75
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->setPreferenceGroup(Lcom/lge/camera/setting/PreferenceGroup;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6
    .param p1, "arg0"    # Ljava/util/Observable;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, "parentMenu":Lcom/lge/camera/setting/SettingMenuItem;
    const/4 v3, 0x0

    .line 393
    .local v3, "settingIndex":I
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 394
    .local v1, "menuSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 395
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "parentMenu":Lcom/lge/camera/setting/SettingMenuItem;
    check-cast v2, Lcom/lge/camera/setting/SettingMenuItem;

    .line 396
    .restart local v2    # "parentMenu":Lcom/lge/camera/setting/SettingMenuItem;
    iget-object v4, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v3

    .line 397
    iput v3, v2, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->setChanged()V

    .line 400
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenu;->notifyObservers()V

    .line 401
    return-void
.end method
