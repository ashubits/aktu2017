.class public Lcom/brommko/android/spiderman/util/ProgressDialogHelper;
.super Ljava/lang/Object;
.source "ProgressDialogHelper.java"


# static fields
.field private static progress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissProgress()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 18
    sget-object v0, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->progress:Landroid/app/ProgressDialog;

    .line 21
    :cond_0
    return-void
.end method

.method public static showProgress(Landroid/content/Context;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 27
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->progress:Landroid/app/ProgressDialog;

    .line 28
    sget-object v0, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->progress:Landroid/app/ProgressDialog;

    const v1, 0x7f04003b

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 29
    sget-object v0, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 30
    sget-object v0, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
