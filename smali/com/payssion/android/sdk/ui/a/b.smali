.class public final Lcom/payssion/android/sdk/ui/a/b;
.super Lcom/payssion/android/sdk/ui/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/payssion/android/sdk/ui/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;)Z
    .locals 3

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payssion/android/sdk/ui/a/t;

    invoke-virtual {v0, p1}, Lcom/payssion/android/sdk/ui/a/t;->a(Landroid/widget/EditText;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/a/t;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/ui/a/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method
