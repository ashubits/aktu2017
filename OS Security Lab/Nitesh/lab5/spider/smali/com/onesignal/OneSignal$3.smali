.class final Lcom/onesignal/OneSignal$3;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->makeAndroidParamsRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 486
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$3$1;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$3$1;-><init>(Lcom/onesignal/OneSignal$3;)V

    const-string v2, "OS_PARAMS_REQUEST"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 501
    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 506
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, "responseJson":Lorg/json/JSONObject;
    const-string v2, "android_sender_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    const/4 v2, 0x1

    # setter for: Lcom/onesignal/OneSignal;->mGoogleProjectNumberIsRemote:Z
    invoke-static {v2}, Lcom/onesignal/OneSignal;->access$1302(Z)Z

    .line 509
    const-string v2, "android_sender_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/onesignal/OneSignal;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 512
    :cond_0
    const-string v2, "enterp"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/onesignal/OneSignal;->mEnterp:Z

    .line 514
    const-string v2, "awl_list"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    # setter for: Lcom/onesignal/OneSignal;->awl:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/onesignal/OneSignal;->access$1502(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v0    # "responseJson":Lorg/json/JSONObject;
    :goto_0
    # setter for: Lcom/onesignal/OneSignal;->awlFired:Z
    invoke-static {v4}, Lcom/onesignal/OneSignal;->access$1602(Z)Z

    .line 519
    # invokes: Lcom/onesignal/OneSignal;->registerForPushToken()V
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1700()V

    .line 520
    return-void

    .line 515
    :catch_0
    move-exception v1

    .line 516
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
