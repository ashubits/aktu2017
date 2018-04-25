.class Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection$1;
.super Landroid/support/customtabs/CustomTabsCallback;
.source "OneSignalChromeTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection$1;->this$0:Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;

    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callbackName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Landroid/support/customtabs/CustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "navigationEvent"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/support/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    .line 92
    return-void
.end method
