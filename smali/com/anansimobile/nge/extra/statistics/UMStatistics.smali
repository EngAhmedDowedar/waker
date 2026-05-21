.class public Lcom/anansimobile/nge/extra/statistics/UMStatistics;
.super Ljava/lang/Object;
.source "UMStatistics.java"


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/extra/statistics/UMStatistics;->sContext:Landroid/content/Context;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
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
    .line 54
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 12
    sput-object p0, Lcom/anansimobile/nge/extra/statistics/UMStatistics;->sContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public static onMobEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v0, Lcom/anansimobile/nge/extra/statistics/UMStatistics;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static onMobEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/anansimobile/nge/extra/statistics/UMStatistics;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static onMobEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
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
    .line 24
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/anansimobile/nge/extra/statistics/UMStatistics;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 25
    return-void
.end method

.method public static onMobEventEnd(Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v0, Lcom/anansimobile/nge/extra/statistics/UMStatistics;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/umeng/analytics/MobclickAgent;->onEventEnd(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static onMobEventStart(Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v0, Lcom/anansimobile/nge/extra/statistics/UMStatistics;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/umeng/analytics/MobclickAgent;->onEventBegin(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public static setSessionContinueMillis(J)V
    .locals 0
    .param p0, "millis"    # J

    .prologue
    .line 16
    invoke-static {p0, p1}, Lcom/umeng/analytics/MobclickAgent;->setSessionContinueMillis(J)V

    .line 17
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
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
