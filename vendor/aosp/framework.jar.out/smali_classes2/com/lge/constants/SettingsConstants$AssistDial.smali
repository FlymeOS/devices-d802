.class public final Lcom/lge/constants/SettingsConstants$AssistDial;
.super Ljava/lang/Object;
.source "SettingsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/constants/SettingsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistDial"
.end annotation


# static fields
.field public static final AREA:Ljava/lang/String; = "area"

.field public static final COUNTRYCODE:Ljava/lang/String; = "countrycode"

.field public static final COUNTRYINDEX:Ljava/lang/String; = "countryindex"

.field public static final COUNTRYNAME:Ljava/lang/String; = "countryname"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "countryindex ASC"

.field public static final IDDPREFIX:Ljava/lang/String; = "iddprefix"

.field public static final LENGTH:Ljava/lang/String; = "length"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final NANP:Ljava/lang/String; = "nanp"

.field public static final NDDPREFIX:Ljava/lang/String; = "nddprefix"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "assist_dial"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4175
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "countryindex"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "countryname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "countrycode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "iddprefix"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "nddprefix"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "nanp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "area"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "length"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/constants/SettingsConstants$AssistDial;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
