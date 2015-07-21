.class public Lcom/lge/uicc/framework/EFPathHelper;
.super Ljava/lang/Object;
.source "EFPathHelper.java"

# interfaces
.implements Lcom/lge/uicc/LGUiccConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommonIccEFPath(I)Ljava/lang/String;
    .locals 1
    .param p0, "efid"    # I

    .prologue
    .line 21
    sparse-switch p0, :sswitch_data_0

    .line 47
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 23
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 41
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 45
    :sswitch_2
    const-string v0, "3F007FFF5F1F"

    goto :goto_0

    .line 21
    :sswitch_data_0
    .sparse-switch
        0x2f30 -> :sswitch_1
        0x2f32 -> :sswitch_1
        0x2f33 -> :sswitch_1
        0x2f37 -> :sswitch_1
        0x2f38 -> :sswitch_1
        0x2f39 -> :sswitch_1
        0x2f40 -> :sswitch_1
        0x2f41 -> :sswitch_1
        0x2f42 -> :sswitch_1
        0x2f43 -> :sswitch_1
        0x2f50 -> :sswitch_1
        0x2fe7 -> :sswitch_1
        0x2ff0 -> :sswitch_1
        0x4f1c -> :sswitch_2
        0x6fe5 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getCsimEFPath(I)Ljava/lang/String;
    .locals 1
    .param p0, "efid"    # I

    .prologue
    .line 147
    sparse-switch p0, :sswitch_data_0

    .line 152
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 150
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x6f31 -> :sswitch_0
        0x6f38 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getIsimEFPath(I)Ljava/lang/String;
    .locals 1
    .param p0, "efid"    # I

    .prologue
    .line 127
    sparse-switch p0, :sswitch_data_0

    .line 132
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 130
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x6f07 -> :sswitch_0
        0x6fd5 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getRuimEFPath(I)Ljava/lang/String;
    .locals 1
    .param p0, "efid"    # I

    .prologue
    .line 137
    sparse-switch p0, :sswitch_data_0

    .line 142
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 140
    :sswitch_0
    const-string v0, "3F007F25"

    goto :goto_0

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x6f31 -> :sswitch_0
        0x6f38 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getSimEFPath(I)Ljava/lang/String;
    .locals 1
    .param p0, "efid"    # I

    .prologue
    .line 52
    sparse-switch p0, :sswitch_data_0

    .line 64
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 57
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 62
    :sswitch_1
    const-string v0, "3F007F20"

    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f07 -> :sswitch_1
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f42 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f60 -> :sswitch_1
        0x6fc6 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getUsimEFPath(I)Ljava/lang/String;
    .locals 3
    .param p0, "efid"    # I

    .prologue
    .line 69
    sparse-switch p0, :sswitch_data_0

    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "KT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ATT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TMO@US"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TRF_ATT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CRK"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sparse-switch p0, :sswitch_data_1

    .line 121
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 90
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 94
    :sswitch_1
    const-string v0, "3F007F25"

    goto :goto_0

    .line 99
    :sswitch_2
    const-string v0, "3F007FFF5F3D"

    goto :goto_0

    .line 110
    :sswitch_3
    const-string v0, "3F007FFF5F3F"

    goto :goto_0

    .line 117
    :sswitch_4
    const-string v0, "3F007FFF5F50"

    goto :goto_0

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f24 -> :sswitch_0
        0x4f22 -> :sswitch_2
        0x4f2c -> :sswitch_1
        0x4f55 -> :sswitch_2
        0x6f07 -> :sswitch_0
        0x6f37 -> :sswitch_0
        0x6f42 -> :sswitch_0
        0x6f43 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4e -> :sswitch_0
        0x6f56 -> :sswitch_0
        0x6f60 -> :sswitch_0
        0x6f61 -> :sswitch_0
        0x6f62 -> :sswitch_0
        0x6f73 -> :sswitch_0
        0x6f7b -> :sswitch_0
        0x6f7e -> :sswitch_0
    .end sparse-switch

    .line 103
    :sswitch_data_1
    .sparse-switch
        0x4f02 -> :sswitch_3
        0x4f03 -> :sswitch_3
        0x4f04 -> :sswitch_3
        0x4f07 -> :sswitch_3
        0x4f09 -> :sswitch_3
        0x4f81 -> :sswitch_4
        0x4f82 -> :sswitch_4
        0x4f83 -> :sswitch_4
        0x4f84 -> :sswitch_4
        0x4f85 -> :sswitch_4
        0x4f86 -> :sswitch_4
    .end sparse-switch
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EFPathHelper] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logd(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EFPathHelper] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->loge(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EFPathHelper] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logp(Ljava/lang/String;)V

    .line 163
    return-void
.end method
