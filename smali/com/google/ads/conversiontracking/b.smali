.class public Lcom/google/ads/conversiontracking/b;
.super Lcom/google/ads/conversiontracking/GoogleConversionReporter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/GoogleConversionReporter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/ads/conversiontracking/b;->a:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/b;->a:Landroid/content/Context;

    new-instance v0, Lcom/google/ads/conversiontracking/g$c;

    invoke-direct {v0}, Lcom/google/ads/conversiontracking/g$c;-><init>()V

    .line 38
    invoke-virtual {v0, p1}, Lcom/google/ads/conversiontracking/g$c;->a(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;

    move-result-object v0

    const/4 v2, 0x1

    .line 39
    invoke-virtual {v0, v2}, Lcom/google/ads/conversiontracking/g$c;->a(Z)Lcom/google/ads/conversiontracking/g$c;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/ads/conversiontracking/g$c;->b()Lcom/google/ads/conversiontracking/g$c;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p2, p3}, Lcom/google/ads/conversiontracking/g$c;->a(J)Lcom/google/ads/conversiontracking/g$c;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/conversiontracking/b;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/g$c;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string/jumbo v1, "GoogleConversionReporter"

    const-string/jumbo v2, "Error sending ping"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public report()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
