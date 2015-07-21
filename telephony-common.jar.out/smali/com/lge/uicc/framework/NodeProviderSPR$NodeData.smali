.class public final Lcom/lge/uicc/framework/NodeProviderSPR$NodeData;
.super Ljava/lang/Object;
.source "NodeProviderSPR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/NodeProviderSPR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NodeData"
.end annotation


# static fields
.field public static final NODE_KEY:Ljava/lang/String; = "key"

.field public static final NODE_VALUE:Ljava/lang/String; = "value"

.field public static final TABLE_NAME:Ljava/lang/String; = "omadm_node"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
