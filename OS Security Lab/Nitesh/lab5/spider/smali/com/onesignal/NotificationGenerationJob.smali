.class Lcom/onesignal/NotificationGenerationJob;
.super Ljava/lang/Object;
.source "NotificationGenerationJob.java"


# instance fields
.field context:Landroid/content/Context;

.field jsonPayload:Lorg/json/JSONObject;

.field overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

.field restoring:Z

.field showAsAlert:Z

.field shownTimeStamp:Ljava/lang/Long;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method getAndroidId()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v0}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    return-object v0
.end method

.method setAndroidIdWithOutOverriding(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 62
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-nez v0, :cond_3

    .line 69
    new-instance v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v0}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iput-object p1, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    goto :goto_0
.end method
