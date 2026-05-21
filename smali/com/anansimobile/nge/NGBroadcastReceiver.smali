.class public Lcom/anansimobile/nge/NGBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NGBroadcastReceiver.java"


# instance fields
.field private rootService:Lcom/anansimobile/nge/RootService;


# direct methods
.method public constructor <init>(Lcom/anansimobile/nge/RootService;)V
    .locals 1
    .param p1, "notificationService"    # Lcom/anansimobile/nge/RootService;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/NGBroadcastReceiver;->rootService:Lcom/anansimobile/nge/RootService;

    .line 24
    iput-object p1, p0, Lcom/anansimobile/nge/NGBroadcastReceiver;->rootService:Lcom/anansimobile/nge/RootService;

    .line 25
    return-void
.end method

.method private isActivityOnForeground(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 52
    const-string/jumbo v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 53
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "appTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 64
    :goto_0
    return v5

    .line 58
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "topActivityClassName":Ljava/lang/String;
    const-string/jumbo v5, "nge_client_preferences"

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 61
    .local v3, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "CALLBACK_ACTIVITY_CLASS_NAME"

    const-string/jumbo v7, ""

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "callbackActivityClassName":Ljava/lang/String;
    const-string/jumbo v5, "saved callback activity class name: %s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-static {v5, v7}, Lcom/anansimobile/nge/RootService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 30
    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v0, "TimeTickReceiver.onReceive()..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/anansimobile/nge/RootService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/anansimobile/nge/NGBroadcastReceiver;->isActivityOnForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const-string/jumbo v0, "notification ignored, activity in foreground!~"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/anansimobile/nge/RootService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-static {p1}, Lcom/anansimobile/nge/NGNotification;->checkLocalNotification(Landroid/content/Context;)V

    goto :goto_0
.end method
