.class public Lcom/payssion/android/sdk/ui/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field c:Lcom/payssion/android/sdk/PayssionBaseActivity;

.field d:Z

.field protected e:Lcom/payssion/android/sdk/model/PayResponse;

.field f:Ljava/util/List;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payssion/android/sdk/ui/l;->d:Z

    return-void
.end method


# virtual methods
.method protected final a(F)I
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v0, p1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a(F)I

    move-result v0

    return v0
.end method

.method protected final a()Landroid/view/View;
    .locals 6

    const/high16 v5, 0x42300000    # 44.0f

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/payssion/android/sdk/ui/l;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    :cond_0
    iget-object v1, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {p0, v5}, Lcom/payssion/android/sdk/ui/l;->a(F)I

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/payssion/android/sdk/ui/l;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/l;->g:Landroid/view/ViewGroup;

    const v2, -0xe0ddd4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/payssion/android/sdk/ui/l;->h:Landroid/widget/TextView;

    const/4 v1, -0x2

    invoke-static {v4, v1}, Lcom/a/a/a/a;->d(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/l;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/l;->h:Landroid/widget/TextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/l;->h:Landroid/widget/TextView;

    const-string/jumbo v3, "TITLE_PAYMENT_PAGE"

    invoke-virtual {p0, v3}, Lcom/payssion/android/sdk/ui/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/l;->h:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/l;->g:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/payssion/android/sdk/ui/l;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    new-instance v3, Landroid/widget/ImageButton;

    invoke-direct {v3, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/a/a/a/a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const-string/jumbo v4, "title_btn"

    invoke-static {v2, v4}, Lcom/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-virtual {p0, v2}, Lcom/payssion/android/sdk/ui/l;->a(F)I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/payssion/android/sdk/ui/l;->a(F)I

    move-result v4

    invoke-static {v2, v4}, Lcom/a/a/a/a;->d(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p0, v4}, Lcom/payssion/android/sdk/ui/l;->a(F)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Lcom/payssion/android/sdk/ui/m;

    invoke-direct {v1, p0, v0}, Lcom/payssion/android/sdk/ui/m;-><init>(Lcom/payssion/android/sdk/ui/l;[I)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->g:Landroid/view/ViewGroup;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/payssion/android/sdk/ui/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected final a(I)V
    .locals 9

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/payssion/android/sdk/ui/l;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const-string/jumbo v1, "ALERT_COPY_PAYMENT"

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/ui/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "PAY_LINK_EMAIL_CONTENT"

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/l;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/payssion/android/sdk/ui/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "SEND_PAYMENT_URL"

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/l;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/payssion/android/sdk/ui/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v4}, Lcom/payssion/android/sdk/PayssionBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "Have package"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string/jumbo v1, "SEND_PAYMENT_URL"

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/ui/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.INITIAL_INTENTS"

    new-array v0, v8, [Landroid/os/Parcelable;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "Package Name"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "com.paypal.android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.SEND"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "text/plain"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.TEXT"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const-string/jumbo v1, "No email app was found"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a(Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/payssion/android/sdk/PayssionBaseActivity;Lcom/payssion/android/sdk/model/PayResponse;)V
    .locals 3

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    iput-object p2, p0, Lcom/payssion/android/sdk/ui/l;->e:Lcom/payssion/android/sdk/model/PayResponse;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayResponse;->getAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/ui/l;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https://www.payssion.com/paylink/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payssion/android/sdk/ui/l;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected final a([I)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/high16 v9, 0x43480000    # 200.0f

    const/4 v0, -0x2

    const/4 v1, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, p1

    move v4, v1

    :goto_0
    if-lt v4, v6, :cond_0

    iput-object v5, p0, Lcom/payssion/android/sdk/ui/l;->f:Ljava/util/List;

    new-instance v6, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v6, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xa

    const/4 v5, 0x3

    move v2, v1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/a/a/a/a;->a(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/payssion/android/sdk/ui/n;

    invoke-direct {v2, p0}, Lcom/payssion/android/sdk/ui/n;-><init>(Lcom/payssion/android/sdk/ui/l;)V

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Lcom/payssion/android/sdk/ui/o;

    invoke-direct {v2, p0}, Lcom/payssion/android/sdk/ui/o;-><init>(Lcom/payssion/android/sdk/ui/l;)V

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xecebe6

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-static {v2, v1}, Lcom/a/a/a/a;->a(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2, v0}, Lcom/a/a/a/a;->c(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xf1f0ee

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-virtual {p0, v9}, Lcom/payssion/android/sdk/ui/l;->a(F)I

    move-result v3

    invoke-direct {v2, v1, v3, v0, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/payssion/android/sdk/ui/l;->i:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->i:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xeeece8

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->i:Landroid/widget/PopupWindow;

    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->i:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x33

    iget-object v3, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const-string/jumbo v4, "DM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, v9}, Lcom/payssion/android/sdk/ui/l;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/payssion/android/sdk/ui/l;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    new-instance v0, Lcom/payssion/android/sdk/ui/q;

    invoke-direct {v0, p0}, Lcom/payssion/android/sdk/ui/q;-><init>(Lcom/payssion/android/sdk/ui/l;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    :cond_0
    aget v7, p1, v4

    packed-switch v7, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v3, "copy"

    const-string/jumbo v2, "COPY_PAYMENT_URL"

    invoke-virtual {p0, v2}, Lcom/payssion/android/sdk/ui/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v8, Lcom/payssion/android/sdk/ui/i;

    invoke-direct {v8}, Lcom/payssion/android/sdk/ui/i;-><init>()V

    iput v7, v8, Lcom/payssion/android/sdk/ui/i;->a:I

    iput-object v3, v8, Lcom/payssion/android/sdk/ui/i;->b:Ljava/lang/String;

    iput-object v2, v8, Lcom/payssion/android/sdk/ui/i;->c:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-string/jumbo v3, "open_url"

    const-string/jumbo v2, "OPEN_PAYMENT_URL"

    invoke-virtual {p0, v2}, Lcom/payssion/android/sdk/ui/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :pswitch_2
    const-string/jumbo v3, "email"

    const-string/jumbo v2, "EMAIL_PAYMENT_URL"

    invoke-virtual {p0, v2}, Lcom/payssion/android/sdk/ui/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :pswitch_3
    const-string/jumbo v3, "send"

    const-string/jumbo v2, "SEND_PAYMENT_URL"

    invoke-virtual {p0, v2}, Lcom/payssion/android/sdk/ui/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/payssion/android/sdk/constant/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final c()V
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/payssion/android/sdk/ui/l;->d:Z

    return v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->b()V

    return-void
.end method
