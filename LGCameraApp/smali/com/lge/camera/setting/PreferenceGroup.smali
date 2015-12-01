.class public Lcom/lge/camera/setting/PreferenceGroup;
.super Lcom/lge/camera/setting/CameraPreference;
.source "PreferenceGroup.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/setting/CameraPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    .line 30
    return-void
.end method


# virtual methods
.method public addChild(Lcom/lge/camera/setting/CameraPreference;)V
    .locals 1
    .param p1, "child"    # Lcom/lge/camera/setting/CameraPreference;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/camera/setting/CameraPreference;->setSharedPreferenceName(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public addChildAt(Lcom/lge/camera/setting/CameraPreference;I)V
    .locals 1
    .param p1, "child"    # Lcom/lge/camera/setting/CameraPreference;
    .param p2, "index"    # I

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/camera/setting/CameraPreference;->setSharedPreferenceName(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 40
    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v3, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/CameraPreference;

    .line 70
    .local v2, "pref":Lcom/lge/camera/setting/CameraPreference;
    instance-of v3, v2, Lcom/lge/camera/setting/ListPreference;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 71
    check-cast v1, Lcom/lge/camera/setting/ListPreference;

    .line 72
    .local v1, "listPref":Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    .end local v1    # "listPref":Lcom/lge/camera/setting/ListPreference;
    .end local v2    # "pref":Lcom/lge/camera/setting/CameraPreference;
    :goto_0
    return-object v1

    .line 75
    .restart local v2    # "pref":Lcom/lge/camera/setting/CameraPreference;
    :cond_1
    instance-of v3, v2, Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 76
    check-cast v2, Lcom/lge/camera/setting/PreferenceGroup;

    .end local v2    # "pref":Lcom/lge/camera/setting/CameraPreference;
    invoke-virtual {v2, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 78
    .restart local v1    # "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    goto :goto_0

    .line 83
    .end local v1    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findPreferenceIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "i":I
    iget-object v4, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/setting/CameraPreference;

    .line 103
    .local v3, "pref":Lcom/lge/camera/setting/CameraPreference;
    instance-of v4, v3, Lcom/lge/camera/setting/ListPreference;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 104
    check-cast v2, Lcom/lge/camera/setting/ListPreference;

    .line 105
    .local v2, "listPref":Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    .end local v2    # "listPref":Lcom/lge/camera/setting/ListPreference;
    .end local v3    # "pref":Lcom/lge/camera/setting/CameraPreference;
    :cond_0
    return v0

    .line 108
    .restart local v3    # "pref":Lcom/lge/camera/setting/CameraPreference;
    :cond_1
    instance-of v4, v3, Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v4, :cond_2

    .line 109
    check-cast v3, Lcom/lge/camera/setting/PreferenceGroup;

    .end local v3    # "pref":Lcom/lge/camera/setting/CameraPreference;
    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 110
    .restart local v2    # "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v2, :cond_0

    .line 114
    .end local v2    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 115
    goto :goto_0
.end method

.method public get(I)Lcom/lge/camera/setting/CameraPreference;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/CameraPreference;

    return-object v0
.end method

.method public getListPreference(I)Lcom/lge/camera/setting/ListPreference;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/CameraPreference;

    .line 89
    .local v1, "pref":Lcom/lge/camera/setting/CameraPreference;
    instance-of v2, v1, Lcom/lge/camera/setting/ListPreference;

    if-eqz v2, :cond_0

    .line 90
    check-cast v1, Lcom/lge/camera/setting/ListPreference;

    .line 97
    .end local v1    # "pref":Lcom/lge/camera/setting/CameraPreference;
    :goto_0
    return-object v1

    .line 91
    .restart local v1    # "pref":Lcom/lge/camera/setting/CameraPreference;
    :cond_0
    instance-of v2, v1, Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v2, :cond_1

    .line 92
    check-cast v1, Lcom/lge/camera/setting/PreferenceGroup;

    .end local v1    # "pref":Lcom/lge/camera/setting/CameraPreference;
    invoke-virtual {v1, p1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 97
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reloadValue()V
    .locals 3

    .prologue
    .line 56
    iget-object v2, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/CameraPreference;

    .line 57
    .local v1, "pref":Lcom/lge/camera/setting/CameraPreference;
    invoke-virtual {v1}, Lcom/lge/camera/setting/CameraPreference;->reloadValue()V

    goto :goto_0

    .line 59
    .end local v1    # "pref":Lcom/lge/camera/setting/CameraPreference;
    :cond_0
    return-void
.end method

.method public removePreference(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/setting/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
