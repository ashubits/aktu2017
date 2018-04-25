.class Lcom/onesignal/PushRegistratorGPS$1$1;
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
    .line 140
    iput-object p1, p0, Lcom/onesignal/PushRegistratorGPS$1$1;->this$1:Lcom/onesignal/PushRegistratorGPS$1;

    iput-object p2, p0, Lcom/onesignal/PushRegistratorGPS$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 143
    iget-object v2, p0, Lcom/onesignal/PushRegistratorGPS$1$1;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "GT_DO_NOT_SHOW_MISSING_GPS"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    return-void
.end method
