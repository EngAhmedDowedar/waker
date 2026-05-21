.class final Lcom/payssion/android/sdk/ui/o;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/ui/l;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/ui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    iget-object v0, v0, Lcom/payssion/android/sdk/ui/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    iget-object v0, v0, Lcom/payssion/android/sdk/ui/l;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    iget-object v0, v0, Lcom/payssion/android/sdk/ui/l;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payssion/android/sdk/ui/i;

    iget v0, v0, Lcom/payssion/android/sdk/ui/i;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v6, -0x2

    const/high16 v5, 0x41700000    # 15.0f

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    iget-object v0, v0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/a/a/a/a;->a(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object p2

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v1, v2}, Lcom/payssion/android/sdk/ui/l;->a(F)I

    move-result v1

    invoke-direct {v0, v1, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    invoke-virtual {v0, v7}, Lcom/payssion/android/sdk/ui/l;->a(F)I

    move-result v0

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    invoke-virtual {v1, v5}, Lcom/payssion/android/sdk/ui/l;->a(F)I

    move-result v1

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    invoke-virtual {v2, v5}, Lcom/payssion/android/sdk/ui/l;->a(F)I

    move-result v2

    iget-object v3, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    invoke-virtual {v3, v5}, Lcom/payssion/android/sdk/ui/l;->a(F)I

    move-result v3

    iget-object v4, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    invoke-virtual {v4, v7}, Lcom/payssion/android/sdk/ui/l;->a(F)I

    move-result v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {}, Lcom/a/a/a/a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    iget-object v2, v2, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x10

    invoke-static {v6, v2}, Lcom/a/a/a/a;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p2, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    iget-object v0, v0, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x13

    invoke-static {v6, v0}, Lcom/a/a/a/a;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/payssion/android/sdk/ui/p;

    invoke-direct {v0}, Lcom/payssion/android/sdk/ui/p;-><init>()V

    iput-object v1, v0, Lcom/payssion/android/sdk/ui/p;->a:Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/payssion/android/sdk/ui/p;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/payssion/android/sdk/ui/o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payssion/android/sdk/ui/i;

    iget-object v2, v1, Lcom/payssion/android/sdk/ui/p;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/payssion/android/sdk/ui/o;->a:Lcom/payssion/android/sdk/ui/l;

    iget-object v3, v3, Lcom/payssion/android/sdk/ui/l;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    iget-object v4, v0, Lcom/payssion/android/sdk/ui/i;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, v1, Lcom/payssion/android/sdk/ui/p;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/payssion/android/sdk/ui/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payssion/android/sdk/ui/p;

    move-object v1, v0

    goto :goto_0
.end method
