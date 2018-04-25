.class public Lcom/brommko/android/spiderman/util/LocalNotification;
.super Ljava/lang/Object;
.source "LocalNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 23
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/brommko/android/spiderman/MainActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v2, "resultIntent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v4

    .line 27
    .local v4, "stackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    invoke-virtual {v4, v2}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 29
    const/high16 v5, 0x40000000    # 2.0f

    .line 30
    invoke-virtual {v4, v7, v5}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v3

    .line 32
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    const-string v5, "notification"

    .line 33
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 34
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 36
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/high16 v6, 0x7f030000

    .line 37
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 38
    invoke-virtual {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 39
    invoke-virtual {v5, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 41
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 42
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 44
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 45
    return-void
.end method
