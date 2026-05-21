.class public Lcom/payssion/android/sdk/ui/a/n;
.super Lcom/payssion/android/sdk/ui/a/t;


# instance fields
.field private a:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/payssion/android/sdk/ui/a/t;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "_pattern must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/payssion/android/sdk/ui/a/n;->a:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;)Z
    .locals 2

    instance-of v0, p1, Lcom/payssion/android/sdk/ui/widget/FormEdit;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/payssion/android/sdk/ui/widget/FormEdit;

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/a/n;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/payssion/android/sdk/ui/widget/FormEdit;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/payssion/android/sdk/ui/a/n;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method
