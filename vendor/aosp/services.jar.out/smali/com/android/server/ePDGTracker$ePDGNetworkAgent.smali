.class Lcom/android/server/ePDGTracker$ePDGNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "ePDGTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ePDGNetworkAgent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/ePDGTracker;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .locals 8
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "ni"    # Landroid/net/NetworkInfo;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "lp"    # Landroid/net/LinkProperties;
    .param p8, "score"    # I

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/server/ePDGTracker$ePDGNetworkAgent;->this$0:Lcom/android/server/ePDGTracker;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    .line 327
    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    .line 328
    return-void
.end method


# virtual methods
.method protected unwanted()V
    .locals 1

    .prologue
    .line 332
    const-string v0, "[ePDG] released network agent.."

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker$ePDGNetworkAgent;->log(Ljava/lang/String;)V

    .line 333
    return-void
.end method
