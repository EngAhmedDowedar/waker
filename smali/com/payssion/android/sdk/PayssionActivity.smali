.class public Lcom/payssion/android/sdk/PayssionActivity;
.super Lcom/payssion/android/sdk/PayssionBaseActivity;


# static fields
.field public static final ACTION_REQUEST:Ljava/lang/String; = "request"

.field public static final RESULT_CANCELED:I = 0x303

.field public static final RESULT_DATA:Ljava/lang/String; = "data"

.field public static final RESULT_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final RESULT_ERROR:I = 0x304

.field public static final RESULT_OK:I = 0x302


# instance fields
.field a:Lcom/payssion/android/sdk/model/d;

.field b:Lcom/payssion/android/sdk/model/PayResponse;

.field c:Lcom/payssion/android/sdk/ui/l;

.field d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/payssion/android/sdk/PayssionBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/payssion/android/sdk/PayssionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/payssion/android/sdk/PayssionActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/payssion/android/sdk/PayssionActivity;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x304

    invoke-direct {p0, p1, v0}, Lcom/payssion/android/sdk/PayssionActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "Error"

    new-instance v1, Lcom/payssion/android/sdk/j;

    invoke-direct {v1, p0, p2, p1}, Lcom/payssion/android/sdk/j;-><init>(Lcom/payssion/android/sdk/PayssionActivity;ILjava/lang/String;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/payssion/android/sdk/PayssionActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/model/PayResponse;->getTodo()I

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/model/PayResponse;->checkTodo(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/model/PayResponse;->checkTodo(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {v0, v2}, Lcom/payssion/android/sdk/model/PayResponse;->checkTodo(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {v0, v3}, Lcom/payssion/android/sdk/model/PayResponse;->checkTodo(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/model/PayResponse;->getState()I

    move-result v0

    if-ne v2, v0, :cond_1

    const-string/jumbo v0, "PAYMENT_SUCCESS"

    invoke-static {p0}, Lcom/payssion/android/sdk/model/e;->a(Landroid/content/Context;)Lcom/payssion/android/sdk/model/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PAYSSION_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/payssion/android/sdk/model/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x302

    invoke-direct {p0, v0, v1}, Lcom/payssion/android/sdk/PayssionActivity;->a(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/model/PayResponse;->checkTodo(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->a:Lcom/payssion/android/sdk/model/d;

    instance-of v0, v0, Lcom/payssion/android/sdk/model/ContinuePayRequest;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->a:Lcom/payssion/android/sdk/model/d;

    check-cast v0, Lcom/payssion/android/sdk/model/ContinuePayRequest;

    iget-object v1, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {v1}, Lcom/payssion/android/sdk/model/PayResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->setTransactionId(Ljava/lang/String;)Lcom/payssion/android/sdk/model/ContinuePayRequest;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-static {p0, v0}, Lcom/a/a/a/a;->a(Lcom/payssion/android/sdk/PayssionBaseActivity;Lcom/payssion/android/sdk/model/PayResponse;)Lcom/payssion/android/sdk/ui/l;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->c:Lcom/payssion/android/sdk/ui/l;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->a:Lcom/payssion/android/sdk/model/d;

    instance-of v0, v0, Lcom/payssion/android/sdk/model/PayRequest;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/payssion/android/sdk/model/ContinuePayRequest;

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->a:Lcom/payssion/android/sdk/model/d;

    check-cast v0, Lcom/payssion/android/sdk/model/PayRequest;

    invoke-direct {v1, v0}, Lcom/payssion/android/sdk/model/ContinuePayRequest;-><init>(Lcom/payssion/android/sdk/model/PayRequest;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/model/PayResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/payssion/android/sdk/model/ContinuePayRequest;->setTransactionId(Ljava/lang/String;)Lcom/payssion/android/sdk/model/ContinuePayRequest;

    iput-object v1, p0, Lcom/payssion/android/sdk/PayssionActivity;->a:Lcom/payssion/android/sdk/model/d;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {v0, v3}, Lcom/payssion/android/sdk/model/PayResponse;->checkTodo(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/model/PayResponse;->getState()I

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/payssion/android/sdk/model/d;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->a:Lcom/payssion/android/sdk/model/d;

    return-object v0
.end method

.method public final a(Lcom/payssion/android/sdk/model/d;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p1, p0, v0}, Lcom/payssion/android/sdk/model/d;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v0, p1, Lcom/payssion/android/sdk/model/PayRequest;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/payssion/android/sdk/model/PayRequest;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/model/PayRequest;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/PayssionActivity;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->c:Lcom/payssion/android/sdk/ui/l;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/payssion/android/sdk/model/PayRequest;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/payssion/android/sdk/model/PayRequest;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/model/PayRequest;->moreInfoNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/payssion/android/sdk/model/PayRequest;

    new-instance v0, Lcom/payssion/android/sdk/ui/Fillform;

    invoke-direct {v0}, Lcom/payssion/android/sdk/ui/Fillform;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/payssion/android/sdk/ui/Fillform;->a(Lcom/payssion/android/sdk/PayssionBaseActivity;Lcom/payssion/android/sdk/model/PayRequest;)V

    iput-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->c:Lcom/payssion/android/sdk/ui/l;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/payssion/android/sdk/k;

    invoke-direct {v0, p0, p1}, Lcom/payssion/android/sdk/k;-><init>(Lcom/payssion/android/sdk/PayssionActivity;Lcom/payssion/android/sdk/model/d;)V

    invoke-static {p1, v0}, Lcom/payssion/android/sdk/Payssion;->handleRequest(Lcom/payssion/android/sdk/model/d;Lcom/payssion/android/sdk/model/PayssionResponseHandler;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x304

    invoke-direct {p0, v0, v1}, Lcom/payssion/android/sdk/PayssionActivity;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    const-string/jumbo v0, "pm_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->a:Lcom/payssion/android/sdk/model/d;

    check-cast v0, Lcom/payssion/android/sdk/model/PayRequest;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/model/PayRequest;->setPMId(Ljava/lang/String;)Lcom/payssion/android/sdk/model/PayRequest;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->c:Lcom/payssion/android/sdk/ui/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->c:Lcom/payssion/android/sdk/ui/l;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/l;->d()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0x303

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/PayssionActivity;->setResult(I)V

    :goto_1
    invoke-super {p0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onBackPressed()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onBack"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->d:Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x302

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "data"

    iget-object v3, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payssion/android/sdk/PayssionActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/payssion/android/sdk/model/PayResponse;

    iput-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->e:Z

    :cond_0
    invoke-virtual {p0}, Lcom/payssion/android/sdk/PayssionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onDestroy()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onPause()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onRestart()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onResume()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "data"

    iget-object v1, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 9

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onStart()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->b:Lcom/payssion/android/sdk/model/PayResponse;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/payssion/android/sdk/PayssionActivity;->d()V

    iput-boolean v4, p0, Lcom/payssion/android/sdk/PayssionActivity;->e:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/payssion/android/sdk/PayssionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "request"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Request is null!"

    const/16 v1, 0x304

    invoke-direct {p0, v0, v1}, Lcom/payssion/android/sdk/PayssionActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/payssion/android/sdk/model/d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/payssion/android/sdk/model/d;

    iput-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->a:Lcom/payssion/android/sdk/model/d;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Android "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_4

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Linux "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "https"

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/a/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/a/a/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ";"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; PayssionSDK/1.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user_agent"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/payssion/android/sdk/PayssionActivity;->a:Lcom/payssion/android/sdk/model/d;

    invoke-virtual {v1, v0}, Lcom/payssion/android/sdk/model/d;->setUserAgent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/PayssionActivity;->a:Lcom/payssion/android/sdk/model/d;

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/PayssionActivity;->a(Lcom/payssion/android/sdk/model/d;)V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onStop()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
