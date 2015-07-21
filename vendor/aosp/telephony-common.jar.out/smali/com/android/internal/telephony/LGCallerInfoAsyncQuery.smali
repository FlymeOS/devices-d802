.class public Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "LGCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;,
        Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$QueryPoolException;,
        Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final ENABLE_UNKNOWN_NUMBER_GEO_DESCRIPTION:Z = true

.field private static final EVENT_ADD_LISTENER:I = 0x2

.field private static final EVENT_EMERGENCY_NUMBER:I = 0x4

.field private static final EVENT_END_OF_QUEUE:I = 0x3

.field private static final EVENT_N11_NUMBER:I = 0x6

.field private static final EVENT_NEW_QUERY:I = 0x1

.field private static final EVENT_VOICEMAIL_NUMBER:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "LGCallerInfoAsyncQuery"

.field public static inputNumber:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->inputNumber:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    .line 55
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->release()V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;

    .prologue
    .line 587
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 588
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 592
    return-void
.end method

.method static getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    sget-boolean v4, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "LGCallerInfoAsyncQuery"

    const-string v5, "Trying to get current content resolver..."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 126
    .local v0, "currentUser":I
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    .line 128
    .local v2, "myUser":I
    sget-boolean v4, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "LGCallerInfoAsyncQuery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "myUser="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "currentUser="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    if-eq v2, v0, :cond_2

    .line 133
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 135
    .local v3, "otherContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 141
    .end local v3    # "otherContext":Landroid/content/Context;
    :goto_0
    return-object v4

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "LGCallerInfoAsyncQuery"

    const-string v5, "Can\'t find self package"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    goto :goto_0
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$602(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$702(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfoEx;)Lcom/android/internal/telephony/CallerInfoEx;

    .line 601
    iput-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 602
    return-void
.end method

.method private static sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 605
    if-eqz p0, :cond_1

    .line 606
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, "uriString":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 608
    .local v0, "indexOfLastSlash":I
    if-lez v0, :cond_0

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xxxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 614
    .end local v0    # "indexOfLastSlash":I
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    .locals 9
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 412
    new-instance v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    invoke-direct {v8}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;-><init>()V

    .line 413
    .local v8, "c":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    invoke-direct {v8, p1, p2}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 415
    sget-boolean v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LGCallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting query for URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " handler: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;)V

    .line 419
    .local v2, "cw":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 420
    iput-object p4, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 421
    const/4 v0, 0x1

    iput v0, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 423
    iget-object v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p0

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-object v8
.end method

.method public static startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    .locals 8
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 442
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v6

    .local v6, "subId":J
    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 443
    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;J)Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    move-result-object v0

    return-object v0
.end method

.method public static startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;J)Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    .locals 9
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;
    .param p5, "subId"    # J

    .prologue
    .line 461
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "num_len":I
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 462
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->startQueryEx(ILandroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;J)Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    move-result-object v0

    return-object v0
.end method

.method public static startQueryEx(ILandroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    .locals 8
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "num_len"    # I
    .param p4, "listener"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p5, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 469
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v6

    .local v6, "subId":J
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 470
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->startQueryEx(ILandroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;J)Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    move-result-object v0

    return-object v0
.end method

.method public static startQueryEx(ILandroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;J)Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    .locals 16
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "num_len"    # I
    .param p4, "listener"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p5, "cookie"    # Ljava/lang/Object;
    .param p6, "subId"    # J

    .prologue
    .line 480
    sget-boolean v3, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z

    if-eqz v3, :cond_0

    .line 481
    const-string v3, "LGCallerInfoAsyncQuery"

    const-string v4, "##### LGCallerInfoAsyncQuery startQuery()... #####"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v3, "LGCallerInfoAsyncQuery"

    const-string v4, "- number: xxxxxxx"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v3, "LGCallerInfoAsyncQuery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- cookie: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    const/4 v3, 0x0

    const-string v4, "LGE_PHONE_NUMBER_QUERY"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 488
    sput-object p2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->inputNumber:Ljava/lang/String;

    .line 503
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 504
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "sip"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 527
    .local v6, "contactRef":Landroid/net/Uri;
    :goto_0
    sget-boolean v3, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z

    if-eqz v3, :cond_2

    .line 528
    const-string v3, "LGCallerInfoAsyncQuery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> contactRef: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_2
    new-instance v11, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    invoke-direct {v11}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;-><init>()V

    .line 532
    .local v11, "c":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    move-object/from16 v0, p1

    invoke-direct {v11, v0, v6}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 535
    new-instance v5, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;

    const/4 v3, 0x0

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;)V

    .line 536
    .local v5, "cw":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 537
    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 538
    move-object/from16 v0, p2

    iput-object v0, v5, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 539
    move-wide/from16 v0, p6

    iput-wide v0, v5, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->subId:J

    .line 542
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 543
    const/4 v3, 0x4

    iput v3, v5, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 554
    :goto_1
    iget-object v3, v11, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v4, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-object v11

    .line 510
    .end local v5    # "cw":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    .end local v6    # "contactRef":Landroid/net/Uri;
    .end local v11    # "c":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    .line 511
    .local v12, "len":I
    const/4 v13, 0x0

    .line 513
    .local v13, "modifyNumber":Ljava/lang/String;
    move/from16 v0, p3

    if-le v12, v0, :cond_4

    .line 514
    sub-int v3, v12, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 519
    :goto_2
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "sip"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .restart local v6    # "contactRef":Landroid/net/Uri;
    goto :goto_0

    .line 516
    .end local v6    # "contactRef":Landroid/net/Uri;
    :cond_4
    move-object/from16 v13, p2

    goto :goto_2

    .line 544
    .end local v12    # "len":I
    .end local v13    # "modifyNumber":Ljava/lang/String;
    .restart local v5    # "cw":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    .restart local v6    # "contactRef":Landroid/net/Uri;
    .restart local v11    # "c":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    :cond_5
    move-wide/from16 v0, p6

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(JLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 545
    const/4 v3, 0x5

    iput v3, v5, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_1

    .line 547
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/lge/telephony/LGSpecialNumberUtils;->isN11orSpecialNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 548
    const/4 v3, 0x6

    iput v3, v5, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_1

    .line 551
    :cond_7
    const/4 v3, 0x1

    iput v3, v5, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_1
.end method


# virtual methods
.method public addQueryListener(ILcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "listener"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 570
    sget-boolean v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LGCallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding listener to query: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # getter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$400(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " handler: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-virtual {v4}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;)V

    .line 575
    .local v2, "cw":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    iput-object p2, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 576
    iput-object p3, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 577
    const/4 v0, 0x2

    iput v0, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return-void
.end method
