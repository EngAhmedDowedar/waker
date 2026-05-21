.class public Lcom/google/ads/conversiontracking/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/conversiontracking/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Lcom/google/ads/conversiontracking/g$d;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/ads/conversiontracking/g$a;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    return-void
.end method

.method static synthetic a(Lcom/google/ads/conversiontracking/g$c;)Z
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/google/ads/conversiontracking/g$c;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/google/ads/conversiontracking/g$c;)Lcom/google/ads/conversiontracking/g$d;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/ads/conversiontracking/g$c;->d:Lcom/google/ads/conversiontracking/g$d;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/conversiontracking/g$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/ads/conversiontracking/g$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/conversiontracking/g$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/ads/conversiontracking/g$c;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/ads/conversiontracking/g$c;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/ads/conversiontracking/g$c;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/google/ads/conversiontracking/g$c;)Lcom/google/ads/conversiontracking/g$a;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/ads/conversiontracking/g$c;->h:Lcom/google/ads/conversiontracking/g$a;

    return-object v0
.end method

.method static synthetic g(Lcom/google/ads/conversiontracking/g$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/ads/conversiontracking/g$c;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/google/ads/conversiontracking/g$c;)J
    .locals 2

    .prologue
    .line 876
    iget-wide v0, p0, Lcom/google/ads/conversiontracking/g$c;->k:J

    return-wide v0
.end method

.method static synthetic i(Lcom/google/ads/conversiontracking/g$c;)Z
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/google/ads/conversiontracking/g$c;->l:Z

    return v0
.end method

.method static synthetic j(Lcom/google/ads/conversiontracking/g$c;)Z
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/google/ads/conversiontracking/g$c;->b:Z

    return v0
.end method

.method static synthetic k(Lcom/google/ads/conversiontracking/g$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/ads/conversiontracking/g$c;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/google/ads/conversiontracking/g$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/ads/conversiontracking/g$c;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/ads/conversiontracking/g$c;
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/conversiontracking/g$c;->c:Z

    .line 900
    return-object p0
.end method

.method public a(J)Lcom/google/ads/conversiontracking/g$c;
    .locals 3

    .prologue
    .line 944
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/conversiontracking/g$c;->k:J

    .line 945
    return-object p0
.end method

.method public a(Lcom/google/ads/conversiontracking/g$a;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .prologue
    .line 924
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->h:Lcom/google/ads/conversiontracking/g$a;

    .line 925
    return-object p0
.end method

.method public a(Lcom/google/ads/conversiontracking/g$d;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->d:Lcom/google/ads/conversiontracking/g$d;

    .line 905
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->a:Ljava/lang/String;

    .line 895
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/google/ads/conversiontracking/g$c;"
        }
    .end annotation

    .prologue
    .line 929
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->i:Ljava/util/Map;

    .line 930
    return-object p0
.end method

.method public a(Z)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .prologue
    .line 939
    iput-boolean p1, p0, Lcom/google/ads/conversiontracking/g$c;->b:Z

    .line 940
    return-object p0
.end method

.method public b()Lcom/google/ads/conversiontracking/g$c;
    .locals 1

    .prologue
    .line 949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/conversiontracking/g$c;->l:Z

    .line 950
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .prologue
    .line 909
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->e:Ljava/lang/String;

    .line 910
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->f:Ljava/lang/String;

    .line 915
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->g:Ljava/lang/String;

    .line 920
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .prologue
    .line 934
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->j:Ljava/lang/String;

    .line 935
    return-object p0
.end method
