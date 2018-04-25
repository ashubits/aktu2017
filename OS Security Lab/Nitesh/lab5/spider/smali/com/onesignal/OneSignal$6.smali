.class final Lcom/onesignal/OneSignal$6;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->registerUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 742
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getNewUserState()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v8

    .line 744
    .local v8, "userState":Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    sget-object v9, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 745
    .local v5, "packageName":Ljava/lang/String;
    sget-object v9, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 747
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const-string v9, "app_id"

    sget-object v10, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    const-string v9, "identifier"

    # getter for: Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$800()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 750
    # getter for: Lcom/onesignal/OneSignal;->mainAdIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2000()Lcom/onesignal/AdvertisingIdentifierProvider;

    move-result-object v9

    sget-object v10, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-interface {v9, v10}, Lcom/onesignal/AdvertisingIdentifierProvider;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "adId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 752
    const-string v9, "ad_id"

    invoke-virtual {v8, v9, v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 753
    :cond_0
    const-string v9, "device_os"

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 754
    const-string v9, "timezone"

    # invokes: Lcom/onesignal/OneSignal;->getTimeZoneOffset()I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2100()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 755
    const-string v9, "language"

    invoke-static {}, Lcom/onesignal/OSUtils;->getCorrectedLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 756
    const-string v9, "sdk"

    const-string v10, "030501"

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 757
    const-string v9, "sdk_type"

    sget-object v10, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 758
    const-string v9, "android_package"

    invoke-virtual {v8, v9, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 759
    const-string v9, "device_model"

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 760
    const-string v9, "device_type"

    # getter for: Lcom/onesignal/OneSignal;->deviceType:I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2200()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 761
    const-string v9, "subscribableStatus"

    # getter for: Lcom/onesignal/OneSignal;->subscribableStatus:I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$700()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->setState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 762
    const-string v9, "androidPermission"

    invoke-static {}, Lcom/onesignal/OneSignal;->areNotificationsEnabledForSubscribedState()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->setState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 765
    :try_start_0
    const-string v9, "game_version"

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 769
    :goto_0
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 770
    .local v3, "packList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 771
    .local v7, "pkgs":Lorg/json/JSONArray;
    const-string v9, "SHA-256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 772
    .local v2, "md":Ljava/security/MessageDigest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 773
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 774
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 775
    .local v6, "pck":Ljava/lang/String;
    # getter for: Lcom/onesignal/OneSignal;->awl:Lorg/json/JSONObject;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1500()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 776
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 772
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 778
    .end local v6    # "pck":Ljava/lang/String;
    :cond_2
    const-string v9, "pkgs"

    invoke-virtual {v8, v9, v7}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 781
    .end local v1    # "i":I
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "packList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "pkgs":Lorg/json/JSONArray;
    :goto_2
    const-string v9, "net_type"

    # getter for: Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2300()Lcom/onesignal/OSUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/onesignal/OSUtils;->getNetType()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 782
    const-string v9, "carrier"

    # getter for: Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2300()Lcom/onesignal/OSUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/onesignal/OSUtils;->getCarrierName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 783
    const-string v9, "rooted"

    invoke-static {}, Lcom/onesignal/RootToolsInternalMethods;->isRooted()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 785
    # getter for: Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationGMS$LocationPoint;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$400()Lcom/onesignal/LocationGMS$LocationPoint;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 786
    # getter for: Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationGMS$LocationPoint;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$400()Lcom/onesignal/LocationGMS$LocationPoint;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->setLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 788
    :cond_3
    # getter for: Lcom/onesignal/OneSignal;->sendAsSession:Z
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2400()Z

    move-result v9

    invoke-static {v8, v9}, Lcom/onesignal/OneSignalStateSynchronizer;->postUpdate(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)V

    .line 789
    # setter for: Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z
    invoke-static {v11}, Lcom/onesignal/OneSignal;->access$2502(Z)Z

    .line 791
    sget-object v9, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget-object v10, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    # getter for: Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2600()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/onesignal/AdvertisingIdProviderGPS;->getLastValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/onesignal/OneSignalChromeTab;->setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    return-void

    .line 779
    :catch_0
    move-exception v9

    goto :goto_2

    .line 766
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method
