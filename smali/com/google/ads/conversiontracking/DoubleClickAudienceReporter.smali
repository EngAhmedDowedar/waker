.class public Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;
.super Lcom/google/ads/conversiontracking/GoogleConversionReporter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "adUnitId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "customParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/GoogleConversionReporter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->a:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->b:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->c:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public static reportActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "adUnitId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "customParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;

    .line 71
    invoke-static {p0}, Lcom/google/ads/conversiontracking/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 72
    invoke-static {p1}, Lcom/google/ads/conversiontracking/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p2}, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    invoke-virtual {v1}, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->report()V

    .line 74
    return-void
.end method


# virtual methods
.method public report()V
    .locals 6

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string/jumbo v0, "GoogleConversionReporter"

    const-string/jumbo v1, "Error sending activity ping with empty ad unit id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return-void

    .line 44
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/ads/conversiontracking/g$c;

    invoke-direct {v0}, Lcom/google/ads/conversiontracking/g$c;-><init>()V

    sget-object v1, Lcom/google/ads/conversiontracking/g$d;->a:Lcom/google/ads/conversiontracking/g$d;

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/g$c;->a(Lcom/google/ads/conversiontracking/g$d;)Lcom/google/ads/conversiontracking/g$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->c:Ljava/util/Map;

    .line 47
    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/g$c;->a(Ljava/util/Map;)Lcom/google/ads/conversiontracking/g$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->b:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/g$c;->c(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;

    move-result-object v2

    .line 49
    iget-object v1, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/g$c;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string/jumbo v1, "GoogleConversionReporter"

    const-string/jumbo v2, "Error sending ping"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
