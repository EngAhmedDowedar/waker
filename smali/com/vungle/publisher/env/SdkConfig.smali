.class public Lcom/vungle/publisher/env/SdkConfig;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/EventListener;",
            "Lcom/vungle/publisher/ca;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/vungle/publisher/co;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Ljava/lang/String;

.field public f:J

.field public g:J

.field h:Lcom/vungle/publisher/event/ClientEventListenerAdapter$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Landroid/content/SharedPreferences;
    .annotation runtime Lcom/vungle/publisher/inject/annotations/EnvSharedPreferences;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->a:Ljava/util/Map;

    .line 29
    const-class v0, Lcom/vungle/publisher/co;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->c:Ljava/util/Set;

    .line 31
    const-string/jumbo v0, "isExceptionReportingEnabled"

    iput-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->e:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ca;

    .line 78
    invoke-interface {v0}, Lcom/vungle/publisher/ca;->unregister()V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 181
    const-string/jumbo v0, "VungleConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setting last app fingerprint timestamp to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iput-wide p1, p0, Lcom/vungle/publisher/env/SdkConfig;->f:J

    .line 183
    return-void
.end method

.method public final varargs a([Lcom/vungle/publisher/EventListener;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 48
    if-eqz p1, :cond_3

    .line 49
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, p1, v2

    .line 50
    if-nez v4, :cond_0

    const-string/jumbo v0, "VungleEvent"

    const-string/jumbo v4, "ignoring add null event listener"

    invoke-static {v0, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_2

    const-string/jumbo v0, "VungleEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "adding event listener "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->h:Lcom/vungle/publisher/event/ClientEventListenerAdapter$Factory;

    iget-object v0, v0, Lcom/vungle/publisher/event/ClientEventListenerAdapter$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;

    iput-object v4, v0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a:Lcom/vungle/publisher/EventListener;

    iget-object v5, p0, Lcom/vungle/publisher/env/SdkConfig;->a:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/vungle/publisher/ca;->registerSticky()V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "VungleEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "already added event listener "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_3
    return-void
.end method

.method public final varargs a([Lcom/vungle/publisher/co;)V
    .locals 4

    .prologue
    .line 114
    const-string/jumbo v0, "VungleConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setting ad streaming connectivity types "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vungle/publisher/dd;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 116
    if-eqz p1, :cond_1

    .line 117
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 118
    if-eqz v2, :cond_0

    .line 119
    iget-object v3, p0, Lcom/vungle/publisher/env/SdkConfig;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    .line 131
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.INTERNET"

    aput-object v2, v3, v1

    const-string/jumbo v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v2

    move v2, v1

    .line 136
    :goto_0
    if-ge v2, v7, :cond_1

    aget-object v4, v3, v2

    .line 137
    iget-object v5, p0, Lcom/vungle/publisher/env/SdkConfig;->i:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    const-string/jumbo v0, "VungleConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Missing permission - did you remember to add <uses-permission android:name=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\"/> to your AndroidManifest.xml?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 136
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_1
    return v0
.end method

.method public final c()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    const-string/jumbo v0, "VungleConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isExceptionReportingEnabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/env/SdkConfig;->j:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/vungle/publisher/env/SdkConfig;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/vungle/publisher/env/SdkConfig;->j:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/vungle/publisher/env/SdkConfig;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
