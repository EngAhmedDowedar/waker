.class public Lcom/payssion/android/sdk/ui/widget/FormEdit;
.super Landroid/widget/EditText;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/payssion/android/sdk/ui/widget/b;

.field private d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormEdit;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    :cond_2
    :try_start_0
    const-string/jumbo v0, "android.widget.TextView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "mEditor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string/jumbo v1, "android.widget.Editor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setErrorIcon"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/payssion/android/sdk/ui/widget/FormEdit;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/payssion/android/sdk/ui/widget/FormEdit;->a:I

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/payssion/android/sdk/ui/widget/b;

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->getContext()Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/payssion/android/sdk/ui/widget/b;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->getContext()Landroid/content/Context;

    invoke-virtual {v0, p3}, Lcom/payssion/android/sdk/ui/widget/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->getContext()Landroid/content/Context;

    invoke-virtual {v0, p2}, Lcom/payssion/android/sdk/ui/widget/b;->b(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormEdit;->c:Lcom/payssion/android/sdk/ui/widget/b;

    return-void

    :cond_0
    new-instance v0, Lcom/payssion/android/sdk/ui/widget/b;

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->getContext()Landroid/content/Context;

    invoke-direct {v0, p0, p1, p2}, Lcom/payssion/android/sdk/ui/widget/b;-><init>(Landroid/widget/EditText;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormEdit;->c:Lcom/payssion/android/sdk/ui/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormEdit;->c:Lcom/payssion/android/sdk/ui/widget/b;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/widget/FormEdit;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormEdit;->b:Ljava/lang/String;

    new-instance v1, Lcom/payssion/android/sdk/ui/widget/d;

    invoke-direct {v1, v0, p0}, Lcom/payssion/android/sdk/ui/widget/d;-><init>(Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string/jumbo v0, ""

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/widget/FormEdit;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[-\\.\\/]"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormEdit;->c:Lcom/payssion/android/sdk/ui/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormEdit;->c:Lcom/payssion/android/sdk/ui/widget/b;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/b;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormEdit;->d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x43

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/payssion/android/sdk/ui/widget/FormEdit;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
