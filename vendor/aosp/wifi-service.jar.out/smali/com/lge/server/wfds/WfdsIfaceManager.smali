.class public Lcom/lge/server/wfds/WfdsIfaceManager;
.super Ljava/lang/Object;
.source "WfdsIfaceManager.java"


# static fields
.field private static sP2pWfdsExtIface:Lcom/lge/server/wfds/P2pWfdsExtIface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/server/wfds/WfdsIfaceManager;->sP2pWfdsExtIface:Lcom/lge/server/wfds/P2pWfdsExtIface;

    .line 13
    new-instance v0, Lcom/lge/server/wfds/P2pWfdsExt;

    invoke-direct {v0}, Lcom/lge/server/wfds/P2pWfdsExt;-><init>()V

    sput-object v0, Lcom/lge/server/wfds/WfdsIfaceManager;->sP2pWfdsExtIface:Lcom/lge/server/wfds/P2pWfdsExtIface;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getP2pWfdsExtIface()Lcom/lge/server/wfds/P2pWfdsExtIface;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/lge/server/wfds/WfdsIfaceManager;->sP2pWfdsExtIface:Lcom/lge/server/wfds/P2pWfdsExtIface;

    return-object v0
.end method
