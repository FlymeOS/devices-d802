.class Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$2;
.super Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback$Stub;
.source "LGBleQuietmodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;


# direct methods
.method constructor <init>(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$2;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    invoke-direct {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBleQuietmodeState(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "erroCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBleQuietmodeState:  state =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$2;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    # invokes: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->updateBleQuietmodeCallback(II)V
    invoke-static {v0, p1, p2}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$500(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;II)V

    .line 217
    return-void
.end method
