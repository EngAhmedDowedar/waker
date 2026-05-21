.class public Lcom/vungle/publisher/net/http/HttpRequestChainElement;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/net/http/HttpRequestChainElement$Factory;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/Long;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/net/http/HttpRequestChainElement;I)I
    .locals 0

    .prologue
    .line 7
    iput p1, p0, Lcom/vungle/publisher/net/http/HttpRequestChainElement;->b:I

    return p1
.end method

.method static synthetic a(Lcom/vungle/publisher/net/http/HttpRequestChainElement;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 7
    iput-object p1, p0, Lcom/vungle/publisher/net/http/HttpRequestChainElement;->c:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/net/http/HttpRequestChainElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 7
    iput-object p1, p0, Lcom/vungle/publisher/net/http/HttpRequestChainElement;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/vungle/publisher/net/http/HttpRequestChainElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 7
    iput-object p1, p0, Lcom/vungle/publisher/net/http/HttpRequestChainElement;->d:Ljava/lang/String;

    return-object p1
.end method
