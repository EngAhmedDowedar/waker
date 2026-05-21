.class public Lcom/payssion/android/sdk/MainActivity;
.super Lcom/payssion/android/sdk/PayssionBaseActivity;


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field a:Lcom/payssion/android/sdk/ui/widget/FormEdit;

.field private b:Landroid/text/TextWatcher;

.field private c:Landroid/text/TextWatcher;

.field private d:Landroid/widget/RadioGroup;

.field private e:Landroid/widget/RadioButton;

.field private g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Belgium"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "France"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Italy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Germany"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "Spain"

    aput-object v2, v0, v1

    sput-object v0, Lcom/payssion/android/sdk/MainActivity;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/payssion/android/sdk/PayssionBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payssion/android/sdk/MainActivity;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/payssion/android/sdk/MainActivity;)Landroid/widget/RadioGroup;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/MainActivity;->d:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic b(Lcom/payssion/android/sdk/MainActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/MainActivity;->e:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic c(Lcom/payssion/android/sdk/MainActivity;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/MainActivity;->b:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic d(Lcom/payssion/android/sdk/MainActivity;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/MainActivity;->c:Landroid/text/TextWatcher;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "onActivityResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/payssion/android/sdk/MainActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/payssion/android/sdk/R$layout;->edittext:I

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/MainActivity;->setContentView(I)V

    sget v0, Lcom/payssion/android/sdk/R$id;->et_firstname:I

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payssion/android/sdk/ui/widget/FormEdit;

    iput-object v0, p0, Lcom/payssion/android/sdk/MainActivity;->a:Lcom/payssion/android/sdk/ui/widget/FormEdit;

    iget-object v0, p0, Lcom/payssion/android/sdk/MainActivity;->a:Lcom/payssion/android/sdk/ui/widget/FormEdit;

    new-instance v1, Lcom/payssion/android/sdk/a;

    invoke-direct {v1, p0}, Lcom/payssion/android/sdk/a;-><init>(Lcom/payssion/android/sdk/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v0, Lcom/payssion/android/sdk/R$id;->txtCPF:I

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "###.###.###-##"

    invoke-static {v1, v0}, Lcom/payssion/android/sdk/c;->a(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/payssion/android/sdk/MainActivity;->b:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/payssion/android/sdk/MainActivity;->b:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string/jumbo v1, "##.###.###/####-##"

    invoke-static {v1, v0}, Lcom/payssion/android/sdk/c;->a(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/payssion/android/sdk/MainActivity;->c:Landroid/text/TextWatcher;

    sget v1, Lcom/payssion/android/sdk/R$id;->rdCNPJ:I

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/payssion/android/sdk/MainActivity;->e:Landroid/widget/RadioButton;

    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/payssion/android/sdk/R$id;->radioGroup:I

    invoke-virtual {p0, v1}, Lcom/payssion/android/sdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/payssion/android/sdk/MainActivity;->d:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/payssion/android/sdk/MainActivity;->d:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/payssion/android/sdk/b;

    invoke-direct {v2, p0, v0}, Lcom/payssion/android/sdk/b;-><init>(Lcom/payssion/android/sdk/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x109000a

    sget-object v2, Lcom/payssion/android/sdk/MainActivity;->f:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v1, Lcom/payssion/android/sdk/ui/widget/FormSelect;

    invoke-direct {v1, p0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/payssion/android/sdk/ui/widget/FormSelect;->setAdapter(Landroid/widget/ListAdapter;)V

    sget v0, Lcom/payssion/android/sdk/R$id;->layout:I

    invoke-virtual {p0, v0}, Lcom/payssion/android/sdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v3, v3}, Lcom/a/a/a/a;->c(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/payssion/android/sdk/MainActivity;->g:Ljava/util/List;

    const-string/jumbo v3, "BEIJING"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/payssion/android/sdk/MainActivity;->g:Ljava/util/List;

    const-string/jumbo v3, "SHANGHAI"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/payssion/android/sdk/MainActivity;->g:Ljava/util/List;

    const-string/jumbo v3, "SHENZHEN"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/payssion/android/sdk/MainActivity;->g:Ljava/util/List;

    const-string/jumbo v3, "FUZHOU"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/payssion/android/sdk/MainActivity;->g:Ljava/util/List;

    const-string/jumbo v3, "XIAMEN"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    iget-object v4, p0, Lcom/payssion/android/sdk/MainActivity;->g:Ljava/util/List;

    invoke-direct {v1, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v3, Landroid/widget/Spinner;

    invoke-direct {v3, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "BUTTON"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/payssion/android/sdk/PayssionBaseActivity;->onStart()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
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
