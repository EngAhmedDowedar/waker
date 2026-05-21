.class public Lcom/payssion/android/sdk/PayssionBaseActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->b:I

    const-string/jumbo v0, "en"

    iput-object v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(F)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a()Lcom/payssion/android/sdk/model/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/payssion/android/sdk/model/d;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/payssion/android/sdk/model/e;->a(Landroid/content/Context;)Lcom/payssion/android/sdk/model/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PAYSSION_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/payssion/android/sdk/model/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->a:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, p2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->a:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->b:I

    return-void
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->b:I

    iget v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->b:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->b:I

    :cond_0
    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :try_start_0
    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->a:Landroid/app/ProgressDialog;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionBaseActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->setTheme(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
