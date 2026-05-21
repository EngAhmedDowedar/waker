.class public Lcom/google/ads/conversiontracking/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/conversiontracking/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/ads/conversiontracking/g$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/conversiontracking/g$a;)V
    .locals 0

    .prologue
    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$b;->a:Ljava/lang/String;

    .line 804
    iput-object p2, p0, Lcom/google/ads/conversiontracking/g$b;->b:Lcom/google/ads/conversiontracking/g$a;

    .line 805
    return-void
.end method

.method static synthetic a(Lcom/google/ads/conversiontracking/g$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/ads/conversiontracking/g$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/conversiontracking/g$b;)Lcom/google/ads/conversiontracking/g$a;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/ads/conversiontracking/g$b;->b:Lcom/google/ads/conversiontracking/g$a;

    return-object v0
.end method
