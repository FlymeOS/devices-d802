.class public Lcom/lge/loader/interaction/InteractionManagerCreator;
.super Lcom/lge/loader/InstanceCreator;
.source "InteractionManagerCreator.java"


# static fields
.field private static INTERACTION_MANAGER_CLASS:Ljava/lang/String;

.field private static INTERACTION_SERVICE_LIB:Ljava/lang/String;

.field private static cloader:Ljava/lang/ClassLoader;

.field private static mClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-string v0, "/system/framework/com.lge.zdi.interaction.jar"

    sput-object v0, Lcom/lge/loader/interaction/InteractionManagerCreator;->INTERACTION_SERVICE_LIB:Ljava/lang/String;

    .line 17
    const-string v0, "com.lge.zdi.interaction.InteractionManager"

    sput-object v0, Lcom/lge/loader/interaction/InteractionManagerCreator;->INTERACTION_MANAGER_CLASS:Ljava/lang/String;

    .line 21
    new-instance v0, Ldalvik/system/PathClassLoader;

    sget-object v1, Lcom/lge/loader/interaction/InteractionManagerCreator;->INTERACTION_SERVICE_LIB:Ljava/lang/String;

    const-class v2, Lcom/lge/loader/interaction/InteractionManagerCreator;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/lge/loader/interaction/InteractionManagerCreator;->cloader:Ljava/lang/ClassLoader;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lge/loader/InstanceCreator;-><init>()V

    .line 27
    :try_start_0
    sget-object v1, Lcom/lge/loader/interaction/InteractionManagerCreator;->INTERACTION_MANAGER_CLASS:Ljava/lang/String;

    const/4 v2, 0x1

    sget-object v3, Lcom/lge/loader/interaction/InteractionManagerCreator;->cloader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/lge/loader/interaction/InteractionManagerCreator;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "InteractionManagerCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/lge/loader/interaction/InteractionManagerCreator;->INTERACTION_MANAGER_CLASS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " don\'t exist in library"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 36
    :try_start_0
    sget-object v1, Lcom/lge/loader/interaction/InteractionManagerCreator;->mClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lcom/lge/loader/interaction/InteractionManagerCreator;->mClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 46
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 46
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 41
    :catch_1
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 43
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method
