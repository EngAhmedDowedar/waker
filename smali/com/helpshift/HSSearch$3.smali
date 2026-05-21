.class final Lcom/helpshift/HSSearch$3;
.super Ljava/util/HashMap;
.source "HSSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HSSearch;->generateVariations(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ngram:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/helpshift/HSSearch$3;->val$ngram:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 103
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/helpshift/HSSearch$3;->val$ngram:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/HSSearch$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "ngram"

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/HSSearch$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method
