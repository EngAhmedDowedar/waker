.class final Lcom/payssion/android/sdk/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/ui/DialogSpinner;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/ui/DialogSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/a;->a:Lcom/payssion/android/sdk/ui/DialogSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/a;->a:Lcom/payssion/android/sdk/ui/DialogSpinner;

    invoke-virtual {v0, p2}, Lcom/payssion/android/sdk/ui/DialogSpinner;->setSelection(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
