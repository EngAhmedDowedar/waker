.class public Lcom/payssion/android/sdk/ui/widget/FormSelect;
.super Landroid/widget/AutoCompleteTextView;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:J

.field private b:Z

.field private c:I

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private f:Lcom/payssion/android/sdk/ui/widget/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->d:Ljava/util/ArrayList;

    iget v1, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payssion/android/sdk/model/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/payssion/android/sdk/model/c;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/payssion/android/sdk/ui/widget/b;

    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->getContext()Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/payssion/android/sdk/ui/widget/b;-><init>(Landroid/widget/EditText;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->f:Lcom/payssion/android/sdk/ui/widget/b;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->d:Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->e:Ljava/util/ArrayList;

    :goto_1
    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x109000a

    iget-object v3, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payssion/android/sdk/model/c;

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->e:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/payssion/android/sdk/model/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->f:Lcom/payssion/android/sdk/ui/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->f:Lcom/payssion/android/sdk/ui/widget/b;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->f:Lcom/payssion/android/sdk/ui/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->f:Lcom/payssion/android/sdk/ui/widget/b;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/b;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public enoughToFilter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->performFiltering(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->dismissDropDown()V

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->b:Z

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->b:Z

    iput p3, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->c:I

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->getText()Landroid/text/Editable;

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
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->a:J

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->dismissDropDown()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->b:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->requestFocus()Z

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->showDropDown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payssion/android/sdk/ui/widget/FormSelect;->b:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object p3, v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    :cond_0
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

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
