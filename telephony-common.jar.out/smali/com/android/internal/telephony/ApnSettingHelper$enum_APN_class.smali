.class final enum Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;
.super Ljava/lang/Enum;
.source "ApnSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ApnSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "enum_APN_class"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

.field public static final enum ENUM_ERROR:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

.field public static final enum ENUM_VZW800:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

.field public static final enum ENUM_VZWADMIN:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

.field public static final enum ENUM_VZWAPP:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

.field public static final enum ENUM_VZWIMS:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

.field public static final enum ENUM_VZWINTERNET:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    const-string v1, "ENUM_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->ENUM_ERROR:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    new-instance v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    const-string v1, "ENUM_VZWIMS"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->ENUM_VZWIMS:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    new-instance v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    const-string v1, "ENUM_VZWADMIN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->ENUM_VZWADMIN:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    new-instance v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    const-string v1, "ENUM_VZWINTERNET"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->ENUM_VZWINTERNET:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    new-instance v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    const-string v1, "ENUM_VZWAPP"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->ENUM_VZWAPP:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    new-instance v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    const-string v1, "ENUM_VZW800"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->ENUM_VZW800:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    sget-object v1, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->ENUM_ERROR:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->ENUM_VZWIMS:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->ENUM_VZWADMIN:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->ENUM_VZWINTERNET:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->ENUM_VZWAPP:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->ENUM_VZW800:Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->$VALUES:[Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->$VALUES:[Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;

    return-object v0
.end method
