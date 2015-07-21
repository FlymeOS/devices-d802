.class public Lcom/lge/wfds/session/AspSession;
.super Ljava/lang/Object;
.source "AspSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wfds/session/AspSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public advertise_id:I

.field public ip_address:Ljava/lang/String;

.field public mNetworkConfig:I

.field public ports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wfds/session/AspServicePort;",
            ">;"
        }
    .end annotation
.end field

.field public reason:I

.field public service_mac:Ljava/lang/String;

.field public session_id:I

.field public session_information:Ljava/lang/String;

.field public session_mac:Ljava/lang/String;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/lge/wfds/session/AspSession$1;

    invoke-direct {v0}, Lcom/lge/wfds/session/AspSession$1;-><init>()V

    sput-object v0, Lcom/lge/wfds/session/AspSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 19
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 20
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->mNetworkConfig:I

    .line 22
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->reason:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->state:I

    .line 24
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "session_mac_"    # Ljava/lang/String;
    .param p2, "session_id_"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 19
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 20
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->mNetworkConfig:I

    .line 22
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->reason:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->state:I

    .line 24
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 66
    iput-object p1, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "session_mac_"    # Ljava/lang/String;
    .param p2, "session_id_"    # I
    .param p3, "reason_"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 19
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 20
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->mNetworkConfig:I

    .line 22
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->reason:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->state:I

    .line 24
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 63
    iput p3, p0, Lcom/lge/wfds/session/AspSession;->reason:I

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "session_mac_"    # Ljava/lang/String;
    .param p2, "session_id_"    # I
    .param p3, "advertise_id_"    # I
    .param p4, "session_information_"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wfds/session/AspServicePort;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "ports_":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wfds/session/AspServicePort;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 19
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 20
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->mNetworkConfig:I

    .line 22
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->reason:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->state:I

    .line 24
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 41
    iput p3, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 42
    iput-object p4, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "session_mac_"    # Ljava/lang/String;
    .param p2, "session_id_"    # I
    .param p3, "ip_address_"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 19
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 20
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->mNetworkConfig:I

    .line 22
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->reason:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->state:I

    .line 24
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 57
    iput-object p3, p0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p1, "service_mac_"    # Ljava/lang/String;
    .param p2, "session_mac_"    # Ljava/lang/String;
    .param p3, "session_id_"    # I
    .param p4, "advertise_id_"    # I
    .param p5, "session_information_"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 19
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 20
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->mNetworkConfig:I

    .line 22
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->reason:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->state:I

    .line 24
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 50
    iput p4, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 51
    iput-object p5, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 3
    .param p1, "service_mac_"    # Ljava/lang/String;
    .param p2, "session_mac_"    # Ljava/lang/String;
    .param p3, "session_id_"    # I
    .param p4, "advertise_id_"    # I
    .param p5, "session_information_"    # Ljava/lang/String;
    .param p6, "networkConfig"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 19
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 20
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->mNetworkConfig:I

    .line 22
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->reason:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->state:I

    .line 24
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 74
    iput p3, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 75
    iput p4, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 76
    iput-object p5, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 77
    iput p6, p0, Lcom/lge/wfds/session/AspSession;->mNetworkConfig:I

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "service_mac_"    # Ljava/lang/String;
    .param p2, "session_mac_"    # Ljava/lang/String;
    .param p3, "session_id_"    # I
    .param p4, "advertise_id_"    # I
    .param p5, "session_information_"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wfds/session/AspServicePort;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "ports_":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wfds/session/AspServicePort;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 19
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 20
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->mNetworkConfig:I

    .line 22
    iput v2, p0, Lcom/lge/wfds/session/AspSession;->reason:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->state:I

    .line 24
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 33
    iput p4, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 34
    iput-object p5, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_0

    .line 158
    const-string v0, "UNKNOWN[%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 150
    :pswitch_0
    const-string v0, "OPEN"

    goto :goto_0

    .line 152
    :pswitch_1
    const-string v0, "INITIATED"

    goto :goto_0

    .line 154
    :pswitch_2
    const-string v0, "REQUESTED"

    goto :goto_0

    .line 156
    :pswitch_3
    const-string v0, "CLOSED"

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addPort(II)V
    .locals 4
    .param p1, "port"    # I
    .param p2, "proto"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    new-instance v1, Lcom/lge/wfds/session/AspServicePort;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lge/wfds/session/AspServicePort;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public addPort(Lcom/lge/wfds/session/AspServicePort;)V
    .locals 1
    .param p1, "port"    # Lcom/lge/wfds/session/AspServicePort;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public generateSessionId()I
    .locals 3

    .prologue
    .line 118
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 119
    .local v0, "random":Ljava/util/Random;
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 121
    .local v1, "sessionId":I
    iput v1, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 123
    return v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 189
    return-void
.end method

.method public set(Lcom/lge/wfds/session/AspSession;)V
    .locals 1
    .param p1, "dest"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    .line 107
    iget-object v0, p1, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 109
    iget v0, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 110
    iget v0, p1, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 111
    iget v0, p1, Lcom/lge/wfds/session/AspSession;->reason:I

    iput v0, p0, Lcom/lge/wfds/session/AspSession;->reason:I

    .line 112
    iget-object v0, p1, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 113
    iget-object v0, p1, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 115
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip_address_"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state_"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/lge/wfds/session/AspSession;->state:I

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 127
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const-string v3, "0x%08x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "adr_id":Ljava/lang/String;
    const-string v3, "Session Information"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v3, "\n Service Mac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v3, "\n Session Mac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v3, "\n Session Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 133
    const-string v3, "\n Adv Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v3, "\n Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/lge/wfds/session/AspSession;->reason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 135
    const-string v3, "\n State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/lge/wfds/session/AspSession;->state:I

    invoke-direct {p0, v4}, Lcom/lge/wfds/session/AspSession;->getStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v3, "\n IP addr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v3, "\n Session Info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    iget-object v3, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    .local v1, "it_port":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspServicePort;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    const-string v3, "\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/wfds/session/AspServicePort;

    invoke-virtual {v3}, Lcom/lge/wfds/session/AspServicePort;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 144
    .end local v1    # "it_port":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspServicePort;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget v0, p0, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Lcom/lge/wfds/session/AspSession;->reason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/lge/wfds/session/AspSession;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/lge/wfds/session/AspServicePort;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 185
    :cond_0
    return-void
.end method
