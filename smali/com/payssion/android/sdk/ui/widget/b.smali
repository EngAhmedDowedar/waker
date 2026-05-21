.class public final Lcom/payssion/android/sdk/ui/widget/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/widget/EditText;

.field private b:Landroid/text/TextWatcher;

.field private c:Lcom/payssion/android/sdk/ui/a/k;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/payssion/android/sdk/ui/widget/b;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/payssion/android/sdk/ui/widget/b;->e:I

    iput-object p3, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/payssion/android/sdk/ui/widget/b;->a(Landroid/widget/EditText;)V

    invoke-direct {p0}, Lcom/payssion/android/sdk/ui/widget/b;->d()V

    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 2

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/b;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/b;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/payssion/android/sdk/ui/widget/b;->c()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iput-object p1, p0, Lcom/payssion/android/sdk/ui/widget/b;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/payssion/android/sdk/ui/widget/b;->c()Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private c()Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/b;->b:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/payssion/android/sdk/ui/widget/a;

    invoke-direct {v0, p0}, Lcom/payssion/android/sdk/ui/widget/a;-><init>(Lcom/payssion/android/sdk/ui/widget/b;)V

    iput-object v0, p0, Lcom/payssion/android/sdk/ui/widget/b;->b:Landroid/text/TextWatcher;

    :cond_0
    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/b;->b:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    new-instance v0, Lcom/payssion/android/sdk/ui/a/b;

    invoke-direct {v0}, Lcom/payssion/android/sdk/ui/a/b;-><init>()V

    iput-object v0, p0, Lcom/payssion/android/sdk/ui/widget/b;->c:Lcom/payssion/android/sdk/ui/a/k;

    iget v0, p0, Lcom/payssion/android/sdk/ui/widget/b;->e:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/payssion/android/sdk/ui/a/g;

    invoke-direct {v0}, Lcom/payssion/android/sdk/ui/a/g;-><init>()V

    :goto_0
    new-instance v1, Lcom/payssion/android/sdk/ui/a/b;

    invoke-direct {v1}, Lcom/payssion/android/sdk/ui/a/b;-><init>()V

    new-instance v2, Lcom/payssion/android/sdk/ui/a/i;

    invoke-direct {v2}, Lcom/payssion/android/sdk/ui/a/i;-><init>()V

    invoke-virtual {v1, v2}, Lcom/payssion/android/sdk/ui/a/k;->a(Lcom/payssion/android/sdk/ui/a/t;)V

    invoke-virtual {v1, v0}, Lcom/payssion/android/sdk/ui/a/k;->a(Lcom/payssion/android/sdk/ui/a/t;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/b;->c:Lcom/payssion/android/sdk/ui/a/k;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/a/k;->a(Lcom/payssion/android/sdk/ui/a/t;)V

    return-void

    :pswitch_1
    new-instance v0, Lcom/payssion/android/sdk/ui/a/a;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/a;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/payssion/android/sdk/ui/a/r;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/r;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/payssion/android/sdk/ui/a/m;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/m;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/payssion/android/sdk/ui/a/l;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/l;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/payssion/android/sdk/ui/a/r;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/widget/b;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/payssion/android/sdk/ui/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/payssion/android/sdk/ui/a/d;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/d;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/payssion/android/sdk/ui/a/h;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/h;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/payssion/android/sdk/ui/a/q;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/q;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/payssion/android/sdk/ui/a/f;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/f;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/payssion/android/sdk/ui/a/j;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/j;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/payssion/android/sdk/ui/a/u;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/u;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lcom/payssion/android/sdk/ui/a/p;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/p;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lcom/payssion/android/sdk/ui/a/o;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/o;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lcom/payssion/android/sdk/ui/a/c;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/c;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Lcom/payssion/android/sdk/ui/a/s;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/s;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Trying to create a custom validator but no classType has been specified."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    new-instance v0, Lcom/payssion/android/sdk/ui/a/e;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/a/e;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_10
        :pswitch_c
        :pswitch_d
        :pswitch_11
        :pswitch_4
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/payssion/android/sdk/ui/widget/b;->e:I

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/widget/b;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/payssion/android/sdk/ui/widget/b;->d()V

    return-void
.end method

.method public final a()Z
    .locals 3

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/b;->c:Lcom/payssion/android/sdk/ui/a/k;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/a/k;->a(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->c:Lcom/payssion/android/sdk/ui/a/k;

    invoke-virtual {v1}, Lcom/payssion/android/sdk/ui/a/k;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/b;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/widget/b;->c:Lcom/payssion/android/sdk/ui/a/k;

    invoke-virtual {v2}, Lcom/payssion/android/sdk/ui/a/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/widget/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/payssion/android/sdk/ui/widget/b;->d()V

    return-void
.end method
