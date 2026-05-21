.class public final Lcom/payssion/android/sdk/ui/a/s;
.super Lcom/payssion/android/sdk/ui/a/t;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/payssion/android/sdk/ui/a/t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    instance-of v3, p1, Lcom/payssion/android/sdk/ui/widget/FormSelect;

    if-eqz v3, :cond_1

    check-cast p1, Lcom/payssion/android/sdk/ui/widget/FormSelect;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    new-array v3, v2, [Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
