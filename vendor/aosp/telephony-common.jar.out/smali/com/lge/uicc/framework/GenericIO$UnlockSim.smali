.class Lcom/lge/uicc/framework/GenericIO$UnlockSim;
.super Ljava/lang/Object;
.source "GenericIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/GenericIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockSim"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/GenericIO;


# direct methods
.method private constructor <init>(Lcom/lge/uicc/framework/GenericIO;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lge/uicc/framework/GenericIO$UnlockSim;->this$0:Lcom/lge/uicc/framework/GenericIO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/uicc/framework/GenericIO;Lcom/lge/uicc/framework/GenericIO$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/uicc/framework/GenericIO;
    .param p2, "x1"    # Lcom/lge/uicc/framework/GenericIO$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/GenericIO$UnlockSim;-><init>(Lcom/lge/uicc/framework/GenericIO;)V

    return-void
.end method


# virtual methods
.method public supplyPinPukRemote([B)[B
    .locals 11
    .param p1, "data"    # [B

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 118
    if-nez p1, :cond_0

    .line 119
    const-string v7, "supplyPinPuk: no inputs"

    # invokes: Lcom/lge/uicc/framework/GenericIO;->loge(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/lge/uicc/framework/GenericIO;->access$100(Ljava/lang/String;)V

    move-object v7, v9

    .line 146
    :goto_0
    return-object v7

    .line 123
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 124
    .local v1, "p":Landroid/os/Parcel;
    array-length v10, p1

    invoke-virtual {v1, p1, v7, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 125
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 128
    .local v6, "subscription":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "puk":Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v5

    .line 131
    .local v5, "ril":Lcom/android/internal/telephony/RIL;
    if-eqz v2, :cond_1

    if-nez v5, :cond_2

    .line 132
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : pin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ril="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/lge/uicc/framework/GenericIO;->loge(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/lge/uicc/framework/GenericIO;->access$100(Ljava/lang/String;)V

    move-object v7, v9

    .line 133
    goto :goto_0

    .line 136
    :cond_2
    new-instance v0, Lcom/lge/uicc/framework/AsyncResultFetcher;

    invoke-direct {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;-><init>()V

    .line 138
    .local v0, "fetcher":Lcom/lge/uicc/framework/AsyncResultFetcher;
    if-nez v3, :cond_3

    .line 139
    invoke-virtual {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v5, v2, v9}, Lcom/android/internal/telephony/RIL;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 143
    :goto_1
    invoke-virtual {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->waitResponse()Z

    .line 144
    invoke-virtual {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->getException()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_4

    move v4, v7

    .line 146
    .local v4, "result":I
    :goto_2
    new-array v8, v8, [B

    int-to-byte v9, v4

    aput-byte v9, v8, v7

    move-object v7, v8

    goto :goto_0

    .line 141
    .end local v4    # "result":I
    :cond_3
    invoke-virtual {v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v5, v3, v2, v9}, Lcom/android/internal/telephony/RIL;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    :cond_4
    move v4, v8

    .line 144
    goto :goto_2
.end method
