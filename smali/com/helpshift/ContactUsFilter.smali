.class public final Lcom/helpshift/ContactUsFilter;
.super Ljava/lang/Object;
.source "ContactUsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/ContactUsFilter$1;,
        Lcom/helpshift/ContactUsFilter$LOCATION;
    }
.end annotation


# static fields
.field private static data:Lcom/helpshift/HSApiData;

.field private static enableContactUs:Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

.field private static storage:Lcom/helpshift/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;->ALWAYS:Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

    sput-object v0, Lcom/helpshift/ContactUsFilter;->enableContactUs:Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/helpshift/ContactUsFilter;->data:Lcom/helpshift/HSApiData;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/helpshift/HSApiData;

    invoke-direct {v0, p0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/ContactUsFilter;->data:Lcom/helpshift/HSApiData;

    .line 30
    sget-object v0, Lcom/helpshift/ContactUsFilter;->data:Lcom/helpshift/HSApiData;

    iget-object v0, v0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    sput-object v0, Lcom/helpshift/ContactUsFilter;->storage:Lcom/helpshift/HSStorage;

    .line 32
    :cond_0
    return-void
.end method

.method protected static setConfig(Ljava/util/HashMap;)V
    .locals 2
    .param p0, "configMap"    # Ljava/util/HashMap;

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "configMap":Ljava/util/HashMap;
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 39
    .restart local p0    # "configMap":Ljava/util/HashMap;
    :cond_0
    const-string/jumbo v1, "enableContactUs"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, "enableContactUsObj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

    if-eqz v1, :cond_2

    .line 42
    const-string/jumbo v1, "enableContactUs"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

    sput-object v1, Lcom/helpshift/ContactUsFilter;->enableContactUs:Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

    .line 50
    .end local v0    # "enableContactUsObj":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 43
    .restart local v0    # "enableContactUsObj":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "enableContactUsObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    sget-object v1, Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;->ALWAYS:Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

    sput-object v1, Lcom/helpshift/ContactUsFilter;->enableContactUs:Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

    goto :goto_0

    .line 47
    :cond_3
    sget-object v1, Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;->NEVER:Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

    sput-object v1, Lcom/helpshift/ContactUsFilter;->enableContactUs:Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

    goto :goto_0
.end method

.method protected static showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z
    .locals 6
    .param p0, "location"    # Lcom/helpshift/ContactUsFilter$LOCATION;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 53
    sget-object v4, Lcom/helpshift/ContactUsFilter$1;->$SwitchMap$com$helpshift$ContactUsFilter$LOCATION:[I

    invoke-virtual {p0}, Lcom/helpshift/ContactUsFilter$LOCATION;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 58
    sget-object v4, Lcom/helpshift/ContactUsFilter$1;->$SwitchMap$com$helpshift$Helpshift$ENABLE_CONTACT_US:[I

    sget-object v5, Lcom/helpshift/ContactUsFilter;->enableContactUs:Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

    invoke-virtual {v5}, Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    move v2, v3

    .line 84
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    move v2, v3

    .line 60
    goto :goto_0

    .line 64
    :pswitch_2
    sget-object v4, Lcom/helpshift/ContactUsFilter$1;->$SwitchMap$com$helpshift$ContactUsFilter$LOCATION:[I

    invoke-virtual {p0}, Lcom/helpshift/ContactUsFilter$LOCATION;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    move v2, v3

    .line 81
    goto :goto_0

    :pswitch_3
    move v2, v3

    .line 66
    goto :goto_0

    :pswitch_4
    move v2, v3

    .line 68
    goto :goto_0

    :pswitch_5
    move v2, v3

    .line 70
    goto :goto_0

    .line 72
    :pswitch_6
    sget-object v4, Lcom/helpshift/ContactUsFilter;->storage:Lcom/helpshift/HSStorage;

    sget-object v5, Lcom/helpshift/ContactUsFilter;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/helpshift/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "activeConversation":Ljava/lang/String;
    sget-object v4, Lcom/helpshift/ContactUsFilter;->storage:Lcom/helpshift/HSStorage;

    sget-object v5, Lcom/helpshift/ContactUsFilter;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/helpshift/HSStorage;->getArchivedConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "archivedConversation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v2, v3

    .line 76
    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 58
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 64
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
