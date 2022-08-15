.class Lbe/gentgo/tetsuki/PreferencesFragment$6;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/PreferencesFragment;
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
.field final synthetic this$0:Lbe/gentgo/tetsuki/PreferencesFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/PreferencesFragment$6;)Lbe/gentgo/tetsuki/PreferencesFragment;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 286
    iget-object v6, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v6}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$8(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v6

    if-ne p3, v6, :cond_2

    .line 287
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getAutoZoom()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-static {v4}, Lbe/gentgo/tetsuki/Preferences;->setAutoZoom(Z)V

    .line 288
    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v4, v4, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v4, v4, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v4}, Landroid/database/DataSetObserver;->onChanged()V

    .line 354
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v5

    .line 287
    goto :goto_0

    .line 292
    :cond_2
    iget-object v6, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v6}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$9(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v6

    if-ne p3, v6, :cond_4

    .line 293
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getZoom()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    invoke-static {v4}, Lbe/gentgo/tetsuki/Preferences;->setZoom(Z)V

    .line 294
    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/PreferencesFragment;->updateIndices()V

    .line 295
    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v4, v4, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v4, v4, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v4}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_1

    :cond_3
    move v4, v5

    .line 293
    goto :goto_2

    .line 299
    :cond_4
    iget-object v6, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v6}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$10(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v6

    if-ne p3, v6, :cond_6

    .line 300
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getShowCoordinates()Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_3
    invoke-static {v4}, Lbe/gentgo/tetsuki/Preferences;->setShowCoordinates(Z)V

    .line 301
    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v4, v4, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v4, v4, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v4}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_1

    :cond_5
    move v4, v5

    .line 300
    goto :goto_3

    .line 305
    :cond_6
    iget-object v6, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v6}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$11(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v6

    if-ne p3, v6, :cond_8

    .line 306
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->moveConfirmation()Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_4
    invoke-static {v4}, Lbe/gentgo/tetsuki/Preferences;->setMoveConfirmation(Z)V

    .line 307
    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v4, v4, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v4, v4, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v4}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_1

    :cond_7
    move v4, v5

    .line 306
    goto :goto_4

    .line 311
    :cond_8
    iget-object v6, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v6}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$7(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v6

    if-ne p3, v6, :cond_e

    .line 312
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f080146

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 315
    const/4 v6, 0x5

    new-array v3, v6, [Ljava/lang/CharSequence;

    .line 316
    .local v3, "intervals":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    const v7, 0x7f080147

    invoke-virtual {v6, v7}, Lbe/gentgo/tetsuki/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 317
    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    const v6, 0x7f080148

    invoke-virtual {v4, v6}, Lbe/gentgo/tetsuki/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 318
    const/4 v4, 0x2

    iget-object v5, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    const v6, 0x7f080149

    invoke-virtual {v5, v6}, Lbe/gentgo/tetsuki/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 319
    const/4 v4, 0x3

    iget-object v5, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    const v6, 0x7f08014a

    invoke-virtual {v5, v6}, Lbe/gentgo/tetsuki/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 320
    const/4 v4, 0x4

    iget-object v5, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    const v6, 0x7f08014b

    invoke-virtual {v5, v6}, Lbe/gentgo/tetsuki/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 321
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getReplayInterval()F

    move-result v2

    .line 322
    .local v2, "interval":F
    const/4 v1, -0x1

    .line 323
    .local v1, "choice":I
    float-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v6

    if-nez v4, :cond_a

    const/4 v1, 0x0

    .line 328
    :cond_9
    :goto_5
    new-instance v4, Lbe/gentgo/tetsuki/PreferencesFragment$6$1;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$6$1;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment$6;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 341
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 324
    :cond_a
    float-to-double v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_b

    const/4 v1, 0x1

    goto :goto_5

    .line 325
    :cond_b
    float-to-double v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_c

    const/4 v1, 0x2

    goto :goto_5

    .line 326
    :cond_c
    float-to-double v4, v2

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_d

    const/4 v1, 0x3

    goto :goto_5

    .line 327
    :cond_d
    float-to-double v4, v2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_9

    const/4 v1, 0x4

    goto :goto_5

    .line 345
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "choice":I
    .end local v2    # "interval":F
    .end local v3    # "intervals":[Ljava/lang/CharSequence;
    :cond_e
    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v4}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$6(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v4

    if-ne p3, v4, :cond_f

    .line 346
    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v4}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$12(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    goto/16 :goto_1

    .line 350
    :cond_f
    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v4}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$5(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v4

    if-ne p3, v4, :cond_0

    .line 351
    iget-object v4, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v4}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$13(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    goto/16 :goto_1
.end method
