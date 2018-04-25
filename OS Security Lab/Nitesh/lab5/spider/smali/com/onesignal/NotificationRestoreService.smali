.class public Lcom/onesignal/NotificationRestoreService;
.super Landroid/app/IntentService;
.source "NotificationRestoreService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "NotificationRestoreService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onesignal/NotificationRestoreService;->setIntentRedelivery(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/onesignal/NotificationRestorer;->restore(Landroid/content/Context;)V

    .line 44
    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 45
    return-void
.end method
