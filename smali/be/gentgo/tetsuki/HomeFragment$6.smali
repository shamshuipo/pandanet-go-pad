.class Lbe/gentgo/tetsuki/HomeFragment$6;
.super Lbe/gentgo/tetsuki/Listener;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/HomeFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field connectionAlert:Landroid/app/Dialog;

.field hasBeenDisconnected:Z

.field shownGuestMessage:Z

.field final synthetic this$0:Lbe/gentgo/tetsuki/HomeFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/HomeFragment;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    .line 187
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    .line 188
    iput-boolean v0, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->hasBeenDisconnected:Z

    .line 189
    iput-boolean v0, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->shownGuestMessage:Z

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->connectionAlert:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 193
    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v5, v10}, Lbe/gentgo/tetsuki/HomeFragment;->access$8(Lbe/gentgo/tetsuki/HomeFragment;Z)V

    .line 195
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v5

    invoke-virtual {v5}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v4

    .line 197
    .local v4, "state":I
    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->connectionAlert:Landroid/app/Dialog;

    if-eqz v5, :cond_0

    .line 198
    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->connectionAlert:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 199
    const/4 v5, 0x0

    iput-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->connectionAlert:Landroid/app/Dialog;

    .line 203
    :cond_0
    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v5}, Lbe/gentgo/tetsuki/HomeFragment;->access$9(Lbe/gentgo/tetsuki/HomeFragment;)Z

    move-result v2

    .line 205
    .local v2, "isShowingConnectionState":Z
    invoke-static {}, Lbe/gentgo/tetsuki/TetsukiActivity;->getForegroundActivity()Lbe/gentgo/tetsuki/TetsukiActivity;

    move-result-object v1

    .line 208
    .local v1, "context":Landroid/content/Context;
    if-nez v4, :cond_1

    iget-boolean v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->hasBeenDisconnected:Z

    if-eqz v5, :cond_1

    .line 210
    iput-boolean v12, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->hasBeenDisconnected:Z

    .line 211
    if-nez v2, :cond_1

    .line 212
    const v5, 0x7f080027

    invoke-static {v1, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 216
    :cond_1
    if-nez v2, :cond_2

    if-eq v4, v11, :cond_3

    .line 217
    :cond_2
    if-ne v4, v10, :cond_5

    .line 219
    :cond_3
    iput-boolean v10, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->hasBeenDisconnected:Z

    .line 220
    const v3, 0x4479c000    # 999.0f

    .line 221
    .local v3, "secondsActive":F
    float-to-double v6, v3

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_4

    if-eq v4, v11, :cond_5

    .line 223
    :cond_4
    if-ne v4, v11, :cond_5

    .line 225
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-ne v4, v11, :cond_8

    const v5, 0x7f080022

    :goto_0
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 227
    if-ne v4, v11, :cond_9

    const v5, 0x7f080023

    :goto_1
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 229
    const v5, 0x7f08011b

    new-instance v6, Lbe/gentgo/tetsuki/HomeFragment$6$1;

    invoke-direct {v6, p0}, Lbe/gentgo/tetsuki/HomeFragment$6$1;-><init>(Lbe/gentgo/tetsuki/HomeFragment$6;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    const v5, 0x7f08010f

    new-instance v6, Lbe/gentgo/tetsuki/HomeFragment$6$2;

    invoke-direct {v6, p0}, Lbe/gentgo/tetsuki/HomeFragment$6$2;-><init>(Lbe/gentgo/tetsuki/HomeFragment$6;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->connectionAlert:Landroid/app/Dialog;

    .line 244
    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->connectionAlert:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 248
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "secondsActive":F
    :cond_5
    if-nez v4, :cond_6

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v5

    invoke-virtual {v5}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 249
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->isGuestLogin()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 251
    iget-boolean v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->shownGuestMessage:Z

    if-nez v5, :cond_6

    .line 252
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f08001a

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 254
    const v5, 0x7f08016c

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 255
    const v5, 0x7f08003b

    new-instance v6, Lbe/gentgo/tetsuki/HomeFragment$6$3;

    invoke-direct {v6, p0}, Lbe/gentgo/tetsuki/HomeFragment$6$3;-><init>(Lbe/gentgo/tetsuki/HomeFragment$6;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->connectionAlert:Landroid/app/Dialog;

    .line 259
    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->connectionAlert:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 260
    iput-boolean v10, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->shownGuestMessage:Z

    .line 286
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_6
    :goto_2
    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v5}, Lbe/gentgo/tetsuki/HomeFragment;->access$9(Lbe/gentgo/tetsuki/HomeFragment;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-virtual {v5, v10}, Lbe/gentgo/tetsuki/HomeFragment;->update(Z)V

    .line 287
    :cond_7
    return v10

    .line 226
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "secondsActive":F
    :cond_8
    const v5, 0x7f080024

    goto :goto_0

    .line 227
    :cond_9
    const v5, 0x7f080025

    goto :goto_1

    .line 266
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "secondsActive":F
    :cond_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 267
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0800d8

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 268
    const v5, 0x7f0800d9

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 269
    const v5, 0x7f08011a

    new-instance v6, Lbe/gentgo/tetsuki/HomeFragment$6$4;

    invoke-direct {v6, p0}, Lbe/gentgo/tetsuki/HomeFragment$6$4;-><init>(Lbe/gentgo/tetsuki/HomeFragment$6;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    const v5, 0x7f08011c

    new-instance v6, Lbe/gentgo/tetsuki/HomeFragment$6$5;

    invoke-direct {v6, p0}, Lbe/gentgo/tetsuki/HomeFragment$6$5;-><init>(Lbe/gentgo/tetsuki/HomeFragment$6;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->connectionAlert:Landroid/app/Dialog;

    .line 282
    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$6;->connectionAlert:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_2
.end method
