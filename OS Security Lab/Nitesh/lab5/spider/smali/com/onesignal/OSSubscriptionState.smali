.class public Lcom/onesignal/OSSubscriptionState;
.super Ljava/lang/Object;
.source "OSSubscriptionState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private accepted:Z

.field observable:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable",
            "<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSSubscriptionState;",
            ">;"
        }
    .end annotation
.end field

.field private pushToken:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userSubscriptionSetting:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 5
    .param p1, "asFrom"    # Z
    .param p2, "permissionAccepted"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Lcom/onesignal/OSObservable;

    const-string v2, "changed"

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    .line 45
    if-eqz p1, :cond_0

    .line 46
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "ONESIGNAL_SUBSCRIPTION_LAST"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    .line 48
    const-string v1, "ONESIGNAL_PLAYER_ID_LAST"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    .line 49
    const-string v1, "ONESIGNAL_PUSH_TOKEN_LAST"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    .line 50
    const-string v1, "ONESIGNAL_PERMISSION_ACCEPTED_LAST"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    .line 58
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserSubscribePreference()Z

    move-result v1

    iput-boolean v1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    .line 54
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    .line 56
    iput-boolean p2, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    goto :goto_0
.end method

.method private setAccepted(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result v0

    .line 107
    .local v0, "lastSubscribed":Z
    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    .line 108
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {v1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method changed(Lcom/onesignal/OSPermissionState;)V
    .locals 1
    .param p1, "state"    # Lcom/onesignal/OSPermissionState;

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/onesignal/OSSubscriptionState;->setAccepted(Z)V

    .line 67
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const/4 v0, 0x0

    goto :goto_0
.end method

.method compare(Lcom/onesignal/OSSubscriptionState;)Z
    .locals 2
    .param p1, "from"    # Lcom/onesignal/OSSubscriptionState;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    iget-boolean v1, p1, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    :goto_0
    iget-object v1, p1, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    .line 130
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    :goto_2
    iget-object v1, p1, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    .line 131
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    iget-boolean v1, p1, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    if-eq v0, v1, :cond_5

    :cond_0
    const/4 v0, 0x1

    .line 129
    :goto_4
    return v0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 130
    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    const-string v1, ""

    goto :goto_3

    .line 131
    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribed()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSubscriptionSetting()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    return v0
.end method

.method persistAsFrom()V
    .locals 4

    .prologue
    .line 117
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ONESIGNAL_SUBSCRIPTION_LAST"

    iget-boolean v3, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v2, "ONESIGNAL_PLAYER_ID_LAST"

    iget-object v3, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v2, "ONESIGNAL_PUSH_TOKEN_LAST"

    iget-object v3, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v2, "ONESIGNAL_PERMISSION_ACCEPTED_LAST"

    iget-boolean v3, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method

.method setPushToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 81
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 84
    .local v0, "changed":Z
    :goto_1
    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    .line 85
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {v1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setUserId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 71
    .local v0, "changed":Z
    :goto_0
    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {v1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    return-void

    .line 70
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setUserSubscriptionSetting(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 95
    iget-boolean v1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 96
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    .line 97
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {v1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    return-void

    .line 95
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 143
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 146
    .local v0, "mainObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "userId"

    iget-object v3, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v2, "pushToken"

    iget-object v3, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v2, "userSubscriptionSetting"

    iget-boolean v3, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 149
    const-string v2, "subscribed"

    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
