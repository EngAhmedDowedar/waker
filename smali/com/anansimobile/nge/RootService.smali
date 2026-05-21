.class public Lcom/anansimobile/nge/RootService;
.super Landroid/app/Service;
.source "RootService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anansimobile/nge/RootService$RootServiceBinder;
    }
.end annotation


# static fields
.field private static sCtx:Landroid/content/Context;


# instance fields
.field public mBinder:Lcom/anansimobile/nge/RootService$RootServiceBinder;

.field private mBroadcastReceiver:Lcom/anansimobile/nge/NGBroadcastReceiver;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/RootService;->sCtx:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/anansimobile/nge/RootService;->mBroadcastReceiver:Lcom/anansimobile/nge/NGBroadcastReceiver;

    .line 84
    iput-object v0, p0, Lcom/anansimobile/nge/RootService;->mBinder:Lcom/anansimobile/nge/RootService$RootServiceBinder;

    .line 86
    iput-object v0, p0, Lcom/anansimobile/nge/RootService;->mTimer:Ljava/util/Timer;

    .line 31
    new-instance v0, Lcom/anansimobile/nge/NGBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/anansimobile/nge/NGBroadcastReceiver;-><init>(Lcom/anansimobile/nge/RootService;)V

    iput-object v0, p0, Lcom/anansimobile/nge/RootService;->mBroadcastReceiver:Lcom/anansimobile/nge/NGBroadcastReceiver;

    .line 32
    return-void
.end method

.method public static StartService(Landroid/app/Activity;)V
    .locals 9
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x0

    .line 171
    sput-object p0, Lcom/anansimobile/nge/RootService;->sCtx:Landroid/content/Context;

    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, "callbackActivityPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 176
    .local v1, "callbackActivityClassName":Ljava/lang/String;
    const-string/jumbo v6, "Callback Activity..."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/anansimobile/nge/RootService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    move-object v0, p0

    .line 178
    .local v0, "callbackActivity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string/jumbo v6, "nge_client_preferences"

    invoke-virtual {p0, v6, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 184
    .local v5, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 185
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v6, "CALLBACK_ACTIVITY_PACKAGE_NAME"

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string/jumbo v6, "CALLBACK_ACTIVITY_CLASS_NAME"

    invoke-interface {v3, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/anansimobile/nge/RootService$3;

    invoke-direct {v6}, Lcom/anansimobile/nge/RootService$3;-><init>()V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    .local v4, "serviceThread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 205
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/anansimobile/nge/RootService;->sCtx:Landroid/content/Context;

    return-object v0
.end method

.method public static getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/anansimobile/nge/RootService;->sCtx:Landroid/content/Context;

    const-class v2, Lcom/anansimobile/nge/RootService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 214
    const-string/jumbo v0, "native_project_lib"

    const-string/jumbo v1, "[root_service_log] %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/anansimobile/nge/RootService;->mBroadcastReceiver:Lcom/anansimobile/nge/NGBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/anansimobile/nge/RootService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method


# virtual methods
.method public CheckNotification()V
    .locals 18

    .prologue
    .line 89
    const-string/jumbo v12, "localpushnotification"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/anansimobile/nge/RootService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 90
    .local v9, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 92
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    .line 98
    .local v8, "notifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 140
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string/jumbo v12, "notify count: %d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/anansimobile/nge/RootService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 106
    .local v7, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 107
    .local v5, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 108
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 109
    .local v6, "key":Ljava/lang/String;
    const-string/jumbo v12, "-"

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "items":[Ljava/lang/String;
    array-length v12, v4

    const/4 v13, 0x5

    if-lt v12, v13, :cond_1

    .line 115
    const/4 v12, 0x3

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const/4 v14, 0x4

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v10, v12, v14

    .line 116
    .local v10, "startDelay":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gez v12, :cond_2

    .line 117
    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 121
    :cond_2
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    .local v3, "info":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/anansimobile/nge/RootService;->mTimer:Ljava/util/Timer;

    if-nez v12, :cond_3

    .line 123
    new-instance v12, Ljava/util/Timer;

    invoke-direct {v12}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/anansimobile/nge/RootService;->mTimer:Ljava/util/Timer;

    .line 125
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/anansimobile/nge/RootService;->mTimer:Ljava/util/Timer;

    new-instance v13, Lcom/anansimobile/nge/RootService$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/anansimobile/nge/RootService$1;-><init>(Lcom/anansimobile/nge/RootService;)V

    const/4 v14, 0x2

    aget-object v14, v4, v14

    .line 133
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    .line 125
    invoke-virtual {v12, v13, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 135
    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 138
    .end local v3    # "info":Ljava/lang/String;
    .end local v4    # "items":[Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v10    # "startDelay":J
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public ClearNotification()V
    .locals 8

    .prologue
    .line 143
    const-string/jumbo v4, "localpushnotification"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/anansimobile/nge/RootService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    iget-object v4, p0, Lcom/anansimobile/nge/RootService;->mTimer:Ljava/util/Timer;

    if-eqz v4, :cond_0

    .line 149
    iget-object v4, p0, Lcom/anansimobile/nge/RootService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 150
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/anansimobile/nge/RootService;->mTimer:Ljava/util/Timer;

    .line 153
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 154
    .local v2, "n":J
    iget-object v4, p0, Lcom/anansimobile/nge/RootService;->mTimer:Ljava/util/Timer;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iput-object v4, p0, Lcom/anansimobile/nge/RootService;->mTimer:Ljava/util/Timer;

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/anansimobile/nge/RootService;->mTimer:Ljava/util/Timer;

    new-instance v5, Lcom/anansimobile/nge/RootService$2;

    invoke-direct {v5, p0, v2, v3}, Lcom/anansimobile/nge/RootService$2;-><init>(Lcom/anansimobile/nge/RootService;J)V

    const-wide/16 v6, 0x4e20

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 165
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string/jumbo v0, "RootService Bind!~"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/anansimobile/nge/RootService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/anansimobile/nge/RootService;->mBinder:Lcom/anansimobile/nge/RootService$RootServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    new-instance v0, Lcom/anansimobile/nge/RootService$RootServiceBinder;

    invoke-direct {v0, p0}, Lcom/anansimobile/nge/RootService$RootServiceBinder;-><init>(Lcom/anansimobile/nge/RootService;)V

    iput-object v0, p0, Lcom/anansimobile/nge/RootService;->mBinder:Lcom/anansimobile/nge/RootService$RootServiceBinder;

    .line 46
    const-string/jumbo v0, "RootService Created!~"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/anansimobile/nge/RootService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0}, Lcom/anansimobile/nge/RootService;->registerBroadcastReceiver()V

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 62
    const-string/jumbo v0, "RootService Destroy!~"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/anansimobile/nge/RootService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 64
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 55
    const-string/jumbo v0, "RootService Start!~"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/anansimobile/nge/RootService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
