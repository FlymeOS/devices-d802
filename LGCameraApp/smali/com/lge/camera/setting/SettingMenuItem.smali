.class public Lcom/lge/camera/setting/SettingMenuItem;
.super Ljava/lang/Object;
.source "SettingMenuItem.java"


# instance fields
.field public enable:Z

.field public iconResourceId:I

.field private mChildList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/setting/SettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCommand:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mParameterValue:Ljava/lang/String;

.field private mSettingIndex:I

.field private mSettingMenuCommand:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public selectedChildPosition:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "settingIndex"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mCommand:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mKey:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mSettingMenuCommand:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mParameterValue:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    .line 33
    iput p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->mSettingIndex:I

    .line 34
    iput-object p2, p0, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public addChild(Lcom/lge/camera/setting/SettingMenuItem;)V
    .locals 1
    .param p1, "child"    # Lcom/lge/camera/setting/SettingMenuItem;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    .line 150
    :cond_0
    return-void
.end method

.method public getChild(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getChildIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/setting/SettingMenuItem;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 119
    invoke-virtual {p0, v0}, Lcom/lge/camera/setting/SettingMenuItem;->getChild(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuItem;->getParameterValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 118
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mParameterValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/SettingMenuItem;

    return-object v0
.end method

.method public getSelectedChildPosition()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    return v0
.end method

.method public getSettingIndex()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mSettingIndex:I

    return v0
.end method

.method public getSettingMenuCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->mSettingMenuCommand:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->mCommand:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eq v0, p1, :cond_0

    .line 132
    iput-boolean p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    .line 133
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIconResource(I)V
    .locals 0
    .param p1, "iconResourceId"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->iconResourceId:I

    .line 67
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->mKey:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setParameterValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameterValue"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->mParameterValue:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSelectedChildBySettingIndex(I)V
    .locals 3
    .param p1, "settingIndex"    # I

    .prologue
    .line 78
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 79
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 80
    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenuItem;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenuItem;->getSettingIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 81
    iput v1, p0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method

.method public setSelectedChildPosition(I)V
    .locals 0
    .param p1, "selectedChildPosition"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 71
    return-void
.end method

.method public setSettingMenuCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lge/camera/setting/SettingMenuItem;->mSettingMenuCommand:Ljava/lang/String;

    .line 59
    return-void
.end method
