.class final Lcom/helpshift/Helpshift$3;
.super Ljava/lang/Object;
.source "Helpshift.java"

# interfaces
.implements Lcom/helpshift/HSCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/Helpshift;->createMetadataCallback(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$config:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lcom/helpshift/Helpshift$3;->val$config:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/util/HashMap;
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/helpshift/Helpshift$3;->val$config:Ljava/util/HashMap;

    const-string/jumbo v1, "hs-custom-metadata"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/helpshift/Helpshift$3;->val$config:Ljava/util/HashMap;

    const-string/jumbo v1, "hs-custom-metadata"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 987
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
