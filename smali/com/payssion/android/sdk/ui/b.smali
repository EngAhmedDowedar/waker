.class final Lcom/payssion/android/sdk/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/ui/Fillform;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/ui/Fillform;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/b;->a:Lcom/payssion/android/sdk/ui/Fillform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/b;->a:Lcom/payssion/android/sdk/ui/Fillform;

    iget-object v0, v0, Lcom/payssion/android/sdk/ui/Fillform;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/b;->a:Lcom/payssion/android/sdk/ui/Fillform;

    iget-object v0, v0, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/b;->a:Lcom/payssion/android/sdk/ui/Fillform;

    iget-object v1, v1, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a()Lcom/payssion/android/sdk/model/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a(Lcom/payssion/android/sdk/model/d;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Lcom/payssion/android/sdk/ui/widget/FormEdit;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/payssion/android/sdk/ui/widget/FormEdit;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->d()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/b;->a:Lcom/payssion/android/sdk/ui/Fillform;

    iget-object v1, v1, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const-string/jumbo v3, "info"

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0, v7}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/payssion/android/sdk/ui/b;->a:Lcom/payssion/android/sdk/ui/Fillform;

    iget-object v1, v1, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a()Lcom/payssion/android/sdk/model/d;

    move-result-object v5

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/payssion/android/sdk/model/d;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/b;->a:Lcom/payssion/android/sdk/ui/Fillform;

    iget-boolean v1, v1, Lcom/payssion/android/sdk/ui/Fillform;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/b;->a:Lcom/payssion/android/sdk/ui/Fillform;

    iget-object v5, v1, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->a()I

    move-result v5

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/b;->a:Lcom/payssion/android/sdk/ui/Fillform;

    iget-object v1, v1, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const-string/jumbo v5, "CPF"

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x7

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->a()I

    move-result v5

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/b;->a:Lcom/payssion/android/sdk/ui/Fillform;

    iget-object v1, v1, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const-string/jumbo v5, "EMAIL"

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    instance-of v1, v0, Lcom/payssion/android/sdk/ui/widget/FormSelect;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/payssion/android/sdk/ui/widget/FormSelect;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->c()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/payssion/android/sdk/ui/b;->a:Lcom/payssion/android/sdk/ui/Fillform;

    iget-object v1, v1, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    const-string/jumbo v3, "info"

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0, v7}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v2

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/payssion/android/sdk/ui/b;->a:Lcom/payssion/android/sdk/ui/Fillform;

    iget-object v1, v1, Lcom/payssion/android/sdk/ui/Fillform;->c:Lcom/payssion/android/sdk/PayssionBaseActivity;

    invoke-virtual {v1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->a()Lcom/payssion/android/sdk/model/d;

    move-result-object v5

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/payssion/android/sdk/model/d;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
