.class public Lcom/onesignal/OSNotificationOpenResult;
.super Ljava/lang/Object;
.source "OSNotificationOpenResult.java"


# instance fields
.field public action:Lcom/onesignal/OSNotificationAction;

.field public notification:Lcom/onesignal/OSNotification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stringify()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v2, "mainObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .local v0, "ac":Lorg/json/JSONObject;
    const-string v4, "actionID"

    iget-object v5, p0, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iget-object v5, v5, Lcom/onesignal/OSNotificationAction;->actionID:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v4, "type"

    iget-object v5, p0, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iget-object v5, v5, Lcom/onesignal/OSNotificationAction;->type:Lcom/onesignal/OSNotificationAction$ActionType;

    invoke-virtual {v5}, Lcom/onesignal/OSNotificationAction$ActionType;->ordinal()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    const-string v4, "action"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    invoke-virtual {v4}, Lcom/onesignal/OSNotification;->stringify()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v3, "notifObject":Lorg/json/JSONObject;
    const-string v4, "notification"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "ac":Lorg/json/JSONObject;
    .end local v3    # "notifObject":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 53
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 59
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v2, "mainObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .local v1, "jsonObjAction":Lorg/json/JSONObject;
    const-string v3, "actionID"

    iget-object v4, p0, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iget-object v4, v4, Lcom/onesignal/OSNotificationAction;->actionID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v3, "type"

    iget-object v4, p0, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iget-object v4, v4, Lcom/onesignal/OSNotificationAction;->type:Lcom/onesignal/OSNotificationAction$ActionType;

    invoke-virtual {v4}, Lcom/onesignal/OSNotificationAction$ActionType;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string v3, "action"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v3, "notification"

    iget-object v4, p0, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    invoke-virtual {v4}, Lcom/onesignal/OSNotification;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "jsonObjAction":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
