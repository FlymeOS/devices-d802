.class final enum Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;
.super Ljava/lang/Enum;
.source "WifiHostapdApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WifiQsapAclListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

.field public static final enum LIST_TYPE_BLACK:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

.field public static final enum LIST_TYPE_WHITE:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    const-string v1, "LIST_TYPE_BLACK"

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->LIST_TYPE_BLACK:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    .line 31
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    const-string v1, "LIST_TYPE_WHITE"

    invoke-direct {v0, v1, v3}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->LIST_TYPE_WHITE:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->LIST_TYPE_BLACK:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->LIST_TYPE_WHITE:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    return-object v0
.end method

.method public static values()[Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    invoke-virtual {v0}, [Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    return-object v0
.end method
