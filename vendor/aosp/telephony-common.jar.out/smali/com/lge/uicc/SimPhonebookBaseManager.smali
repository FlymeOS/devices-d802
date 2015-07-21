.class public Lcom/lge/uicc/SimPhonebookBaseManager;
.super Ljava/lang/Object;
.source "SimPhonebookBaseManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SimPhonebookBaseManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteEntry(II)I
    .locals 6
    .param p0, "slot"    # I
    .param p1, "simIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 188
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/SimPhonebookBaseManager;->getPbmService()Lcom/lge/uicc/ISimPhonebookService;

    move-result-object v1

    .line 189
    .local v1, "service":Lcom/lge/uicc/ISimPhonebookService;
    if-nez v1, :cond_0

    .line 190
    const-string v3, "SimPhonebookBaseManager"

    const-string v4, "deleteEntry: service is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :goto_0
    return v2

    .line 193
    .restart local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :cond_0
    invoke-interface {v1, p0, p1}, Lcom/lge/uicc/ISimPhonebookService;->deleteEntry(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 194
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteEntry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteEntry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteGroup(II)I
    .locals 6
    .param p0, "slot"    # I
    .param p1, "groupIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 210
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/SimPhonebookBaseManager;->getPbmService()Lcom/lge/uicc/ISimPhonebookService;

    move-result-object v1

    .line 211
    .local v1, "service":Lcom/lge/uicc/ISimPhonebookService;
    if-nez v1, :cond_0

    .line 212
    const-string v3, "SimPhonebookBaseManager"

    const-string v4, "deleteGroup: service is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :goto_0
    return v2

    .line 215
    .restart local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :cond_0
    invoke-interface {v1, p0, p1}, Lcom/lge/uicc/ISimPhonebookService;->deleteGroup(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 216
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteGroup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteGroup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getPbmService()Lcom/lge/uicc/ISimPhonebookService;
    .locals 1

    .prologue
    .line 226
    const-string v0, "lguiccpbm"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/ISimPhonebookService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/uicc/ISimPhonebookService;

    move-result-object v0

    return-object v0
.end method

.method public static getSimPhonebookInfo(I)Lcom/lge/uicc/SimPhonebookBaseInfo;
    .locals 6
    .param p0, "slot"    # I

    .prologue
    const/4 v2, 0x0

    .line 30
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/SimPhonebookBaseManager;->getPbmService()Lcom/lge/uicc/ISimPhonebookService;

    move-result-object v1

    .line 31
    .local v1, "service":Lcom/lge/uicc/ISimPhonebookService;
    if-nez v1, :cond_0

    .line 32
    const-string v3, "SimPhonebookBaseManager"

    const-string v4, "getSimPhonebookInfo: service is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :goto_0
    return-object v2

    .line 35
    .restart local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :cond_0
    invoke-interface {v1, p0}, Lcom/lge/uicc/ISimPhonebookService;->getSimPhonebookInfo(I)Lcom/lge/uicc/SimPhonebookBaseInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 36
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimPhonebookInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimPhonebookInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static insertEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 6
    .param p0, "slot"    # I
    .param p1, "simIndex"    # I
    .param p2, "entry"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v2, -0x1

    .line 97
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/SimPhonebookBaseManager;->getPbmService()Lcom/lge/uicc/ISimPhonebookService;

    move-result-object v1

    .line 98
    .local v1, "service":Lcom/lge/uicc/ISimPhonebookService;
    if-nez v1, :cond_0

    .line 99
    const-string v3, "SimPhonebookBaseManager"

    const-string v4, "insertEntry: service is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :goto_0
    return v2

    .line 102
    .restart local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :cond_0
    invoke-interface {v1, p0, p1, p2}, Lcom/lge/uicc/ISimPhonebookService;->insertEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 103
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertEntry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertEntry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static insertGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 6
    .param p0, "slot"    # I
    .param p1, "groupIndex"    # I
    .param p2, "group"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v2, -0x1

    .line 120
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/SimPhonebookBaseManager;->getPbmService()Lcom/lge/uicc/ISimPhonebookService;

    move-result-object v1

    .line 121
    .local v1, "service":Lcom/lge/uicc/ISimPhonebookService;
    if-nez v1, :cond_0

    .line 122
    const-string v3, "SimPhonebookBaseManager"

    const-string v4, "insertGroup: service is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :goto_0
    return v2

    .line 125
    .restart local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :cond_0
    invoke-interface {v1, p0, p1, p2}, Lcom/lge/uicc/ISimPhonebookService;->insertGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 126
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertGroup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertGroup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readEntry(II)Lcom/lge/uicc/SimPhonebookBaseEntry;
    .locals 6
    .param p0, "slot"    # I
    .param p1, "simIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/SimPhonebookBaseManager;->getPbmService()Lcom/lge/uicc/ISimPhonebookService;

    move-result-object v1

    .line 53
    .local v1, "service":Lcom/lge/uicc/ISimPhonebookService;
    if-nez v1, :cond_0

    .line 54
    const-string v3, "SimPhonebookBaseManager"

    const-string v4, "readEntry: service is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :goto_0
    return-object v2

    .line 57
    .restart local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :cond_0
    invoke-interface {v1, p0, p1}, Lcom/lge/uicc/ISimPhonebookService;->readEntry(II)Lcom/lge/uicc/SimPhonebookBaseEntry;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 58
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readEntry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readEntry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readGroup(II)Lcom/lge/uicc/SimPhonebookBaseEntry;
    .locals 6
    .param p0, "slot"    # I
    .param p1, "groupIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 74
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/SimPhonebookBaseManager;->getPbmService()Lcom/lge/uicc/ISimPhonebookService;

    move-result-object v1

    .line 75
    .local v1, "service":Lcom/lge/uicc/ISimPhonebookService;
    if-nez v1, :cond_0

    .line 76
    const-string v3, "SimPhonebookBaseManager"

    const-string v4, "readGroup: service is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :goto_0
    return-object v2

    .line 79
    .restart local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :cond_0
    invoke-interface {v1, p0, p1}, Lcom/lge/uicc/ISimPhonebookService;->readGroup(II)Lcom/lge/uicc/SimPhonebookBaseEntry;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 80
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readGroup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readGroup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 6
    .param p0, "slot"    # I
    .param p1, "simIndex"    # I
    .param p2, "entry"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v2, -0x1

    .line 143
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/SimPhonebookBaseManager;->getPbmService()Lcom/lge/uicc/ISimPhonebookService;

    move-result-object v1

    .line 144
    .local v1, "service":Lcom/lge/uicc/ISimPhonebookService;
    if-nez v1, :cond_0

    .line 145
    const-string v3, "SimPhonebookBaseManager"

    const-string v4, "updateEntry: service is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :goto_0
    return v2

    .line 148
    .restart local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :cond_0
    invoke-interface {v1, p0, p1, p2}, Lcom/lge/uicc/ISimPhonebookService;->updateEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 149
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEntry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEntry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 6
    .param p0, "slot"    # I
    .param p1, "groupIndex"    # I
    .param p2, "group"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v2, -0x1

    .line 166
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/SimPhonebookBaseManager;->getPbmService()Lcom/lge/uicc/ISimPhonebookService;

    move-result-object v1

    .line 167
    .local v1, "service":Lcom/lge/uicc/ISimPhonebookService;
    if-nez v1, :cond_0

    .line 168
    const-string v3, "SimPhonebookBaseManager"

    const-string v4, "updateGroup: service is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :goto_0
    return v2

    .line 171
    .restart local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :cond_0
    invoke-interface {v1, p0, p1, p2}, Lcom/lge/uicc/ISimPhonebookService;->updateGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 172
    .end local v1    # "service":Lcom/lge/uicc/ISimPhonebookService;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateGroup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "SimPhonebookBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateGroup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
