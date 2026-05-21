.class public Lcom/payssion/android/sdk/ui/Fillform;
.super Lcom/payssion/android/sdk/ui/l;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/payssion/android/sdk/ui/l;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payssion/android/sdk/ui/Fillform;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payssion/android/sdk/ui/Fillform;->b:Z

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/payssion/android/sdk/model/b;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v1, p2, Lcom/payssion/android/sdk/model/b;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/Fillform;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v2, v3, v1, v3, v3}, Lcom/a/a/a/a;->a(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/payssion/android/sdk/ui/widget/FormEdit;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormEdit;-><init>(Landroid/content/Context;)V

    iget v1, p2, Lcom/payssion/android/sdk/model/b;->a:I

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->a(I)V

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->setTag(Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->b(Ljava/lang/String;)V

    iget v1, p2, Lcom/payssion/android/sdk/model/b;->a:I

    if-ne v4, v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->setInputType(I)V

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    new-instance v1, Lcom/payssion/android/sdk/ui/c;

    invoke-direct {v1, v0}, Lcom/payssion/android/sdk/ui/c;-><init>(Lcom/payssion/android/sdk/ui/widget/FormEdit;)V

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    :cond_2
    iget v1, p2, Lcom/payssion/android/sdk/model/b;->a:I

    if-eq v6, v1, :cond_3

    iget v1, p2, Lcom/payssion/android/sdk/model/b;->a:I

    if-ne v5, v1, :cond_5

    :cond_3
    invoke-virtual {v0, v2}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->setInputType(I)V

    :cond_4
    :goto_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p2, Lcom/payssion/android/sdk/model/b;->d:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->c:Ljava/lang/String;

    iget-object v2, p2, Lcom/payssion/android/sdk/model/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x7

    iget v2, p2, Lcom/payssion/android/sdk/model/b;->a:I

    if-ne v1, v2, :cond_4

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->setInputType(I)V

    goto :goto_2

    :pswitch_1
    new-instance v0, Lcom/payssion/android/sdk/ui/widget/FormDate;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormDate;-><init>(Landroid/content/Context;)V

    iget v1, p2, Lcom/payssion/android/sdk/model/b;->a:I

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormDate;->a(I)V

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormDate;->setTag(Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormDate;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormDate;->b(Ljava/lang/String;)V

    iget v1, p2, Lcom/payssion/android/sdk/model/b;->a:I

    if-ne v4, v1, :cond_6

    invoke-virtual {v0, v2}, Lcom/payssion/android/sdk/ui/widget/FormDate;->setInputType(I)V

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormDate;->a(Ljava/lang/String;)V

    :goto_3
    new-instance v1, Lcom/payssion/android/sdk/ui/d;

    invoke-direct {v1, v0}, Lcom/payssion/android/sdk/ui/d;-><init>(Lcom/payssion/android/sdk/ui/widget/FormDate;)V

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormDate;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_0

    :cond_6
    iget v1, p2, Lcom/payssion/android/sdk/model/b;->a:I

    if-eq v6, v1, :cond_7

    iget v1, p2, Lcom/payssion/android/sdk/model/b;->a:I

    if-ne v5, v1, :cond_9

    :cond_7
    invoke-virtual {v0, v2}, Lcom/payssion/android/sdk/ui/widget/FormDate;->setInputType(I)V

    :cond_8
    :goto_4
    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->c:Ljava/lang/String;

    iget-object v2, p2, Lcom/payssion/android/sdk/model/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/payssion/android/sdk/ui/widget/FormDate;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/4 v1, 0x7

    iget v2, p2, Lcom/payssion/android/sdk/model/b;->a:I

    if-ne v1, v2, :cond_8

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormDate;->setInputType(I)V

    goto :goto_4

    :pswitch_2
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/payssion/android/sdk/ui/e;

    invoke-direct {v1, p0}, Lcom/payssion/android/sdk/ui/e;-><init>(Lcom/payssion/android/sdk/ui/Fillform;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/payssion/android/sdk/ui/widget/FormSelect;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormSelect;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->setTag(Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->a(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/payssion/android/sdk/model/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->a(Ljava/util/ArrayList;)V

    new-instance v1, Lcom/payssion/android/sdk/ui/f;

    invoke-direct {v1, v0}, Lcom/payssion/android/sdk/ui/f;-><init>(Lcom/payssion/android/sdk/ui/widget/FormSelect;)V

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 7

    const/4 v0, -0x1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    move-result v2

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    move-result v1

    const/high16 v3, 0x43c80000    # 400.0f

    invoke-virtual {p0, v3}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    new-instance v6, Landroid/widget/Button;

    iget-object v3, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v6, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    move v3, v1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/a/a/a/a;->a(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {}, Lcom/a/a/a/a;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v0, "TEXT_PAY"

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/ui/Fillform;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/payssion/android/sdk/ui/b;

    invoke-direct {v0, p0}, Lcom/payssion/android/sdk/ui/b;-><init>(Lcom/payssion/android/sdk/ui/Fillform;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/payssion/android/sdk/PayssionBaseActivity;Lcom/payssion/android/sdk/model/PayRequest;)V
    .locals 12

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p0, v2}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    move-result v6

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {p0, v3}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    move-result v4

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {p0, v3}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    iget-object v3, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-static {v3, v10, v11, v11}, Lcom/a/a/a/a;->a(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v7

    const v3, -0xb0a09

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/Fillform;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v3, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-static {v11, v11}, Lcom/a/a/a/a;->c(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v10}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-virtual {v7, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-static {v5, v10, v11, v0}, Lcom/a/a/a/a;->a(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v2, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v9, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0, v2}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    move-result v2

    const/16 v5, 0x11

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/a/a/a/a;->a(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayRequest;->getPMId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "payssion/pm/icon"

    invoke-static {v3, v4, v5}, Lcom/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-static {v2, v10, v11, v0}, Lcom/a/a/a/a;->a(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v0}, Lcom/a/a/a/a;->c(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const-string/jumbo v4, "Please fill in the following to continue:"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/payssion/android/sdk/model/b;

    invoke-direct {v0}, Lcom/payssion/android/sdk/model/b;-><init>()V

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayRequest;->getPayerEmail()Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/String;

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "payer_email"

    iput-object v3, v0, Lcom/payssion/android/sdk/model/b;->g:Ljava/lang/String;

    const/4 v3, 0x7

    iput v3, v0, Lcom/payssion/android/sdk/model/b;->a:I

    const-string/jumbo v3, "Email"

    iput-object v3, v0, Lcom/payssion/android/sdk/model/b;->b:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/payssion/android/sdk/ui/Fillform;->a(Landroid/view/ViewGroup;Lcom/payssion/android/sdk/model/b;)Landroid/view/View;

    :cond_0
    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayRequest;->getPayerRef()Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/String;

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v10, v0, Lcom/payssion/android/sdk/model/b;->a:I

    const-string/jumbo v1, "payer_ref"

    iput-object v1, v0, Lcom/payssion/android/sdk/model/b;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayRequest;->getPMId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "qiwi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/payssion/android/sdk/model/b;->b:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/payssion/android/sdk/ui/Fillform;->a(Landroid/view/ViewGroup;Lcom/payssion/android/sdk/model/b;)Landroid/view/View;

    :cond_2
    invoke-direct {p0, v2}, Lcom/payssion/android/sdk/ui/Fillform;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v0, v7}, Lcom/payssion/android/sdk/PayssionBaseActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_3
    const-string/jumbo v3, "_br"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    iput v1, v0, Lcom/payssion/android/sdk/model/b;->a:I

    const-string/jumbo v1, "###.###.###-##"

    iput-object v1, v0, Lcom/payssion/android/sdk/model/b;->e:Ljava/lang/String;

    const-string/jumbo v1, "CPF"

    iput-object v1, v0, Lcom/payssion/android/sdk/model/b;->b:Ljava/lang/String;

    const-string/jumbo v1, "wrong cpf"

    iput-object v1, v0, Lcom/payssion/android/sdk/model/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lcom/payssion/android/sdk/PayssionBaseActivity;Lcom/payssion/android/sdk/model/PayResponse;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x2

    const/4 v10, -0x1

    invoke-super {p0, p1, p2}, Lcom/payssion/android/sdk/ui/l;->a(Lcom/payssion/android/sdk/PayssionBaseActivity;Lcom/payssion/android/sdk/model/PayResponse;)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p0, v2}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    move-result v6

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {p0, v3}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    move-result v4

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {p0, v3}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    iget-object v3, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-static {v3, v11, v10, v10}, Lcom/a/a/a/a;->a(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v7

    const v3, -0xb0a09

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/Fillform;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v3, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v10}, Lcom/a/a/a/a;->c(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v11}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-virtual {v7, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-static {v5, v11, v10, v0}, Lcom/a/a/a/a;->a(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v2, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v9, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0, v2}, Lcom/payssion/android/sdk/ui/Fillform;->a(F)I

    move-result v2

    const/16 v5, 0x11

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/a/a/a/a;->a(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayResponse;->getPMId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "payssion/pm/icon"

    invoke-static {v2, v3, v4}, Lcom/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-static {v1, v11, v10, v0}, Lcom/a/a/a/a;->a(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v0}, Lcom/a/a/a/a;->c(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string/jumbo v3, "Please fill in the following to continue:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayResponse;->getForm()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, v8}, Lcom/payssion/android/sdk/ui/Fillform;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v0, v7}, Lcom/payssion/android/sdk/PayssionBaseActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payssion/android/sdk/model/b;

    invoke-direct {p0, v1, v0}, Lcom/payssion/android/sdk/ui/Fillform;->a(Landroid/view/ViewGroup;Lcom/payssion/android/sdk/model/b;)Landroid/view/View;

    goto :goto_0
.end method
