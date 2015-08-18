.class public final enum Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
.super Ljava/lang/Enum;
.source "LGDataPhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataPhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LteStateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum EMERGENCY_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum EMERGENCY_DETACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum IMSI_DETACH_MT_DETACH:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum NONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum NORMAL_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum NORMAL_DETACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum REATTACH_NOT_REQUIURED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum REATTACH_REQUIRED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum RESERVED_MT_DETACH_TYPE_ONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum RESERVED_MT_DETACH_TYPE_TWO:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field private static final sLteStateInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 159
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const-string v5, "NONE"

    invoke-direct {v4, v5, v8, v8}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 160
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const-string v5, "NORMAL_DETACHED"

    invoke-direct {v4, v5, v9, v9}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NORMAL_DETACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 161
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const-string v5, "EMERGENCY_ATTACHED"

    invoke-direct {v4, v5, v10, v10}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->EMERGENCY_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 162
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const-string v5, "NORMAL_ATTACHED"

    invoke-direct {v4, v5, v11, v11}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NORMAL_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 163
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const-string v5, "EMERGENCY_DETACHED"

    invoke-direct {v4, v5, v12, v12}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->EMERGENCY_DETACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 165
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const-string v5, "REATTACH_REQUIRED"

    const/4 v6, 0x5

    const/16 v7, 0xb

    invoke-direct {v4, v5, v6, v7}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->REATTACH_REQUIRED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 166
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const-string v5, "REATTACH_NOT_REQUIURED"

    const/4 v6, 0x6

    const/16 v7, 0xc

    invoke-direct {v4, v5, v6, v7}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->REATTACH_NOT_REQUIURED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 167
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const-string v5, "IMSI_DETACH_MT_DETACH"

    const/4 v6, 0x7

    const/16 v7, 0xd

    invoke-direct {v4, v5, v6, v7}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->IMSI_DETACH_MT_DETACH:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 168
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const-string v5, "RESERVED_MT_DETACH_TYPE_ONE"

    const/16 v6, 0x8

    const/16 v7, 0x10

    invoke-direct {v4, v5, v6, v7}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->RESERVED_MT_DETACH_TYPE_ONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 169
    new-instance v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const-string v5, "RESERVED_MT_DETACH_TYPE_TWO"

    const/16 v6, 0x9

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->RESERVED_MT_DETACH_TYPE_TWO:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 158
    const/16 v4, 0xa

    new-array v4, v4, [Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v5, v4, v8

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NORMAL_DETACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v5, v4, v9

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->EMERGENCY_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v5, v4, v10

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NORMAL_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v5, v4, v11

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->EMERGENCY_DETACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v5, v4, v12

    const/4 v5, 0x5

    sget-object v6, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->REATTACH_REQUIRED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->REATTACH_NOT_REQUIURED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->IMSI_DETACH_MT_DETACH:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->RESERVED_MT_DETACH_TYPE_ONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    sget-object v6, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->RESERVED_MT_DETACH_TYPE_TWO:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v6, v4, v5

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 174
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->sLteStateInfoMap:Ljava/util/HashMap;

    .line 175
    invoke-static {}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->values()[Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 176
    .local v3, "lsi":Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
    sget-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->sLteStateInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "lsi":Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 181
    iput p3, p0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->mCode:I

    .line 182
    return-void
.end method

.method public static fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
    .locals 3
    .param p0, "code"    # I

    .prologue
    .line 189
    sget-object v1, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->sLteStateInfoMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 190
    .local v0, "lsi":Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
    if-nez v0, :cond_0

    .line 191
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 193
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    const-class v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    return-object v0
.end method

.method public static values()[Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    invoke-virtual {v0}, [Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->mCode:I

    return v0
.end method
