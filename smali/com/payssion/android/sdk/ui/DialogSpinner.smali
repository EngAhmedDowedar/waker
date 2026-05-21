.class public Lcom/payssion/android/sdk/ui/DialogSpinner;
.super Landroid/widget/Spinner;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# virtual methods
.method public performClick()Z
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/DialogSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/payssion/android/sdk/ui/DialogSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    new-instance v2, Lcom/payssion/android/sdk/ui/a;

    invoke-direct {v2, p0}, Lcom/payssion/android/sdk/ui/a;-><init>(Lcom/payssion/android/sdk/ui/DialogSpinner;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x1

    return v0
.end method
