.class Landroid/database/DefaultDatabaseErrorHandler$1;
.super Ljava/lang/Object;
.source "DefaultDatabaseErrorHandler.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/database/DefaultDatabaseErrorHandler;->renameDatabaseFile(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/DefaultDatabaseErrorHandler;

.field final synthetic val$prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/database/DefaultDatabaseErrorHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Landroid/database/DefaultDatabaseErrorHandler$1;->this$0:Landroid/database/DefaultDatabaseErrorHandler;

    iput-object p2, p0, Landroid/database/DefaultDatabaseErrorHandler$1;->val$prefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "candidate"    # Ljava/io/File;

    .prologue
    .line 224
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/database/DefaultDatabaseErrorHandler$1;->val$prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
