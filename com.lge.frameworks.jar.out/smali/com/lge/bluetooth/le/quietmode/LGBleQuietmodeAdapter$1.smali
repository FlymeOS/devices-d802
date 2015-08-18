.class Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$1;
.super Ljava/lang/Object;
.source "LGBleQuietmodeAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 170
    iput-object p1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$1;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 172
    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quietmode onServiceConnected() name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$1;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    # invokes: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->init(Landroid/os/IBinder;)Z
    invoke-static {v0, p2}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$100(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to create adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_1
    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sAdapter:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$200()Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$1;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mAdapterProxyCallback:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;
    invoke-static {v0}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$300(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;)Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$1;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mAdapterProxyCallback:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;
    invoke-static {v0}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$300(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;)Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;

    move-result-object v0

    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$200()Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;->onAdapterAvailable(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;)V

    .line 180
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$1;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mAdapterProxyCallback:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;
    invoke-static {v0, v1}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$302(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;)Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;

    .line 182
    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 185
    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Quietmode object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    # setter for: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;
    invoke-static {v0}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$402(Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;)Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    .line 187
    return-void
.end method
