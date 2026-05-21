.class public abstract Lcom/vungle/publisher/VunglePubBase;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field public static final VERSION:Ljava/lang/String; = "VungleDroid/3.3.1"


# instance fields
.field a:Lcom/vungle/publisher/ad/AdManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/InitializationEventListener;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/file/CacheManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/db/DatabaseHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/Demographic;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected f:Lcom/vungle/publisher/bt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/AdConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/SafeBundleAdConfigFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/env/SdkConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/env/SdkState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private l:Z

.field private m:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/vungle/publisher/VunglePubBase;->l:Z

    .line 137
    if-nez v0, :cond_0

    .line 138
    const-string/jumbo v1, "Vungle"

    const-string/jumbo v2, "VunglePub not injected"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    return v0
.end method

.method private a(ZLjava/lang/String;)Z
    .locals 4

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/vungle/publisher/VunglePubBase;->m:Z

    .line 124
    if-eqz v0, :cond_1

    .line 125
    const-string/jumbo v1, "Vungle"

    const-string/jumbo v2, "VunglePub was initialized"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    if-eqz p1, :cond_0

    .line 129
    const-string/jumbo v1, "Vungle"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Please call VunglePub.init() before "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/vungle/publisher/VunglePubBase;->l:Z

    if-eqz v0, :cond_0

    .line 145
    const-string/jumbo v0, "Vungle"

    const-string/jumbo v1, "already injected"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/inject/Injector;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    iget-object v0, v0, Lcom/vungle/publisher/inject/Injector;->a:Ldagger/ObjectGraph;

    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v0, "Vungle"

    const-string/jumbo v1, "injection successful"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/VunglePubBase;->l:Z

    goto :goto_0
.end method

.method public varargs addEventListeners([Lcom/vungle/publisher/EventListener;)V
    .locals 3
    .param p1, "eventListeners"    # [Lcom/vungle/publisher/EventListener;

    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->j:Lcom/vungle/publisher/env/SdkConfig;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/env/SdkConfig;->a([Lcom/vungle/publisher/EventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string/jumbo v1, "Vungle"

    const-string/jumbo v2, "error adding event listeners"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clearEventListeners()V
    .locals 3

    .prologue
    .line 196
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->j:Lcom/vungle/publisher/env/SdkConfig;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/SdkConfig;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string/jumbo v1, "Vungle"

    const-string/jumbo v2, "error clearing event listeners"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDemographic()Lcom/vungle/publisher/Demographic;
    .locals 3

    .prologue
    .line 164
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->e:Lcom/vungle/publisher/Demographic;

    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const-string/jumbo v1, "Vungle"

    const-string/jumbo v2, "error getting demographic info"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;
    .locals 3

    .prologue
    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->h:Lcom/vungle/publisher/AdConfig;

    return-object v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string/jumbo v1, "Vungle"

    const-string/jumbo v2, "error getting globalAdConfig"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vungleAppId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 75
    iget-boolean v1, p0, Lcom/vungle/publisher/VunglePubBase;->m:Z

    .line 77
    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    const-string/jumbo v0, "Vungle"

    const-string/jumbo v2, "already initialized"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 101
    :goto_0
    return v0

    .line 81
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x9

    if-lt v3, v0, :cond_1

    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    const-string/jumbo v4, "VungleDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Device Android API level "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/VunglePubBase;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->j:Lcom/vungle/publisher/env/SdkConfig;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/SdkConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    const-string/jumbo v0, "Vungle"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "VungleDroid/3.3.1 init("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->c:Lcom/vungle/publisher/file/CacheManager;

    const-string/jumbo v3, "VungleFile"

    const-string/jumbo v4, "deleting old ad temp directory"

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vungle/publisher/file/CacheManager;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/file/CacheManager;->a(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->b:Lcom/vungle/publisher/InitializationEventListener;

    invoke-virtual {v0}, Lcom/vungle/publisher/InitializationEventListener;->register()V

    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->d:Lcom/vungle/publisher/db/DatabaseHelper;

    iget-object v3, v0, Lcom/vungle/publisher/db/DatabaseHelper;->d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v4, Lcom/vungle/publisher/db/DatabaseHelper$1;

    invoke-direct {v4, v0}, Lcom/vungle/publisher/db/DatabaseHelper$1;-><init>(Lcom/vungle/publisher/db/DatabaseHelper;)V

    sget-object v0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->b:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v3, v4, v0}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 88
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->f:Lcom/vungle/publisher/bt;

    invoke-interface {v0}, Lcom/vungle/publisher/bt;->q()V

    .line 89
    const-string/jumbo v0, "Vungle"

    const-string/jumbo v3, "initialization successful"

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/VunglePubBase;->m:Z

    move v0, v2

    goto/16 :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "VungleDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Device Android API level "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " does not meet required minimum 9"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string/jumbo v2, "Vungle"

    const-string/jumbo v3, "VunglePub initialization failed"

    invoke-static {v2, v3, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto/16 :goto_0

    .line 93
    :cond_3
    :try_start_1
    const-string/jumbo v0, "Vungle"

    const-string/jumbo v2, "initialization failed"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    move v0, v1

    .line 100
    goto/16 :goto_0
.end method

.method public isAdPlayable()Z
    .locals 4

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 251
    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v2, "isAdPlayable()"

    invoke-direct {p0, v1, v2}, Lcom/vungle/publisher/VunglePubBase;->a(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/vungle/publisher/VunglePubBase;->a:Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {v1}, Lcom/vungle/publisher/ad/AdManager;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    const-string/jumbo v2, "Vungle"

    const-string/jumbo v3, "error returning ad playable"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 239
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "onPause()"

    invoke-direct {p0, v0, v1}, Lcom/vungle/publisher/VunglePubBase;->a(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->k:Lcom/vungle/publisher/env/SdkState;

    const-string/jumbo v1, "VungleAd"

    const-string/jumbo v2, "onDeveloperActivityPause()"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/env/SdkState;->f()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string/jumbo v1, "Vungle"

    const-string/jumbo v2, "error onPause()"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "onResume()"

    invoke-direct {p0, v0, v1}, Lcom/vungle/publisher/VunglePubBase;->a(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->k:Lcom/vungle/publisher/env/SdkState;

    const-string/jumbo v1, "VungleAd"

    const-string/jumbo v2, "onDeveloperActivityResume()"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/env/SdkState;->a(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/env/SdkState;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string/jumbo v1, "Vungle"

    const-string/jumbo v2, "error onResume()"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public playAd()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/VunglePubBase;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 263
    return-void
.end method

.method public playAd(Lcom/vungle/publisher/AdConfig;)V
    .locals 8
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 266
    :try_start_0
    const-string/jumbo v2, "VungleAd"

    const-string/jumbo v3, "VunglePub.playAd()"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v2, 0x1

    const-string/jumbo v3, "playAd()"

    invoke-direct {p0, v2, v3}, Lcom/vungle/publisher/VunglePubBase;->a(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/vungle/publisher/VunglePubBase;->k:Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {v2}, Lcom/vungle/publisher/env/SdkState;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/vungle/publisher/env/SdkState;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v2, Lcom/vungle/publisher/env/SdkState;->k:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/SdkState$EndAdEventListener;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/SdkState$EndAdEventListener;->register()V

    :cond_0
    move v0, v1

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->a:Lcom/vungle/publisher/ad/AdManager;

    iget-object v1, p0, Lcom/vungle/publisher/VunglePubBase;->i:Lcom/vungle/publisher/SafeBundleAdConfigFactory;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/vungle/publisher/AdConfig;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vungle/publisher/VunglePubBase;->h:Lcom/vungle/publisher/AdConfig;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/SafeBundleAdConfigFactory;->merge([Lcom/vungle/publisher/AdConfig;)Lcom/vungle/publisher/c;

    move-result-object v1

    iget-object v2, v0, Lcom/vungle/publisher/ad/AdManager;->f:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v3, Lcom/vungle/publisher/ad/AdManager$1;

    invoke-direct {v3, v0, v1}, Lcom/vungle/publisher/ad/AdManager$1;-><init>(Lcom/vungle/publisher/ad/AdManager;Lcom/vungle/publisher/c;)V

    sget-object v0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->p:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v2, v3, v0}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 279
    :cond_2
    :goto_2
    return-void

    .line 269
    :cond_3
    const-string/jumbo v1, "VungleAd"

    const-string/jumbo v3, "ad already playing"

    invoke-static {v1, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/vungle/publisher/env/SdkState;->d:Lcom/vungle/publisher/event/EventBus;

    new-instance v3, Lcom/vungle/publisher/au;

    invoke-direct {v3}, Lcom/vungle/publisher/au;-><init>()V

    invoke-virtual {v1, v3}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v1, v2, Lcom/vungle/publisher/env/SdkState;->d:Lcom/vungle/publisher/event/EventBus;

    new-instance v3, Lcom/vungle/publisher/ay;

    invoke-static {}, Lcom/vungle/publisher/env/SdkState;->d()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/vungle/publisher/env/SdkState;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v2}, Lcom/vungle/publisher/env/SdkState;->e()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/vungle/publisher/ay;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    move v1, v0

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/vungle/publisher/VunglePubBase;->l:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vungle/publisher/VunglePubBase;->g:Lcom/vungle/publisher/event/EventBus;

    new-instance v2, Lcom/vungle/publisher/ax;

    invoke-direct {v2}, Lcom/vungle/publisher/ax;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const-string/jumbo v1, "VungleAd"

    const-string/jumbo v2, "error playing ad"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    iget-boolean v0, p0, Lcom/vungle/publisher/VunglePubBase;->l:Z

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->g:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/aw;

    invoke-direct {v1}, Lcom/vungle/publisher/aw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public varargs removeEventListeners([Lcom/vungle/publisher/EventListener;)V
    .locals 9
    .param p1, "eventListeners"    # [Lcom/vungle/publisher/EventListener;

    .prologue
    const/4 v2, 0x0

    .line 207
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v4, p0, Lcom/vungle/publisher/VunglePubBase;->j:Lcom/vungle/publisher/env/SdkConfig;

    if-eqz p1, :cond_2

    array-length v5, p1

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, p1, v3

    iget-object v0, v4, Lcom/vungle/publisher/env/SdkConfig;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ca;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_1

    const-string/jumbo v1, "VungleConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "removing event listener "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/vungle/publisher/ca;->unregister()V

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "VungleConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "event listener not found for remove "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string/jumbo v1, "Vungle"

    const-string/jumbo v2, "error removing event listeners"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    :cond_2
    return-void
.end method

.method public varargs setEventListeners([Lcom/vungle/publisher/EventListener;)V
    .locals 3
    .param p1, "eventListeners"    # [Lcom/vungle/publisher/EventListener;

    .prologue
    .line 185
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->j:Lcom/vungle/publisher/env/SdkConfig;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/SdkConfig;->a()V

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/env/SdkConfig;->a([Lcom/vungle/publisher/EventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v1, "Vungle"

    const-string/jumbo v2, "error setting event listeners"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
