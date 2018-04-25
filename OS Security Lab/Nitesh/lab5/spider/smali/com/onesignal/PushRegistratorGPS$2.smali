.class Lcom/onesignal/PushRegistratorGPS$2;
.super Ljava/lang/Object;
.source "PushRegistratorGPS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/PushRegistratorGPS;->registerInBackground(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/PushRegistratorGPS;

.field final synthetic val$googleProjectNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/PushRegistratorGPS;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/PushRegistratorGPS;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/onesignal/PushRegistratorGPS$2;->this$0:Lcom/onesignal/PushRegistratorGPS;

    iput-object p2, p0, Lcom/onesignal/PushRegistratorGPS$2;->val$googleProjectNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 156
    const/4 v2, 0x0

    .line 158
    .local v2, "firedComplete":Z
    const/4 v0, 0x0

    .local v0, "currentRetry":I
    :goto_0
    # getter for: Lcom/onesignal/PushRegistratorGPS;->GCM_RETRY_COUNT:I
    invoke-static {}, Lcom/onesignal/PushRegistratorGPS;->access$100()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 160
    :try_start_0
    iget-object v6, p0, Lcom/onesignal/PushRegistratorGPS$2;->this$0:Lcom/onesignal/PushRegistratorGPS;

    # getter for: Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/onesignal/PushRegistratorGPS;->access$000(Lcom/onesignal/PushRegistratorGPS;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    .line 161
    .local v3, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/onesignal/PushRegistratorGPS$2;->val$googleProjectNumber:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v6}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "registrationId":Ljava/lang/String;
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device registered, Google Registration ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 163
    iget-object v6, p0, Lcom/onesignal/PushRegistratorGPS$2;->this$0:Lcom/onesignal/PushRegistratorGPS;

    # getter for: Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;
    invoke-static {v6}, Lcom/onesignal/PushRegistratorGPS;->access$200(Lcom/onesignal/PushRegistratorGPS;)Lcom/onesignal/PushRegistrator$RegisteredHandler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v4, v7}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 191
    .end local v3    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v4    # "registrationId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 167
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Error Getting Google Registration ID"

    invoke-static {v6, v7, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    if-nez v2, :cond_0

    .line 169
    iget-object v6, p0, Lcom/onesignal/PushRegistratorGPS$2;->this$0:Lcom/onesignal/PushRegistratorGPS;

    # getter for: Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;
    invoke-static {v6}, Lcom/onesignal/PushRegistratorGPS;->access$200(Lcom/onesignal/PushRegistratorGPS;)Lcom/onesignal/PushRegistrator$RegisteredHandler;

    move-result-object v6

    const/16 v7, -0xb

    invoke-interface {v6, v9, v7}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    goto :goto_1

    .line 173
    :cond_1
    # getter for: Lcom/onesignal/PushRegistratorGPS;->GCM_RETRY_COUNT:I
    invoke-static {}, Lcom/onesignal/PushRegistratorGPS;->access$100()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v0, v6, :cond_2

    .line 174
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GCM_RETRY_COUNT of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/onesignal/PushRegistratorGPS;->GCM_RETRY_COUNT:I
    invoke-static {}, Lcom/onesignal/PushRegistratorGPS;->access$100()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exceed! Could not get a Google Registration Id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 176
    :cond_2
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Google Play services returned SERVICE_NOT_AVAILABLE error. Current retry count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    .line 179
    iget-object v6, p0, Lcom/onesignal/PushRegistratorGPS$2;->this$0:Lcom/onesignal/PushRegistratorGPS;

    # getter for: Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;
    invoke-static {v6}, Lcom/onesignal/PushRegistratorGPS;->access$200(Lcom/onesignal/PushRegistratorGPS;)Lcom/onesignal/PushRegistrator$RegisteredHandler;

    move-result-object v6

    const/16 v7, -0x9

    invoke-interface {v6, v9, v7}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    .line 180
    const/4 v2, 0x1

    .line 182
    :cond_3
    add-int/lit8 v6, v0, 0x1

    mul-int/lit16 v6, v6, 0x2710

    int-to-long v6, v6

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_2

    .line 185
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 186
    .local v5, "t":Ljava/lang/Throwable;
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Error Getting Google Registration ID"

    invoke-static {v6, v7, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    iget-object v6, p0, Lcom/onesignal/PushRegistratorGPS$2;->this$0:Lcom/onesignal/PushRegistratorGPS;

    # getter for: Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;
    invoke-static {v6}, Lcom/onesignal/PushRegistratorGPS;->access$200(Lcom/onesignal/PushRegistratorGPS;)Lcom/onesignal/PushRegistrator$RegisteredHandler;

    move-result-object v6

    const/16 v7, -0xc

    invoke-interface {v6, v9, v7}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    goto/16 :goto_1
.end method
