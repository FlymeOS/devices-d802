.class public final Landroid/provider/Telephony;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$Fota;,
        Landroid/provider/Telephony$DelMms;,
        Landroid/provider/Telephony$DeleteSms;,
        Landroid/provider/Telephony$FreqPhrase;,
        Landroid/provider/Telephony$SpamNum;,
        Landroid/provider/Telephony$SpamStr;,
        Landroid/provider/Telephony$CellBroadcasts;,
        Landroid/provider/Telephony$Carriers;,
        Landroid/provider/Telephony$MmsSms;,
        Landroid/provider/Telephony$Mms;,
        Landroid/provider/Telephony$Threads;,
        Landroid/provider/Telephony$ThreadsColumns;,
        Landroid/provider/Telephony$CanonicalAddressesColumns;,
        Landroid/provider/Telephony$BaseMmsColumns;,
        Landroid/provider/Telephony$Sms;,
        Landroid/provider/Telephony$TextBasedSmsColumns;,
        Landroid/provider/Telephony$TextBasedLGEInboxColumns;,
        Landroid/provider/Telephony$TextBasedLGESmsColumns;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LGE_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

.field private static final PRIVACY_ENABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "Telephony"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "[a-zA-Z0-9\\+\\.\\_\\%\\-\\&\\!\\#\\$\\\'\\*\\/\\=\\?\\^\\`\\{\\|\\}\\~\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony;->LGE_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Landroid/provider/Telephony;->LGE_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    return-object v0
.end method
