.class public Lcom/anansimobile/nge/extra/statistics/FlurryStatistics;
.super Ljava/lang/Object;
.source "FlurryStatistics.java"


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/extra/statistics/FlurryStatistics;->sContext:Landroid/content/Context;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendProperty(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 13
    sput-object p0, Lcom/anansimobile/nge/extra/statistics/FlurryStatistics;->sContext:Landroid/content/Context;

    .line 14
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    .line 15
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setLogLevel(I)V

    .line 16
    return-void
.end method

.method public static onEnd(Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lcom/anansimobile/nge/extra/statistics/FlurryStatistics;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public static onFlurryEvent(Ljava/lang/String;)V
    .locals 0
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static onFlurryEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 75
    return-void
.end method

.method public static onStart(Ljava/lang/String;)V
    .locals 1
    .param p0, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/anansimobile/nge/extra/statistics/FlurryStatistics;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static setSessionContinueMillis(J)V
    .locals 0
    .param p0, "millis"    # J

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/flurry/android/FlurryAgent;->setContinueSessionMillis(J)V

    .line 20
    return-void
.end method

.method protected static startProperties()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
