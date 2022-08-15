.class Lbe/gentgo/tetsuki/AccountSettingsFragment$2;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/AccountSettingsFragment$2;)Lbe/gentgo/tetsuki/AccountSettingsFragment;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v7, v7, Lbe/gentgo/tetsuki/AccountSettingsFragment;->infoRow:I

    if-ne p3, v7, :cond_0

    .line 194
    new-instance v5, Lbe/gentgo/tetsuki/InfoDialog;

    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Lbe/gentgo/tetsuki/InfoDialog;-><init>(Landroid/content/Context;)V

    .line 195
    .local v5, "myInfo":Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 197
    .end local v5    # "myInfo":Landroid/app/Dialog;
    :cond_0
    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v7, v7, Lbe/gentgo/tetsuki/AccountSettingsFragment;->passwordRow:I

    if-ne p3, v7, :cond_1

    .line 199
    new-instance v2, Lbe/gentgo/tetsuki/ChangePasswordDialog;

    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Lbe/gentgo/tetsuki/ChangePasswordDialog;-><init>(Landroid/content/Context;)V

    .line 200
    .local v2, "changePwd":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 203
    .end local v2    # "changePwd":Landroid/app/Dialog;
    :cond_1
    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v7, v7, Lbe/gentgo/tetsuki/AccountSettingsFragment;->logoutRow:I

    if-ne p3, v7, :cond_2

    .line 205
    const-string v7, ""

    invoke-static {v7}, Lbe/gentgo/tetsuki/Preferences;->setLoginID(Ljava/lang/String;)V

    .line 206
    const-string v7, ""

    invoke-static {v7}, Lbe/gentgo/tetsuki/Preferences;->setPassword(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->save()V

    .line 208
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lbe/gentgo/tetsuki/Server;->connectFromPreferences(Z)V

    .line 209
    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 212
    :cond_2
    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v7, v7, Lbe/gentgo/tetsuki/AccountSettingsFragment;->encodingRow:I

    if-ne p3, v7, :cond_3

    .line 214
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0800c5

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getNrOfEncodings()I

    move-result v6

    .line 217
    .local v6, "nr":I
    new-array v3, v6, [Ljava/lang/CharSequence;

    .line 218
    .local v3, "encodings":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v6, :cond_6

    .line 225
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getEncoding()I

    move-result v7

    new-instance v8, Lbe/gentgo/tetsuki/AccountSettingsFragment$2$1;

    invoke-direct {v8, p0}, Lbe/gentgo/tetsuki/AccountSettingsFragment$2$1;-><init>(Lbe/gentgo/tetsuki/AccountSettingsFragment$2;)V

    invoke-virtual {v1, v3, v7, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 234
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 237
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "encodings":[Ljava/lang/CharSequence;
    .end local v4    # "i":I
    .end local v6    # "nr":I
    :cond_3
    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v7, v7, Lbe/gentgo/tetsuki/AccountSettingsFragment;->japaneseRankingRow:I

    if-ne p3, v7, :cond_4

    .line 239
    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget-object v8, v7, Lbe/gentgo/tetsuki/AccountSettingsFragment;->japaneseRankingToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v9, 0x0

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->japaneseRanking()Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v8, v9, v7}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 241
    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget-object v7, v7, Lbe/gentgo/tetsuki/AccountSettingsFragment;->dataObserver:Landroid/database/DataSetObserver;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget-object v7, v7, Lbe/gentgo/tetsuki/AccountSettingsFragment;->dataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v7}, Landroid/database/DataSetObserver;->onChanged()V

    .line 244
    :cond_4
    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v7, v7, Lbe/gentgo/tetsuki/AccountSettingsFragment;->disconnectRow:I

    if-ne p3, v7, :cond_5

    .line 246
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lbe/gentgo/tetsuki/Server;->disconnect(Z)V

    .line 247
    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 249
    :cond_5
    return-void

    .line 219
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "encodings":[Ljava/lang/CharSequence;
    .restart local v4    # "i":I
    .restart local v6    # "nr":I
    :cond_6
    invoke-static {v4}, Lbe/gentgo/tetsuki/Preferences;->getNameForEncoding(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 220
    aget-object v7, v3, v4

    const-string v8, "shiftjis"

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    const v8, 0x7f0800c6

    invoke-virtual {v7, v8}, Lbe/gentgo/tetsuki/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 221
    :cond_7
    aget-object v7, v3, v4

    const-string v8, "latin_one"

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    const v8, 0x7f0800c7

    invoke-virtual {v7, v8}, Lbe/gentgo/tetsuki/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 222
    :cond_8
    aget-object v7, v3, v4

    const-string v8, "latin_two"

    if-ne v7, v8, :cond_9

    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    const v8, 0x7f0800c8

    invoke-virtual {v7, v8}, Lbe/gentgo/tetsuki/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 223
    :cond_9
    aget-object v7, v3, v4

    const-string v8, "utf_eight"

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    const v8, 0x7f0800c9

    invoke-virtual {v7, v8}, Lbe/gentgo/tetsuki/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 218
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 239
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "encodings":[Ljava/lang/CharSequence;
    .end local v4    # "i":I
    .end local v6    # "nr":I
    :cond_b
    const/4 v7, 0x1

    goto :goto_1
.end method
