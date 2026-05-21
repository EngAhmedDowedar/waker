.class final Lcom/payssion/android/sdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/MainActivity;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/b;->a:Lcom/payssion/android/sdk/MainActivity;

    iput-object p2, p0, Lcom/payssion/android/sdk/b;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    iget-object v0, p0, Lcom/payssion/android/sdk/b;->a:Lcom/payssion/android/sdk/MainActivity;

    invoke-static {v0}, Lcom/payssion/android/sdk/MainActivity;->a(Lcom/payssion/android/sdk/MainActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iget-object v1, p0, Lcom/payssion/android/sdk/b;->a:Lcom/payssion/android/sdk/MainActivity;

    invoke-static {v1}, Lcom/payssion/android/sdk/MainActivity;->b(Lcom/payssion/android/sdk/MainActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/b;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/payssion/android/sdk/b;->a:Lcom/payssion/android/sdk/MainActivity;

    invoke-static {v1}, Lcom/payssion/android/sdk/MainActivity;->c(Lcom/payssion/android/sdk/MainActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/b;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/payssion/android/sdk/b;->a:Lcom/payssion/android/sdk/MainActivity;

    invoke-static {v1}, Lcom/payssion/android/sdk/MainActivity;->d(Lcom/payssion/android/sdk/MainActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/payssion/android/sdk/b;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/payssion/android/sdk/b;->a:Lcom/payssion/android/sdk/MainActivity;

    invoke-static {v1}, Lcom/payssion/android/sdk/MainActivity;->d(Lcom/payssion/android/sdk/MainActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/payssion/android/sdk/b;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/payssion/android/sdk/b;->a:Lcom/payssion/android/sdk/MainActivity;

    invoke-static {v1}, Lcom/payssion/android/sdk/MainActivity;->c(Lcom/payssion/android/sdk/MainActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method
