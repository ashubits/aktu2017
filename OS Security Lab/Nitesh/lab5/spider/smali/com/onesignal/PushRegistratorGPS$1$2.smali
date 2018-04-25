.class Lcom/onesignal/PushRegistratorGPS$1$2;
.super Ljava/lang/Object;
.source "PushRegistratorGPS.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/PushRegistratorGPS$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/onesignal/PushRegistratorGPS$1;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/onesignal/PushRegistratorGPS$1;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/onesignal/PushRegistratorGPS$1;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/onesignal/PushRegistratorGPS$1$2;->this$1:Lcom/onesignal/PushRegistratorGPS$1;

    iput-object p2, p0, Lcom/onesignal/PushRegistratorGPS$1$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/PushRegistratorGPS$1$2;->this$1:Lcom/onesignal/PushRegistratorGPS$1;

    iget-object v2, v2, Lcom/onesignal/PushRegistratorGPS$1;->this$0:Lcom/onesignal/PushRegistratorGPS;

    # getter for: Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/onesignal/PushRegistratorGPS;->access$000(Lcom/onesignal/PushRegistratorGPS;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 133
    .local v1, "resultCode":I
    iget-object v2, p0, Lcom/onesignal/PushRegistratorGPS$1$2;->val$activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorPendingIntent(ILandroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "resultCode":I
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
