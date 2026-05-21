.class public abstract Lcom/payssion/android/sdk/ui/a/k;
.super Lcom/payssion/android/sdk/ui/a/t;


# instance fields
.field protected final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/payssion/android/sdk/ui/a/t;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payssion/android/sdk/ui/a/k;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/payssion/android/sdk/ui/a/t;)V
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/a/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
