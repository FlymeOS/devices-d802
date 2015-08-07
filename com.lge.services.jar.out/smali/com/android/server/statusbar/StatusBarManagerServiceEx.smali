.class public Lcom/android/server/statusbar/StatusBarManagerServiceEx;
.super Lcom/android/server/statusbar/StatusBarManagerService;
.source "StatusBarManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarManagerServiceEx$1;,
        Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;,
        Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    }
.end annotation


# static fields
.field private static final SPEW:Z = true

.field private static final TAG:Ljava/lang/String; = "StatusBarManagerServiceEx"


# instance fields
.field private volatile mBarEx:Lcom/lge/internal/statusbar/IStatusBarEx;

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledNaviBtn:I

.field private mExtendedBinder:Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;

.field private mLastNavigationBarColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 31
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mBarEx:Lcom/lge/internal/statusbar/IStatusBarEx;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisableRecords:Ljava/util/ArrayList;

    .line 34
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisabledNaviBtn:I

    .line 35
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mLastNavigationBarColor:I

    .line 50
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mExtendedBinder:Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;

    .line 55
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;

    invoke-direct {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/statusbar/StatusBarManagerServiceEx;Lcom/android/server/statusbar/StatusBarManagerServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mExtendedBinder:Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/statusbar/StatusBarManagerServiceEx;IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerServiceEx;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/IBinder;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->disableNaviBtnInternal(IILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/statusbar/StatusBarManagerServiceEx;)Lcom/lge/internal/statusbar/IStatusBarEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mBarEx:Lcom/lge/internal/statusbar/IStatusBarEx;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/statusbar/StatusBarManagerServiceEx;Lcom/lge/internal/statusbar/IStatusBarEx;)Lcom/lge/internal/statusbar/IStatusBarEx;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerServiceEx;
    .param p1, "x1"    # Lcom/lge/internal/statusbar/IStatusBarEx;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mBarEx:Lcom/lge/internal/statusbar/IStatusBarEx;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/statusbar/StatusBarManagerServiceEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mLastNavigationBarColor:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/statusbar/StatusBarManagerServiceEx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerServiceEx;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mLastNavigationBarColor:I

    return p1
.end method

.method private disableNaviBtnInternal(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->enforceStatusBar()V

    .line 134
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->disableNaviBtnLocked(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private disableNaviBtnLocked(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->manageNaviBtnDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 142
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->gatherNaviBtnDisableActionsLocked(I)I

    move-result v0

    .line 143
    .local v0, "net":I
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisabledNaviBtn:I

    if-eq v0, v1, :cond_0

    .line 144
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisabledNaviBtn:I

    .line 146
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mBarEx:Lcom/lge/internal/statusbar/IStatusBarEx;

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mBarEx:Lcom/lge/internal/statusbar/IStatusBarEx;

    invoke-interface {v1, v0}, Lcom/lge/internal/statusbar/IStatusBarEx;->disableNaviBtn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    const-string v1, "SystemUI[Framework]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==>disabledNaviBtn() what=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->dumpDisabledNaviBtn()V

    .line 156
    return-void

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private dumpDisabledNaviBtn()V
    .locals 6

    .prologue
    .line 252
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 253
    .local v0, "count":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableNaviBtn: mDisabledNaviBtn=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisabledNaviBtn:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  mDisableRecords.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
    .local v2, "logMsg":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 258
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;

    .line 259
    .local v3, "tok":Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n  ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", what=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v3    # "tok":Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    :cond_0
    const-string v4, "SystemUI[Framework]"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 238
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisabledNaviBtn=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisabledNaviBtn:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 240
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisableRecords.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 242
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;

    .line 243
    .local v2, "tok":Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] userId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " what=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pkg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " token="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    .end local v2    # "tok":Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    :cond_1
    monitor-exit v4

    goto/16 :goto_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method gatherNaviBtnDisableActionsLocked(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 217
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 219
    .local v0, "N":I
    const/4 v2, 0x0

    .line 220
    .local v2, "net":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 221
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;

    .line 222
    .local v3, "rec":Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->userId:I

    if-ne v4, p1, :cond_0

    .line 223
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->what:I

    or-int/2addr v2, v4

    .line 220
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v3    # "rec":Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    :cond_1
    return v2
.end method

.method manageNaviBtnDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 179
    const-string v5, "StatusBarManagerServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "manageNaviBtnDisableList userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " what=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 184
    .local v0, "N":I
    const/4 v4, 0x0

    .line 186
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 187
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;

    .line 188
    .local v3, "t":Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    iget-object v5, v3, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->token:Landroid/os/IBinder;

    if-ne v5, p3, :cond_3

    iget v5, v3, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->userId:I

    if-ne v5, p1, :cond_3

    .line 189
    move-object v4, v3

    .line 193
    .end local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-nez v5, :cond_4

    .line 194
    :cond_1
    if-eqz v4, :cond_2

    .line 195
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    iget-object v5, v4, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v4, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 214
    :cond_2
    :goto_1
    return-void

    .line 186
    .restart local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    :cond_4
    if-nez v4, :cond_5

    .line 200
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;

    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerServiceEx;Lcom/android/server/statusbar/StatusBarManagerServiceEx$1;)V

    .line 201
    .restart local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;
    iput p1, v4, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->userId:I

    .line 203
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_5
    iput p2, v4, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->what:I

    .line 211
    iput-object p3, v4, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->token:Landroid/os/IBinder;

    .line 212
    iput-object p4, v4, Lcom/android/server/statusbar/StatusBarManagerServiceEx$NaviBtnDisableRecord;->pkg:Ljava/lang/String;

    goto :goto_1

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "originatedBinderDescName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mExtendedBinder:Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2}, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mExtendedBinder:Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 69
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0
.end method

.method public setSystemUiVisibility(II)V
    .locals 5
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->setSystemUiVisibility(II)V

    .line 162
    invoke-static {}, Lcom/lge/view/WindowManagerHelper;->getLGSystemUiVisibility()I

    move-result p1

    .line 165
    const-string v0, "StatusBarManagerServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLGSystemUiVisibility(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mCurrentUserId:I

    const v2, 0x70007

    and-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mSysUiVisToken:Landroid/os/IBinder;

    const-string v4, "WindowManager.LayoutParams"

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->disableNaviBtnLocked(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 174
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
