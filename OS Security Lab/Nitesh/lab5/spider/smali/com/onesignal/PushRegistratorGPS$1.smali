.class Lcom/onesignal/PushRegistratorGPS$1;
.super Ljava/lang/Object;
.source "PushRegistratorGPS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/PushRegistratorGPS;->ShowUpdateGPSDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/PushRegistratorGPS;


# direct methods
.method constructor <init>(Lcom/onesignal/PushRegistratorGPS;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/PushRegistratorGPS;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/onesignal/PushRegistratorGPS$1;->this$0:Lcom/onesignal/PushRegistratorGPS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 118
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 119
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    sget-object v6, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v6, v6, Lcom/onesignal/OneSignal$Builder;->mDisableGmsMissingPrompt:Z

    if-eqz v6, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v6, "onesignal_gms_missing_alert_text"

    const-string v7, "To receive push notifications please press \'Update\' to enable \'Google Play services\'."

    invoke-static {v0, v6, v7}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "alertBodyText":Ljava/lang/String;
    const-string v6, "onesignal_gms_missing_alert_button_update"

    const-string v7, "Update"

    invoke-static {v0, v6, v7}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "alertButtonUpdate":Ljava/lang/String;
    const-string v6, "onesignal_gms_missing_alert_button_skip"

    const-string v7, "Skip"

    invoke-static {v0, v6, v7}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "alertButtonSkip":Ljava/lang/String;
    const-string v6, "onesignal_gms_missing_alert_button_close"

    const-string v7, "Close"

    invoke-static {v0, v6, v7}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "alertButtonClose":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/onesignal/PushRegistratorGPS$1$2;

    invoke-direct {v7, p0, v0}, Lcom/onesignal/PushRegistratorGPS$1$2;-><init>(Lcom/onesignal/PushRegistratorGPS$1;Landroid/app/Activity;)V

    invoke-virtual {v6, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/onesignal/PushRegistratorGPS$1$1;

    invoke-direct {v7, p0, v0}, Lcom/onesignal/PushRegistratorGPS$1$1;-><init>(Lcom/onesignal/PushRegistratorGPS$1;Landroid/app/Activity;)V

    .line 140
    invoke-virtual {v6, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    .line 148
    invoke-virtual {v6, v2, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
