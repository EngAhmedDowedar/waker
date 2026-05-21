.class final Lcom/payssion/android/sdk/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/payssion/android/sdk/ui/Fillform;


# direct methods
.method constructor <init>(Lcom/payssion/android/sdk/ui/Fillform;)V
    .locals 0

    iput-object p1, p0, Lcom/payssion/android/sdk/ui/e;->a:Lcom/payssion/android/sdk/ui/Fillform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/payssion/android/sdk/ui/e;->a:Lcom/payssion/android/sdk/ui/Fillform;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/payssion/android/sdk/ui/Fillform;->b:Z

    :cond_0
    return-void
.end method
