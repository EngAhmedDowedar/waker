.class public Lcom/vungle/publisher/net/http/HttpResponse;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/net/http/HttpResponse$Factory;
    }
.end annotation


# instance fields
.field public a:Ljava/net/HttpURLConnection;

.field public b:I

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/net/http/HttpRequestChainElement;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/net/http/HttpResponse;I)I
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcom/vungle/publisher/net/http/HttpResponse;->b:I

    return p1
.end method

.method static synthetic a(Lcom/vungle/publisher/net/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/vungle/publisher/net/http/HttpResponse;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/net/http/HttpResponse;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/vungle/publisher/net/http/HttpResponse;->a:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/net/http/HttpResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/vungle/publisher/net/http/HttpResponse;->c:Ljava/util/List;

    return-object p1
.end method
