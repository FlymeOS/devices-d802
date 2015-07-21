.class public Lcom/lge/internal/telephony/LgeRilApnObserver;
.super Ljava/lang/Object;
.source "LgeRilApnObserver.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String; = "current=1"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/internal/telephony/LgeRilApnObserver;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/internal/telephony/LgeRilApnObserver;->mContext:Landroid/content/Context;

    .line 12
    iput-object p1, p0, Lcom/lge/internal/telephony/LgeRilApnObserver;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method private static writeString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "aStr"    # Ljava/lang/String;

    .prologue
    .line 36
    if-nez p1, :cond_0

    const-string v0, ""

    .line 37
    .local v0, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    return-void

    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 36
    goto :goto_0
.end method


# virtual methods
.method public readApnList(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 17
    iget-object v0, p0, Lcom/lge/internal/telephony/LgeRilApnObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/internal/telephony/LgeRilApnObserver;->PROJECTION:[Ljava/lang/String;

    const-string v3, "current=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 21
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sget-object v1, Lcom/lge/internal/telephony/LgeRilApnObserver;->PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    sget-object v0, Lcom/lge/internal/telephony/LgeRilApnObserver;->PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 25
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lge/internal/telephony/LgeRilApnObserver;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 24
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 29
    .end local v7    # "i":I
    :cond_1
    if-eqz v6, :cond_2

    .line 30
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_2
    return-void
.end method
