.class final Lhotchemi/android/rate/DialogOptions;
.super Ljava/lang/Object;
.source "DialogOptions.java"


# instance fields
.field private cancelable:Z

.field private listener:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Lhotchemi/android/rate/OnClickButtonListener;",
            ">;"
        }
    .end annotation
.end field

.field private messageResId:I

.field private messageText:Ljava/lang/String;

.field private negativeText:Ljava/lang/String;

.field private neutralText:Ljava/lang/String;

.field private positiveText:Ljava/lang/String;

.field private showNegativeButton:Z

.field private showNeutralButton:Z

.field private showTitle:Z

.field private storeType:Lhotchemi/android/rate/StoreType;

.field private textNegativeResId:I

.field private textNeutralResId:I

.field private textPositiveResId:I

.field private titleResId:I

.field private titleText:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lhotchemi/android/rate/DialogOptions;->showNeutralButton:Z

    .line 13
    iput-boolean v0, p0, Lhotchemi/android/rate/DialogOptions;->showNegativeButton:Z

    .line 15
    iput-boolean v0, p0, Lhotchemi/android/rate/DialogOptions;->showTitle:Z

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhotchemi/android/rate/DialogOptions;->cancelable:Z

    .line 19
    sget-object v0, Lhotchemi/android/rate/StoreType;->GOOGLEPLAY:Lhotchemi/android/rate/StoreType;

    iput-object v0, p0, Lhotchemi/android/rate/DialogOptions;->storeType:Lhotchemi/android/rate/StoreType;

    .line 21
    sget v0, Lhotchemi/android/rate/R$string;->rate_dialog_title:I

    iput v0, p0, Lhotchemi/android/rate/DialogOptions;->titleResId:I

    .line 23
    sget v0, Lhotchemi/android/rate/R$string;->rate_dialog_message:I

    iput v0, p0, Lhotchemi/android/rate/DialogOptions;->messageResId:I

    .line 25
    sget v0, Lhotchemi/android/rate/R$string;->rate_dialog_ok:I

    iput v0, p0, Lhotchemi/android/rate/DialogOptions;->textPositiveResId:I

    .line 27
    sget v0, Lhotchemi/android/rate/R$string;->rate_dialog_cancel:I

    iput v0, p0, Lhotchemi/android/rate/DialogOptions;->textNeutralResId:I

    .line 29
    sget v0, Lhotchemi/android/rate/R$string;->rate_dialog_no:I

    iput v0, p0, Lhotchemi/android/rate/DialogOptions;->textNegativeResId:I

    .line 31
    iput-object v1, p0, Lhotchemi/android/rate/DialogOptions;->titleText:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lhotchemi/android/rate/DialogOptions;->messageText:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lhotchemi/android/rate/DialogOptions;->positiveText:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lhotchemi/android/rate/DialogOptions;->neutralText:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lhotchemi/android/rate/DialogOptions;->negativeText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCancelable()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lhotchemi/android/rate/DialogOptions;->cancelable:Z

    return v0
.end method

.method public getListener()Lhotchemi/android/rate/OnClickButtonListener;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->listener:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->listener:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhotchemi/android/rate/OnClickButtonListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessageResId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lhotchemi/android/rate/DialogOptions;->messageResId:I

    return v0
.end method

.method public getMessageText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->messageText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 154
    iget v0, p0, Lhotchemi/android/rate/DialogOptions;->messageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->messageText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNegativeText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->negativeText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 187
    iget v0, p0, Lhotchemi/android/rate/DialogOptions;->textNegativeResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->negativeText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNeutralText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->neutralText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 176
    iget v0, p0, Lhotchemi/android/rate/DialogOptions;->textNeutralResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->neutralText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPositiveText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->positiveText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 165
    iget v0, p0, Lhotchemi/android/rate/DialogOptions;->textPositiveResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->positiveText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStoreType()Lhotchemi/android/rate/StoreType;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->storeType:Lhotchemi/android/rate/StoreType;

    return-object v0
.end method

.method public getTextNegativeResId()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lhotchemi/android/rate/DialogOptions;->textNegativeResId:I

    return v0
.end method

.method public getTextNeutralResId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lhotchemi/android/rate/DialogOptions;->textNeutralResId:I

    return v0
.end method

.method public getTextPositiveResId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lhotchemi/android/rate/DialogOptions;->textPositiveResId:I

    return v0
.end method

.method public getTitleResId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lhotchemi/android/rate/DialogOptions;->titleResId:I

    return v0
.end method

.method public getTitleText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->titleText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 143
    iget v0, p0, Lhotchemi/android/rate/DialogOptions;->titleResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->titleText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lhotchemi/android/rate/DialogOptions;->view:Landroid/view/View;

    return-object v0
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lhotchemi/android/rate/DialogOptions;->cancelable:Z

    .line 75
    return-void
.end method

.method public setListener(Lhotchemi/android/rate/OnClickButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lhotchemi/android/rate/OnClickButtonListener;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhotchemi/android/rate/DialogOptions;->listener:Ljava/lang/ref/Reference;

    .line 139
    return-void
.end method

.method public setMessageResId(I)V
    .locals 0
    .param p1, "messageResId"    # I

    .prologue
    .line 98
    iput p1, p0, Lhotchemi/android/rate/DialogOptions;->messageResId:I

    .line 99
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageText"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lhotchemi/android/rate/DialogOptions;->messageText:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setNegativeText(Ljava/lang/String;)V
    .locals 0
    .param p1, "negativeText"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lhotchemi/android/rate/DialogOptions;->negativeText:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setNeutralText(Ljava/lang/String;)V
    .locals 0
    .param p1, "neutralText"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lhotchemi/android/rate/DialogOptions;->neutralText:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setPositiveText(Ljava/lang/String;)V
    .locals 0
    .param p1, "positiveText"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lhotchemi/android/rate/DialogOptions;->positiveText:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setShowNegativeButton(Z)V
    .locals 0
    .param p1, "showNegativeButton"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lhotchemi/android/rate/DialogOptions;->showNegativeButton:Z

    .line 59
    return-void
.end method

.method public setShowNeutralButton(Z)V
    .locals 0
    .param p1, "showNeutralButton"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lhotchemi/android/rate/DialogOptions;->showNeutralButton:Z

    .line 51
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lhotchemi/android/rate/DialogOptions;->showTitle:Z

    .line 67
    return-void
.end method

.method public setStoreType(Lhotchemi/android/rate/StoreType;)V
    .locals 0
    .param p1, "appstore"    # Lhotchemi/android/rate/StoreType;

    .prologue
    .line 82
    iput-object p1, p0, Lhotchemi/android/rate/DialogOptions;->storeType:Lhotchemi/android/rate/StoreType;

    .line 83
    return-void
.end method

.method public setTextNegativeResId(I)V
    .locals 0
    .param p1, "textNegativeResId"    # I

    .prologue
    .line 122
    iput p1, p0, Lhotchemi/android/rate/DialogOptions;->textNegativeResId:I

    .line 123
    return-void
.end method

.method public setTextNeutralResId(I)V
    .locals 0
    .param p1, "textNeutralResId"    # I

    .prologue
    .line 114
    iput p1, p0, Lhotchemi/android/rate/DialogOptions;->textNeutralResId:I

    .line 115
    return-void
.end method

.method public setTextPositiveResId(I)V
    .locals 0
    .param p1, "textPositiveResId"    # I

    .prologue
    .line 106
    iput p1, p0, Lhotchemi/android/rate/DialogOptions;->textPositiveResId:I

    .line 107
    return-void
.end method

.method public setTitleResId(I)V
    .locals 0
    .param p1, "titleResId"    # I

    .prologue
    .line 90
    iput p1, p0, Lhotchemi/android/rate/DialogOptions;->titleResId:I

    .line 91
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleText"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lhotchemi/android/rate/DialogOptions;->titleText:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 130
    iput-object p1, p0, Lhotchemi/android/rate/DialogOptions;->view:Landroid/view/View;

    .line 131
    return-void
.end method

.method public shouldShowNegativeButton()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lhotchemi/android/rate/DialogOptions;->showNegativeButton:Z

    return v0
.end method

.method public shouldShowNeutralButton()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lhotchemi/android/rate/DialogOptions;->showNeutralButton:Z

    return v0
.end method

.method public shouldShowTitle()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lhotchemi/android/rate/DialogOptions;->showTitle:Z

    return v0
.end method
