.class public Lcom/vungle/publisher/env/SdkState;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/env/SdkState$EndAdEventListener;,
        Lcom/vungle/publisher/env/SdkState$AdThrottleEndRunnable;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/db/DatabaseBroadcastReceiver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/bt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lcom/vungle/publisher/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/net/NetworkBroadcastReceiver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/env/SdkState$AdThrottleEndRunnable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/env/SdkState$EndAdEventListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m:J

.field public n:Landroid/content/SharedPreferences;
    .annotation runtime Lcom/vungle/publisher/inject/annotations/EnvSharedPreferences;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private o:J

.field private final p:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkState;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 355
    return-void
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 99
    const-string/jumbo v0, "com.vungle.debug"

    invoke-static {v0}, Lcom/vungle/publisher/cz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 100
    :goto_0
    if-eqz v0, :cond_1

    .line 101
    const-string/jumbo v1, "VungleAd"

    const-string/jumbo v2, "in debug mode"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_1
    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_1
    const-string/jumbo v1, "VungleAd"

    const-string/jumbo v2, "not in debug mode"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/vungle/publisher/env/SdkState;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/vungle/publisher/env/SdkState;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vungle/publisher/env/SdkState;->o:J

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static d()J
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->e:Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->f:Lcom/vungle/publisher/net/NetworkBroadcastReceiver;

    iget-object v1, v0, Lcom/vungle/publisher/net/NetworkBroadcastReceiver;->b:Landroid/content/Context;

    sget-object v2, Lcom/vungle/publisher/net/NetworkBroadcastReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->b:Lcom/vungle/publisher/db/DatabaseBroadcastReceiver;

    iget-object v1, v0, Lcom/vungle/publisher/db/DatabaseBroadcastReceiver;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.vungle.publisher.db.DUMP_TABLES"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->c:Lcom/vungle/publisher/bt;

    invoke-interface {v0}, Lcom/vungle/publisher/bt;->q()V

    .line 241
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->g:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    sget-object v1, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->l:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 243
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lcom/vungle/publisher/db;->a(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/publisher/env/SdkState;->o:J

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->i:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    iget-wide v2, p0, Lcom/vungle/publisher/env/SdkState;->o:J

    iget-object v1, v0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->e:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v4, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$6;

    invoke-direct {v4, v0, v2, v3}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$6;-><init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;J)V

    sget-object v0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->m:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v1, v4, v0}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 246
    :cond_0
    if-eqz p1, :cond_1

    .line 247
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->d:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/af;

    invoke-direct {v1}, Lcom/vungle/publisher/af;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 249
    :cond_1
    return-void

    .line 243
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 6

    .prologue
    .line 252
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    const-string/jumbo v0, "VungleAd"

    const-string/jumbo v1, "ending playing ad onResume()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->k:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/SdkState$EndAdEventListener;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/SdkState$EndAdEventListener;->unregister()V

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string/jumbo v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setting last ad end millis: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/env/SdkState;->n:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "VgLastViewedTime"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 256
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vungle/publisher/env/SdkState;->m:J

    .line 257
    invoke-virtual {p0}, Lcom/vungle/publisher/env/SdkState;->e()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/vungle/publisher/env/SdkState;->d:Lcom/vungle/publisher/event/EventBus;

    new-instance v2, Lcom/vungle/publisher/aj;

    invoke-direct {v2}, Lcom/vungle/publisher/aj;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vungle/publisher/env/SdkState;->g:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    iget-object v2, p0, Lcom/vungle/publisher/env/SdkState;->h:Lcom/vungle/publisher/env/SdkState$AdThrottleEndRunnable;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;J)V

    .line 258
    :cond_0
    if-nez p1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->d:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/bb;

    iget-wide v2, p0, Lcom/vungle/publisher/env/SdkState;->m:J

    invoke-direct {v1, v2, v3}, Lcom/vungle/publisher/bb;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 262
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 147
    invoke-virtual {p0}, Lcom/vungle/publisher/env/SdkState;->c()J

    move-result-wide v4

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/vungle/publisher/env/SdkState;->c()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 151
    if-gez v1, :cond_0

    .line 152
    const-string/jumbo v6, "VungleAd"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "negative adDelayElapsedSeconds "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", currentTimestampMillis "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lastAdEndMillis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_0
    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/env/SdkState;->e()I

    move-result v2

    .line 157
    if-lt v1, v2, :cond_1

    .line 158
    :goto_1
    if-eqz v0, :cond_2

    .line 159
    const-string/jumbo v3, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ad delay seconds elapsed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 162
    :cond_2
    const-string/jumbo v3, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ad delay seconds elapsed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()J
    .locals 5

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->n:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "VgLastViewedTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 180
    const-string/jumbo v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "returning last ad end millis: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-wide v0
.end method

.method public final e()I
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->n:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "VgAdDelayDuration"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final f()J
    .locals 8

    .prologue
    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 286
    iget-wide v4, p0, Lcom/vungle/publisher/env/SdkState;->o:J

    .line 287
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 288
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->e:Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;

    :try_start_0
    iget-object v1, v0, Lcom/vungle/publisher/device/ExternalStorageStateBroadcastReceiver;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->f:Lcom/vungle/publisher/net/NetworkBroadcastReceiver;

    :try_start_1
    iget-object v1, v0, Lcom/vungle/publisher/net/NetworkBroadcastReceiver;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->b:Lcom/vungle/publisher/db/DatabaseBroadcastReceiver;

    :try_start_2
    iget-object v1, v0, Lcom/vungle/publisher/db/DatabaseBroadcastReceiver;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 289
    :goto_2
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkState;->g:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v1, Lcom/vungle/publisher/env/SdkState$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/vungle/publisher/env/SdkState$1;-><init>(Lcom/vungle/publisher/env/SdkState;IJJ)V

    sget-object v2, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->k:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;J)V

    .line 302
    return-wide v6

    .line 288
    :catch_0
    move-exception v0

    const-string/jumbo v0, "VungleDevice"

    const-string/jumbo v1, "error unregistering external storage state broadcast receiver - not registered"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "VungleNetwork"

    const-string/jumbo v1, "error unregistering network broadcast receiver - not registered"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v0, "VungleDumpDatabase"

    const-string/jumbo v1, "error unregistering database broadcast receiver - not registered"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
