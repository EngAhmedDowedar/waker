.class public Lcom/payssion/android/sdk/ui/Instruct;
.super Lcom/payssion/android/sdk/ui/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/payssion/android/sdk/ui/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/payssion/android/sdk/PayssionBaseActivity;Lcom/payssion/android/sdk/model/PayResponse;)V
    .locals 12

    invoke-super {p0, p1, p2}, Lcom/payssion/android/sdk/ui/l;->a(Lcom/payssion/android/sdk/PayssionBaseActivity;Lcom/payssion/android/sdk/model/PayResponse;)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/ui/Instruct;->a(F)I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/ui/Instruct;->a(F)I

    move-result v6

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/ui/Instruct;->a(F)I

    move-result v4

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/ui/Instruct;->a(F)I

    move-result v7

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v5, -0x1

    invoke-static {v1, v2, v3, v5}, Lcom/a/a/a/a;->a(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v8

    const v1, -0xb0a09

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/Instruct;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/a/a/a/a;->c(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v9, -0x2

    invoke-static {v2, v3, v5, v9}, Lcom/a/a/a/a;->a(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v2, v0, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0, v2}, Lcom/payssion/android/sdk/ui/Instruct;->a(F)I

    move-result v2

    const/4 v3, 0x0

    const/16 v5, 0x11

    invoke-static/range {v0 .. v5}, Lcom/a/a/a/a;->a(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayResponse;->getPMId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "payssion/pm/icon"

    invoke-static {v1, v2, v3}, Lcom/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    move v2, v6

    invoke-static/range {v0 .. v5}, Lcom/a/a/a/a;->a(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    const/high16 v0, -0x1000000

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayResponse;->getPMId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "boleto_br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "INSTRUCT_BOLETO"

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayResponse;->getPayerEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payssion/android/sdk/ui/Instruct;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/ui/Instruct;->a(F)I

    move-result v2

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/ui/Instruct;->a(F)I

    move-result v1

    const/high16 v0, 0x43c80000    # 400.0f

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/ui/Instruct;->a(F)I

    new-instance v10, Landroid/widget/Button;

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v10, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    const/16 v5, 0x11

    move v3, v1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/a/a/a/a;->a(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setTextColor(I)V

    const-string/jumbo v1, "SEND_PAYMENT_URL_CAPITAL"

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/ui/Instruct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/payssion/android/sdk/ui/g;

    invoke-direct {v1, p0}, Lcom/payssion/android/sdk/ui/g;-><init>(Lcom/payssion/android/sdk/ui/Instruct;)V

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/a/a/a/a;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayResponse;->isBankTransferAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayResponse;->getAmount()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/payssion/android/sdk/a/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "R$ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2e

    const/16 v4, 0x2c

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "<strong><font color=\"red\">valor exato</font></strong> de <strong><font color=\"red\">%s</font></strong> (incluindo decimais) antes das 23:59 do dia corrente na conta abaixo: </html>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v9, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/a/a;->a(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v2, v6

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x2

    const v3, -0x484441

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayResponse;->getBankAccount()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, -0x6e6c6a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string/jumbo v1, "Sugerimos que apenas se realizem dep\u00f3sitos via on-line bank.<br/>Dep\u00f3sitos realizados em outros bancos ou via caixa autom\u00e1tico poder\u00e3o demorar at\u00e9 2 dias \u00fateis para serem aprovados.<br/>N\u00e3o ser\u00e3o aceitos dep\u00f3sitos em cheque."

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v7, v3, v7}, Lcom/a/a/a/a;->a(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v0, v8}, Lcom/payssion/android/sdk/PayssionBaseActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_3
    const-string/jumbo v0, "INSTRUCT_TIP"

    invoke-virtual {p2}, Lcom/payssion/android/sdk/model/PayResponse;->getPayerEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payssion/android/sdk/ui/Instruct;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payssion/android/sdk/model/a;

    iget-object v3, v0, Lcom/payssion/android/sdk/model/a;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/payssion/android/sdk/model/a;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v10, -0x2

    invoke-static {v4, v5, v6, v10}, Lcom/a/a/a/a;->a(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {p0, v6}, Lcom/payssion/android/sdk/ui/Instruct;->a(F)I

    move-result v6

    const/4 v10, -0x2

    invoke-static {v6, v10}, Lcom/a/a/a/a;->c(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    const v10, -0x6e6c6a

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ":"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/payssion/android/sdk/ui/Instruct;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-static {v5, v6}, Lcom/a/a/a/a;->c(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    const/high16 v6, -0x1000000

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method
