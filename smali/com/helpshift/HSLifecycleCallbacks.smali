.class final Lcom/helpshift/HSLifecycleCallbacks;
.super Ljava/lang/Object;
.source "HSLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static data:Lcom/helpshift/HSApiData;

.field private static instance:Lcom/helpshift/HSLifecycleCallbacks;

.field private static isForeground:Z

.field private static started:I

.field private static stopped:I

.field private static storage:Lcom/helpshift/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/helpshift/HSLifecycleCallbacks;->instance:Lcom/helpshift/HSLifecycleCallbacks;

    .line 24
    sput-object v0, Lcom/helpshift/HSLifecycleCallbacks;->data:Lcom/helpshift/HSApiData;

    .line 25
    sput-object v0, Lcom/helpshift/HSLifecycleCallbacks;->storage:Lcom/helpshift/HSStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/helpshift/HSApiData;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/helpshift/HSLifecycleCallbacks;->data:Lcom/helpshift/HSApiData;

    return-object v0
.end method

.method static synthetic access$100()Lcom/helpshift/HSStorage;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/helpshift/HSLifecycleCallbacks;->storage:Lcom/helpshift/HSStorage;

    return-object v0
.end method

.method public static getInstance()Lcom/helpshift/HSLifecycleCallbacks;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/helpshift/HSLifecycleCallbacks;->instance:Lcom/helpshift/HSLifecycleCallbacks;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/helpshift/HSLifecycleCallbacks;

    invoke-direct {v0}, Lcom/helpshift/HSLifecycleCallbacks;-><init>()V

    sput-object v0, Lcom/helpshift/HSLifecycleCallbacks;->instance:Lcom/helpshift/HSLifecycleCallbacks;

    .line 36
    :cond_0
    sget-object v0, Lcom/helpshift/HSLifecycleCallbacks;->instance:Lcom/helpshift/HSLifecycleCallbacks;

    return-object v0
.end method

.method public static isForeground()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/helpshift/HSLifecycleCallbacks;->isForeground:Z

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    sget-object v3, Lcom/helpshift/HSLifecycleCallbacks;->data:Lcom/helpshift/HSApiData;

    if-nez v3, :cond_0

    .line 47
    new-instance v3, Lcom/helpshift/HSApiData;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/helpshift/HSLifecycleCallbacks;->data:Lcom/helpshift/HSApiData;

    .line 48
    sget-object v3, Lcom/helpshift/HSLifecycleCallbacks;->data:Lcom/helpshift/HSApiData;

    iget-object v3, v3, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    sput-object v3, Lcom/helpshift/HSLifecycleCallbacks;->storage:Lcom/helpshift/HSStorage;

    .line 51
    :cond_0
    sget v3, Lcom/helpshift/HSLifecycleCallbacks;->started:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/helpshift/HSLifecycleCallbacks;->started:I

    .line 53
    sget-boolean v3, Lcom/helpshift/HSLifecycleCallbacks;->isForeground:Z

    if-nez v3, :cond_3

    .line 54
    sget-object v3, Lcom/helpshift/HSLifecycleCallbacks;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->updateReviewCounter()V

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "c":Landroid/content/Context;
    sget-object v3, Lcom/helpshift/HSLifecycleCallbacks;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->showReviewP()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/helpshift/HSReview;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v2, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    :try_start_0
    sget-object v3, Lcom/helpshift/HSLifecycleCallbacks;->data:Lcom/helpshift/HSApiData;

    new-instance v4, Lcom/helpshift/HSLifecycleCallbacks$1;

    invoke-direct {v4, p0}, Lcom/helpshift/HSLifecycleCallbacks$1;-><init>(Lcom/helpshift/HSLifecycleCallbacks;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/helpshift/HSApiData;->getConfig(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    invoke-static {v0}, Lcom/helpshift/HelpshiftConnectionUtil;->isOnline(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/helpshift/HSRetryService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 80
    :cond_2
    sget-object v3, Lcom/helpshift/HSLifecycleCallbacks;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->startInAppService()V

    .line 81
    sget-object v3, Lcom/helpshift/HSLifecycleCallbacks;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->reportAppStartEvent()V

    .line 83
    .end local v0    # "c":Landroid/content/Context;
    :cond_3
    const/4 v3, 0x1

    sput-boolean v3, Lcom/helpshift/HSLifecycleCallbacks;->isForeground:Z

    .line 84
    return-void

    .line 72
    .restart local v0    # "c":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/helpshift/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    sget v0, Lcom/helpshift/HSLifecycleCallbacks;->stopped:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/helpshift/HSLifecycleCallbacks;->stopped:I

    .line 92
    sget v0, Lcom/helpshift/HSLifecycleCallbacks;->started:I

    sget v1, Lcom/helpshift/HSLifecycleCallbacks;->stopped:I

    if-ne v0, v1, :cond_0

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/HSLifecycleCallbacks;->isForeground:Z

    .line 95
    :cond_0
    return-void
.end method
