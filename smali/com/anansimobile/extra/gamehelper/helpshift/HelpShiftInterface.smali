.class public Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;
.super Ljava/lang/Object;
.source "HelpShiftInterface.java"


# static fields
.field private static mMsgHandler:Landroid/os/Handler;

.field private static sCtx:Landroid/app/Activity;

.field private static sDebug:Z

.field private static sPlayerId:Ljava/lang/String;

.field private static sPlayerName:Ljava/lang/String;

.field private static sServerIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->sCtx:Landroid/app/Activity;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->sDebug:Z

    .line 26
    const/4 v0, -0x1

    sput v0, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->sServerIdx:I

    .line 188
    new-instance v0, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface$2;

    invoke-direct {v0}, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface$2;-><init>()V

    sput-object v0, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->mMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GenMetaData(ZZLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p0, "enanbleContactUs"    # Z
    .param p1, "goldBuyer"    # Z
    .param p2, "strCustomMetaData"    # Ljava/lang/String;
    .param p3, "strCustomTags"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v1, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v2, "customMetadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "gotoConversationAfterContactUs"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v5, "showConversationResolutionQuestion"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    if-eqz p0, :cond_3

    .line 143
    if-eqz p1, :cond_2

    .line 144
    const-string/jumbo v5, "enableContactUs"

    sget-object v6, Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;->ALWAYS:Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :goto_0
    new-instance v5, Lcom/google/gson/GsonBuilder;

    invoke-direct {v5}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 153
    .local v3, "gson":Lcom/google/gson/Gson;
    if-eqz p2, :cond_0

    .line 154
    const-class v5, Ljava/util/HashMap;

    invoke-virtual {v3, p2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "customMetadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v2, Ljava/util/HashMap;

    .line 157
    .restart local v2    # "customMetadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    if-eqz p3, :cond_1

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v0, "arrayTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v5, Ljava/util/ArrayList;

    invoke-virtual {v3, p3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "arrayTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 160
    .restart local v0    # "arrayTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 162
    .local v4, "stringArr":[Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    const-string/jumbo v5, "hs-tags"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v0    # "arrayTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "stringArr":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "hs-custom-metadata"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-object v1

    .line 146
    .end local v3    # "gson":Lcom/google/gson/Gson;
    :cond_2
    const-string/jumbo v5, "enableContactUs"

    sget-object v6, Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;->AFTER_VIEWING_FAQS:Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_3
    const-string/jumbo v5, "enableContactUs"

    sget-object v6, Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;->NEVER:Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static Init(Landroid/app/Activity;Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1, p2, p3, p4}, Lcom/helpshift/Helpshift;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sput-object p0, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->sCtx:Landroid/app/Activity;

    .line 36
    new-instance v0, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface$1;

    invoke-direct {v0}, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface$1;-><init>()V

    invoke-static {v0}, Lcom/helpshift/Helpshift;->setDelegate(Lcom/helpshift/Helpshift$HelpshiftDelegate;)V

    .line 82
    return-void
.end method

.method public static LoginHelper(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "playerId"    # Ljava/lang/String;
    .param p1, "playerName"    # Ljava/lang/String;
    .param p2, "serverIdx"    # I

    .prologue
    .line 92
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 93
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 94
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "playerId"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "playerName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "serverIdx"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    sget-object v1, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method

.method public static LoginHelperInterval(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "playerId"    # Ljava/lang/String;
    .param p1, "playerName"    # Ljava/lang/String;
    .param p2, "serverIdx"    # I

    .prologue
    .line 101
    invoke-static {}, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->LogoutHelper()V

    .line 103
    sput-object p0, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->sPlayerId:Ljava/lang/String;

    .line 104
    sput-object p1, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->sPlayerName:Ljava/lang/String;

    .line 105
    sput p2, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->sServerIdx:I

    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/helpshift/Helpshift;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static LogoutHelper()V
    .locals 0

    .prologue
    .line 110
    invoke-static {}, Lcom/helpshift/Helpshift;->logout()V

    .line 111
    return-void
.end method

.method public static OnPause()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public static OnResume()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public static SetLanguage(Ljava/lang/String;)V
    .locals 3
    .param p0, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 173
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 174
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "countryCode"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    return-void
.end method

.method public static SetLanguageInterval(Ljava/lang/String;)V
    .locals 0
    .param p0, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p0}, Lcom/helpshift/Helpshift;->setSDKLanguage(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public static ShowConversation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "customFiled"    # Ljava/lang/String;
    .param p1, "customTags"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 132
    sget-object v0, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->sCtx:Landroid/app/Activity;

    invoke-static {v1, v1, p0, p1}, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->GenMetaData(ZZLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/Helpshift;->showConversation(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 133
    return-void
.end method

.method public static ShowFAQSection(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "section"    # Ljava/lang/String;
    .param p1, "hideContactUs"    # I
    .param p2, "goldBuyer"    # I
    .param p3, "customFiled"    # Ljava/lang/String;
    .param p4, "customTags"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 120
    sget-object v3, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->sCtx:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    move v2, v1

    :goto_0
    if-ne p2, v0, :cond_1

    :goto_1
    invoke-static {v2, v0, p3, p4}, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->GenMetaData(ZZLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3, p0, v0}, Lcom/helpshift/Helpshift;->showFAQSection(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 123
    return-void

    :cond_0
    move v2, v0

    .line 120
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static ShowFAQs(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "hideContactUs"    # I
    .param p1, "goldBuyer"    # I
    .param p2, "customFiled"    # Ljava/lang/String;
    .param p3, "customTags"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 114
    sget-object v3, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->sCtx:Landroid/app/Activity;

    if-ne p0, v0, :cond_0

    move v2, v1

    :goto_0
    if-ne p1, v0, :cond_1

    :goto_1
    invoke-static {v2, v0, p2, p3}, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->GenMetaData(ZZLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/helpshift/Helpshift;->showFAQs(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 117
    return-void

    :cond_0
    move v2, v0

    .line 114
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static ShowSingleFAQ(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "faqId"    # Ljava/lang/String;
    .param p1, "hideContactUs"    # I
    .param p2, "goldBuyer"    # I
    .param p3, "customFiled"    # Ljava/lang/String;
    .param p4, "customTags"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 126
    sget-object v3, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->sCtx:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    move v2, v1

    :goto_0
    if-ne p2, v0, :cond_1

    :goto_1
    invoke-static {v2, v0, p3, p4}, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->GenMetaData(ZZLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3, p0, v0}, Lcom/helpshift/Helpshift;->showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 129
    return-void

    :cond_0
    move v2, v0

    .line 126
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static getNotificationCount()I
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "count":I
    invoke-static {}, Lcom/helpshift/Helpshift;->getNotificationCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    return v0
.end method

.method public static native onGameHelperBegin()V
.end method

.method public static native onGameHelperEnd()V
.end method

.method public static native onGetNewMsg(I)V
.end method
