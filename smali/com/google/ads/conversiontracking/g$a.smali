.class public Lcom/google/ads/conversiontracking/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/conversiontracking/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 831
    invoke-static {}, Lcom/google/ads/conversiontracking/g;->a()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/ads/conversiontracking/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 832
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$a;->a:Ljava/lang/String;

    .line 826
    iput-object p2, p0, Lcom/google/ads/conversiontracking/g$a;->b:Ljava/lang/String;

    .line 827
    iput-wide p3, p0, Lcom/google/ads/conversiontracking/g$a;->c:J

    .line 828
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$a;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 851
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-object v0

    .line 854
    :cond_1
    const-string/jumbo v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 855
    array-length v1, v2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 859
    :try_start_0
    new-instance v1, Lcom/google/ads/conversiontracking/g$a;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    .line 862
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v1, v3, v4, v6, v7}, Lcom/google/ads/conversiontracking/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 863
    invoke-virtual {v1}, Lcom/google/ads/conversiontracking/g$a;->a()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 866
    goto :goto_0

    .line 867
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/ads/conversiontracking/g$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/ads/conversiontracking/g$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/conversiontracking/g$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/ads/conversiontracking/g$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/conversiontracking/g$a;)J
    .locals 2

    .prologue
    .line 819
    iget-wide v0, p0, Lcom/google/ads/conversiontracking/g$a;->c:J

    return-wide v0
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    .line 847
    iget-wide v0, p0, Lcom/google/ads/conversiontracking/g$a;->c:J

    const-wide v2, 0x1cf7c5800L

    add-long/2addr v0, v2

    invoke-static {}, Lcom/google/ads/conversiontracking/g;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
