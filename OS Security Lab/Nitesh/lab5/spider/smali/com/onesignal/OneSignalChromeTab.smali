.class Lcom/onesignal/OneSignalChromeTab;
.super Ljava/lang/Object;
.source "OneSignalChromeTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;
    }
.end annotation


# static fields
.field private static opened:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "adId"    # Ljava/lang/String;

    .prologue
    .line 49
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    sget-boolean v3, Lcom/onesignal/OneSignalChromeTab;->opened:Z

    if-nez v3, :cond_0

    .line 55
    sget-boolean v3, Lcom/onesignal/OneSignal;->mEnterp:Z

    if-nez v3, :cond_0

    .line 58
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-string v3, "OptedOut"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    :try_start_0
    const-string v3, "android.support.customtabs.CustomTabsServiceConnection"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?app_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&user_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ad_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cbs_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "params":Ljava/lang/String;
    new-instance v0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;

    invoke-direct {v0, p0, v2}, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    .local v0, "connection":Landroid/support/customtabs/CustomTabsServiceConnection;
    const-string v3, "com.android.chrome"

    invoke-static {p0, v3, v0}, Landroid/support/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/CustomTabsServiceConnection;)Z

    move-result v3

    sput-boolean v3, Lcom/onesignal/OneSignalChromeTab;->opened:Z

    goto :goto_0

    .line 63
    .end local v0    # "connection":Landroid/support/customtabs/CustomTabsServiceConnection;
    .end local v2    # "params":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method
