.class public Lcom/android/nfc/MDMNfcServiceAdapter;
.super Ljava/lang/Object;
.source "MDMNfcServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;
    }
.end annotation


# static fields
.field private static final LGE_FRAMEWORK_RESOURCE_STRING_CLASS_NAME:Ljava/lang/String; = "com.lge.internal.R$string"

.field public static final MSG_NFC_CARDONLY:I = 0xb

.field public static final MSG_NFC_DISALLOW:I = 0xa

.field public static final MSG_NFC_P2P_DISALLOW:I = 0xc

.field private static TAG:Ljava/lang/String;

.field private static mHandler:Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;

.field private static mInstance:Lcom/android/nfc/MDMNfcServiceAdapter;

.field private static mLgeFrameworkString:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "MDMNfcServiceAdapter"

    sput-object v0, Lcom/android/nfc/MDMNfcServiceAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_0
    const-string v2, "com.lge.internal.R$string"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/android/nfc/MDMNfcServiceAdapter;->mLgeFrameworkString:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/nfc/MDMNfcServiceAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/MDMNfcServiceAdapter$1;-><init>(Lcom/android/nfc/MDMNfcServiceAdapter;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 51
    return-void

    .line 36
    .end local v1    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "MDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/nfc/MDMNfcServiceAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": ClassNotFoundException - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.lge.internal.R$string"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v2, 0x0

    sput-object v2, Lcom/android/nfc/MDMNfcServiceAdapter;->mLgeFrameworkString:Ljava/lang/Class;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;)Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;

    .prologue
    .line 19
    sput-object p0, Lcom/android/nfc/MDMNfcServiceAdapter;->mHandler:Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/nfc/MDMNfcServiceAdapter;->mLgeFrameworkString:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/android/nfc/MDMNfcServiceAdapter;->getField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/nfc/MDMNfcServiceAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkAndroidBeamDisallowed(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowAndroidBeam(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const-string v0, "MDM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/nfc/MDMNfcServiceAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": checkAndroidBeamDisallowed, disallow P2P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/android/nfc/MDMNfcServiceAdapter;->sendMDMMessage(ILjava/lang/Object;)V

    .line 125
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkNfcCardModeOnly(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowNfc(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 113
    const-string v0, "MDM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/nfc/MDMNfcServiceAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": checkNfcCardModeOnly, policy is card only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/nfc/MDMNfcServiceAdapter;->sendMDMMessage(ILjava/lang/Object;)V

    .line 115
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkNfcDisallowed(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowNfc(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const-string v0, "MDM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/nfc/MDMNfcServiceAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": checkNfcAllowed, disallow nfc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/nfc/MDMNfcServiceAdapter;->sendMDMMessage(ILjava/lang/Object;)V

    .line 105
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkflag(II)Z
    .locals 1
    .param p0, "nfcstatus"    # I
    .param p1, "flag"    # I

    .prologue
    .line 158
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "classObject":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 163
    :cond_0
    const/4 v2, -0x1

    .line 173
    :goto_0
    return v2

    .line 167
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 168
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "ret":I
    goto :goto_0

    .line 169
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "ret":I
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MDM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getField - name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v2, -0x1

    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/nfc/MDMNfcServiceAdapter;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/nfc/MDMNfcServiceAdapter;->mInstance:Lcom/android/nfc/MDMNfcServiceAdapter;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/nfc/MDMNfcServiceAdapter;

    invoke-direct {v0}, Lcom/android/nfc/MDMNfcServiceAdapter;-><init>()V

    sput-object v0, Lcom/android/nfc/MDMNfcServiceAdapter;->mInstance:Lcom/android/nfc/MDMNfcServiceAdapter;

    .line 98
    :cond_0
    sget-object v0, Lcom/android/nfc/MDMNfcServiceAdapter;->mInstance:Lcom/android/nfc/MDMNfcServiceAdapter;

    return-object v0
.end method

.method public static isNfcAllowed(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nfcstatus"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    invoke-static {}, Lcom/android/nfc/MDMNfcServiceAdapter;->getInstance()Lcom/android/nfc/MDMNfcServiceAdapter;

    move-result-object v0

    .line 138
    .local v0, "adapter":Lcom/android/nfc/MDMNfcServiceAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/nfc/MDMNfcServiceAdapter;->isCAPPMDMFlag()Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    invoke-direct {v0, p0}, Lcom/android/nfc/MDMNfcServiceAdapter;->checkNfcDisallowed(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 143
    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {v0, p0}, Lcom/android/nfc/MDMNfcServiceAdapter;->checkNfcCardModeOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    const/4 v3, 0x4

    invoke-static {p1, v3}, Lcom/android/nfc/MDMNfcServiceAdapter;->checkflag(II)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1, v4}, Lcom/android/nfc/MDMNfcServiceAdapter;->checkflag(II)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 150
    :cond_4
    invoke-static {p1, v4}, Lcom/android/nfc/MDMNfcServiceAdapter;->checkflag(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {v0, p0}, Lcom/android/nfc/MDMNfcServiceAdapter;->checkAndroidBeamDisallowed(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 151
    goto :goto_0
.end method

.method private sendMDMMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 88
    sget-object v1, Lcom/android/nfc/MDMNfcServiceAdapter;->mHandler:Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 90
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/android/nfc/MDMNfcServiceAdapter;->mHandler:Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    return-void
.end method


# virtual methods
.method public isCAPPMDMFlag()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    return v0
.end method
