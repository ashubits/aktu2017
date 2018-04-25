.class public Lcom/onesignal/GcmIntentService;
.super Landroid/app/IntentService;
.source "GcmIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "GcmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onesignal/GcmIntentService;->setIntentRedelivery(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/onesignal/NotificationBundleProcessor;->ProcessFromGCMIntentService(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V

    .line 63
    invoke-static {p1}, Lcom/onesignal/GcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0
.end method
