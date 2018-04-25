.class Lcom/onesignal/TrackGooglePurchase$2;
.super Ljava/lang/Object;
.source "TrackGooglePurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/TrackGooglePurchase;->QueryBoughtItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/TrackGooglePurchase;


# direct methods
.method constructor <init>(Lcom/onesignal/TrackGooglePurchase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/TrackGooglePurchase;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    const/4 v13, 0x1

    # setter for: Lcom/onesignal/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z
    invoke-static {v12, v13}, Lcom/onesignal/TrackGooglePurchase;->access$402(Lcom/onesignal/TrackGooglePurchase;Z)Z

    .line 145
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;
    invoke-static {v12}, Lcom/onesignal/TrackGooglePurchase;->access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;

    move-result-object v12

    if-nez v12, :cond_0

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->IInAppBillingServiceClass:Ljava/lang/Class;
    invoke-static {}, Lcom/onesignal/TrackGooglePurchase;->access$600()Ljava/lang/Class;

    move-result-object v13

    # invokes: Lcom/onesignal/TrackGooglePurchase;->getGetPurchasesMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {v13}, Lcom/onesignal/TrackGooglePurchase;->access$700(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    # setter for: Lcom/onesignal/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;
    invoke-static {v12, v13}, Lcom/onesignal/TrackGooglePurchase;->access$502(Lcom/onesignal/TrackGooglePurchase;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;
    invoke-static {v12}, Lcom/onesignal/TrackGooglePurchase;->access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 150
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;
    invoke-static {v12}, Lcom/onesignal/TrackGooglePurchase;->access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;
    invoke-static {v13}, Lcom/onesignal/TrackGooglePurchase;->access$100(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    move-object/from16 v16, v0

    # getter for: Lcom/onesignal/TrackGooglePurchase;->appContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/onesignal/TrackGooglePurchase;->access$800(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "inapp"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 151
    .local v5, "ownedItems":Landroid/os/Bundle;
    const-string v12, "RESPONSE_CODE"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_3

    .line 152
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v11, "skusToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v4, "newPurchaseTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 156
    .local v6, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 158
    .local v8, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_2

    .line 159
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 160
    .local v7, "purchaseData":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 161
    .local v10, "sku":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .local v3, "itemPurchased":Lorg/json/JSONObject;
    const-string v12, "purchaseToken"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, "purchaseToken":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->purchaseTokens:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/onesignal/TrackGooglePurchase;->access$900(Lcom/onesignal/TrackGooglePurchase;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 165
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v3    # "itemPurchased":Lorg/json/JSONObject;
    .end local v7    # "purchaseData":Ljava/lang/String;
    .end local v9    # "purchaseToken":Ljava/lang/String;
    .end local v10    # "sku":Ljava/lang/String;
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # invokes: Lcom/onesignal/TrackGooglePurchase;->sendPurchases(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v12, v11, v4}, Lcom/onesignal/TrackGooglePurchase;->access$1000(Lcom/onesignal/TrackGooglePurchase;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v2    # "i":I
    .end local v4    # "newPurchaseTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "ownedItems":Landroid/os/Bundle;
    .end local v6    # "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "skusToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    const/4 v13, 0x0

    # setter for: Lcom/onesignal/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z
    invoke-static {v12, v13}, Lcom/onesignal/TrackGooglePurchase;->access$402(Lcom/onesignal/TrackGooglePurchase;Z)Z

    .line 184
    return-void

    .line 172
    .restart local v2    # "i":I
    .restart local v4    # "newPurchaseTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "ownedItems":Landroid/os/Bundle;
    .restart local v6    # "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "skusToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_3

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    const/4 v13, 0x0

    # setter for: Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z
    invoke-static {v12, v13}, Lcom/onesignal/TrackGooglePurchase;->access$1102(Lcom/onesignal/TrackGooglePurchase;Z)Z

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->prefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v12}, Lcom/onesignal/TrackGooglePurchase;->access$1200(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "ExistingPurchases"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->prefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v12}, Lcom/onesignal/TrackGooglePurchase;->access$1200(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 180
    .end local v2    # "i":I
    .end local v4    # "newPurchaseTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "ownedItems":Landroid/os/Bundle;
    .end local v6    # "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "skusToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
