.class public Lcom/lge/wapservice/push/PushOpCfgManager;
.super Ljava/lang/Object;
.source "PushOpCfgManager.java"


# static fields
.field private static METHOD_COPY_HREF:I

.field private static METHOD_NULL_ACCEPT:I

.field private static METHOD_NULL_REJECT:I

.field private static METHOD_USE_DEFAULT_CONTENT:I

.field private static OFF:I

.field private static ON:I

.field private static PUSH_ACTION_INDICATOR:I

.field private static PUSH_ACTION_LAUNCHING_BROWSER:I

.field private static PUSH_ACTION_SOUND:I

.field private static PUSH_ACTION_VIBRATION:I

.field private static PUSH_SL_ALWAYS:I

.field private static PUSH_SL_DISABLE:I

.field private static PUSH_SL_PROMPT:I

.field private static sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;


# instance fields
.field private mOpIntCfgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lge/wapservice/push/PushOpCfgItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOpStrCfgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lge/wapservice/push/PushOpCfgItem;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    .line 30
    sput v2, Lcom/lge/wapservice/push/PushOpCfgManager;->ON:I

    .line 31
    sput v1, Lcom/lge/wapservice/push/PushOpCfgManager;->OFF:I

    .line 32
    const/16 v0, 0xa

    sput v0, Lcom/lge/wapservice/push/PushOpCfgManager;->METHOD_NULL_ACCEPT:I

    .line 33
    const/16 v0, 0x14

    sput v0, Lcom/lge/wapservice/push/PushOpCfgManager;->METHOD_NULL_REJECT:I

    .line 34
    const/16 v0, 0x1e

    sput v0, Lcom/lge/wapservice/push/PushOpCfgManager;->METHOD_USE_DEFAULT_CONTENT:I

    .line 35
    const/16 v0, 0x28

    sput v0, Lcom/lge/wapservice/push/PushOpCfgManager;->METHOD_COPY_HREF:I

    .line 36
    const/high16 v0, 0x10000

    sput v0, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_INDICATOR:I

    .line 37
    const/high16 v0, 0x20000

    sput v0, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_SOUND:I

    .line 38
    const/high16 v0, 0x40000

    sput v0, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_VIBRATION:I

    .line 39
    const/high16 v0, 0x80000

    sput v0, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_LAUNCHING_BROWSER:I

    .line 40
    sput v1, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_SL_ALWAYS:I

    .line 41
    sput v2, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_SL_PROMPT:I

    .line 42
    const/4 v0, 0x2

    sput v0, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_SL_DISABLE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpStrCfgMap:Ljava/util/HashMap;

    .line 52
    return-void
.end method

.method private addATTCfgItems()V
    .locals 3

    .prologue
    .line 189
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_SL_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->OFF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_CHECK_EXPLICITYLY_CREATE_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->ON:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method private addBellCfgItems()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method private addCRKCfgItems()V
    .locals 3

    .prologue
    .line 245
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_SL_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->OFF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_CHECK_EXPLICITYLY_CREATE_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->ON:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method

.method private addCommonCfgItems()V
    .locals 4

    .prologue
    .line 136
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_SIID:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->METHOD_NULL_ACCEPT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_HREF:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->METHOD_NULL_ACCEPT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_CONTENT:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->METHOD_USE_DEFAULT_CONTENT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_VALIDATING_CREATED_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->OFF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_VALIDATING_EXPIRE_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->ON:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_ACCEPTING_SIGNAL_NONE_MESSAGE:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->OFF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_ACCEPTING_NULL_CREATED_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->ON:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_NONE:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_INDICATOR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_LOW:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_INDICATOR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_MEDIUM:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_INDICATOR:I

    sget v3, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_SOUND:I

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_HIGH:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_INDICATOR:I

    sget v3, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_SOUND:I

    or-int/2addr v2, v3

    sget v3, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_VIBRATION:I

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_EXECUTE_LOW:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_INDICATOR:I

    sget v3, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_SOUND:I

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_EXECUTE_HIGH:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_INDICATOR:I

    sget v3, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_SOUND:I

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_SL_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->ON:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_PUSH_SL_CACHE:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->OFF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_CHECK_EXPLICITYLY_CREATE_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->OFF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_RECV_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->ON:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_UNMATCH_UPDATE_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->OFF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_BLACK_LIST_FUNCTION_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->OFF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_WHITE_LIST_FUNCTION_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->OFF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_SL_OPTION_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_SL_ALWAYS:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method private addDefaultCfgItems()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method private addH3GCfgItems()V
    .locals 3

    .prologue
    .line 178
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_ACCEPTING_SIGNAL_NONE_MESSAGE:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->ON:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method private addO2CfgItems()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method private addOPENCfgItems()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method private addORGCfgItems()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method private addOpCfgItems()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addCommonCfgItems()V

    .line 75
    invoke-static {}, Lcom/lge/wapservice/utils/LocaleManager;->getOperator()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :pswitch_0
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addDefaultCfgItems()V

    .line 132
    :goto_0
    return-void

    .line 77
    :pswitch_1
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addVDFCfgItems()V

    goto :goto_0

    .line 80
    :pswitch_2
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addTMOCfgItems()V

    goto :goto_0

    .line 83
    :pswitch_3
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addORGCfgItems()V

    goto :goto_0

    .line 86
    :pswitch_4
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addH3GCfgItems()V

    goto :goto_0

    .line 89
    :pswitch_5
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addTIMCfgItems()V

    goto :goto_0

    .line 92
    :pswitch_6
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addATTCfgItems()V

    goto :goto_0

    .line 95
    :pswitch_7
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addRogersCfgItems()V

    goto :goto_0

    .line 98
    :pswitch_8
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addTelusCfgItems()V

    goto :goto_0

    .line 101
    :pswitch_9
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addVivoCfgItems()V

    goto :goto_0

    .line 104
    :pswitch_a
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addTLFCfgItems()V

    goto :goto_0

    .line 107
    :pswitch_b
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addTelstraCfgItems()V

    goto :goto_0

    .line 110
    :pswitch_c
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addBellCfgItems()V

    goto :goto_0

    .line 113
    :pswitch_d
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addOPENCfgItems()V

    goto :goto_0

    .line 116
    :pswitch_e
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addO2CfgItems()V

    goto :goto_0

    .line 120
    :pswitch_f
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addTRFCfgItems()V

    goto :goto_0

    .line 125
    :pswitch_10
    invoke-direct {p0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addCRKCfgItems()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method private addRogersCfgItems()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method private addTIMCfgItems()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method private addTLFCfgItems()V
    .locals 4

    .prologue
    .line 213
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_EXECUTE_HIGH:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_INDICATOR:I

    sget v3, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_SOUND:I

    or-int/2addr v2, v3

    sget v3, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_LAUNCHING_BROWSER:I

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method private addTMOCfgItems()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method private addTRFCfgItems()V
    .locals 3

    .prologue
    .line 239
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_SL_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->OFF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method private addTelstraCfgItems()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method private addTelusCfgItems()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method private addVDFCfgItems()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method private addVivoCfgItems()V
    .locals 4

    .prologue
    .line 206
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_EXECUTE_HIGH:Lcom/lge/wapservice/push/PushOpCfgItem;

    sget v2, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_INDICATOR:I

    sget v3, Lcom/lge/wapservice/push/PushOpCfgManager;->PUSH_ACTION_SOUND:I

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public static declared-synchronized getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I
    .locals 2
    .param p0, "item"    # Lcom/lge/wapservice/push/PushOpCfgItem;

    .prologue
    .line 55
    const-class v1, Lcom/lge/wapservice/push/PushOpCfgManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/lge/wapservice/push/PushOpCfgManager;

    invoke-direct {v0}, Lcom/lge/wapservice/push/PushOpCfgManager;-><init>()V

    sput-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    .line 57
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    invoke-direct {v0}, Lcom/lge/wapservice/push/PushOpCfgManager;->addOpCfgItems()V

    .line 60
    :cond_0
    sget-object v0, Lcom/lge/wapservice/push/PushOpCfgManager;->sPushOpCfgManager:Lcom/lge/wapservice/push/PushOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/push/PushOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
