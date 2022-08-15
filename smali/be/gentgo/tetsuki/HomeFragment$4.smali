.class Lbe/gentgo/tetsuki/HomeFragment$4;
.super Landroid/widget/BaseAdapter;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/HomeFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/HomeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    .line 475
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private addBadge(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cell"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "critical"    # Z

    .prologue
    .line 570
    const v1, 0x7f0b0061

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 571
    .local v0, "badge":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    if-eqz p3, :cond_0

    const v1, 0x7f020055

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 574
    return-void

    .line 573
    :cond_0
    const v1, 0x7f02000a

    goto :goto_0
.end method

.method private configureCell(Landroid/view/View;IIIZZ)V
    .locals 6
    .param p1, "cell"    # Landroid/view/View;
    .param p2, "imageID"    # I
    .param p3, "titleID"    # I
    .param p4, "subTitleID"    # I
    .param p5, "enabled"    # Z
    .param p6, "selected"    # Z

    .prologue
    .line 548
    const v5, 0x7f0b005d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 549
    .local v1, "image":Landroid/widget/ImageView;
    const v5, 0x7f0b005e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 550
    .local v4, "title":Landroid/widget/TextView;
    const v5, 0x7f0b005f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 551
    .local v3, "subTitle":Landroid/widget/TextView;
    const v5, 0x7f0b0060

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 553
    .local v2, "selection":Landroid/view/View;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 554
    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-virtual {v5}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-virtual {v5}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    if-eqz p5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 557
    if-eqz p5, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 558
    if-eqz p5, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 559
    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v5}, Lbe/gentgo/tetsuki/HomeFragment;->access$6(Lbe/gentgo/tetsuki/HomeFragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v5}, Lbe/gentgo/tetsuki/HomeFragment;->access$7(Lbe/gentgo/tetsuki/HomeFragment;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    if-eqz p6, :cond_5

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 564
    const v5, 0x7f0b0061

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 565
    .local v0, "badge":Landroid/widget/TextView;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    return-void

    .line 556
    .end local v0    # "badge":Landroid/widget/TextView;
    :cond_0
    const v5, 0x3e4ccccd    # 0.2f

    goto :goto_0

    .line 557
    :cond_1
    const v5, 0x3e4ccccd    # 0.2f

    goto :goto_1

    .line 558
    :cond_2
    const v5, 0x3e4ccccd    # 0.2f

    goto :goto_2

    .line 559
    :cond_3
    const/16 v5, 0x8

    goto :goto_3

    .line 560
    :cond_4
    const/16 v5, 0x8

    goto :goto_4

    .line 562
    :cond_5
    const/4 v5, 0x4

    goto :goto_5
.end method

.method private configureVersionCell(Landroid/view/View;)V
    .locals 3
    .param p1, "cell"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 578
    const v2, 0x7f0b005d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 579
    const v2, 0x7f0b005e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 580
    const v2, 0x7f0b005f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 581
    .local v0, "subTitle":Landroid/widget/TextView;
    const v2, 0x7f0b0060

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 582
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getCopyright()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v2, p0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/HomeFragment;->access$7(Lbe/gentgo/tetsuki/HomeFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 479
    const/16 v0, 0xb

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 600
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 606
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 484
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 494
    move-object/from16 v2, p2

    .line 495
    .local v2, "result":Landroid/view/View;
    if-nez v2, :cond_0

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030010

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 498
    :cond_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v6, 0x1

    .line 499
    .local v6, "connected":Z
    :goto_0
    if-eqz v6, :cond_3

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v12, 0x1

    .line 501
    .local v12, "account":Z
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 543
    :cond_1
    :goto_2
    return-object v2

    .line 498
    .end local v6    # "connected":Z
    .end local v12    # "account":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 499
    .restart local v6    # "connected":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 503
    .restart local v12    # "account":Z
    :pswitch_0
    const v3, 0x7f020019

    const v4, 0x7f08015b

    const v5, 0x7f08015f

    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/HomeFragment;->access$5(Lbe/gentgo/tetsuki/HomeFragment;)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v7, 0x1

    :goto_3
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lbe/gentgo/tetsuki/HomeFragment$4;->configureCell(Landroid/view/View;IIIZZ)V

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 506
    :pswitch_1
    const v9, 0x7f02001a

    const v10, 0x7f08015c

    const v11, 0x7f080160

    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/HomeFragment;->access$5(Lbe/gentgo/tetsuki/HomeFragment;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v7, p0

    move-object v8, v2

    invoke-direct/range {v7 .. v13}, Lbe/gentgo/tetsuki/HomeFragment$4;->configureCell(Landroid/view/View;IIIZZ)V

    .line 507
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getInvitationManager()Lbe/gentgo/tetsuki/InvitationManager;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/InvitationManager;->getNrOfUnreadInvitations()I

    move-result v21

    .line 508
    .local v21, "unreadInvitations":I
    if-lez v21, :cond_1

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3}, Lbe/gentgo/tetsuki/HomeFragment$4;->addBadge(Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_2

    .line 506
    .end local v21    # "unreadInvitations":I
    :cond_5
    const/4 v13, 0x0

    goto :goto_4

    .line 511
    :pswitch_2
    const v3, 0x7f02001b

    const v4, 0x7f08003c

    const v5, 0x7f080161

    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/HomeFragment;->access$5(Lbe/gentgo/tetsuki/HomeFragment;)I

    move-result v1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_6

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lbe/gentgo/tetsuki/HomeFragment$4;->configureCell(Landroid/view/View;IIIZZ)V

    .line 512
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getNumberOfOnlineFriends()I

    move-result v20

    .line 513
    .local v20, "f":I
    if-lez v20, :cond_1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3}, Lbe/gentgo/tetsuki/HomeFragment$4;->addBadge(Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_2

    .line 511
    .end local v20    # "f":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    .line 516
    :pswitch_3
    const v9, 0x7f020015

    const v10, 0x7f0800e1

    const v11, 0x7f080163

    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/HomeFragment;->access$5(Lbe/gentgo/tetsuki/HomeFragment;)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    const/4 v13, 0x1

    :goto_6
    move-object/from16 v7, p0

    move-object v8, v2

    invoke-direct/range {v7 .. v13}, Lbe/gentgo/tetsuki/HomeFragment$4;->configureCell(Landroid/view/View;IIIZZ)V

    goto/16 :goto_2

    :cond_7
    const/4 v13, 0x0

    goto :goto_6

    .line 519
    :pswitch_4
    const v3, 0x7f020018

    const v4, 0x7f0800dc

    const v5, 0x7f080164

    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/HomeFragment;->access$5(Lbe/gentgo/tetsuki/HomeFragment;)I

    move-result v1

    const/4 v7, 0x4

    if-ne v1, v7, :cond_8

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lbe/gentgo/tetsuki/HomeFragment$4;->configureCell(Landroid/view/View;IIIZZ)V

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x0

    goto :goto_7

    .line 522
    :pswitch_5
    const v15, 0x7f020014

    const v16, 0x7f08007b

    const v17, 0x7f080165

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/HomeFragment;->access$5(Lbe/gentgo/tetsuki/HomeFragment;)I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_9

    const/16 v19, 0x1

    :goto_8
    move-object/from16 v13, p0

    move-object v14, v2

    invoke-direct/range {v13 .. v19}, Lbe/gentgo/tetsuki/HomeFragment$4;->configureCell(Landroid/view/View;IIIZZ)V

    goto/16 :goto_2

    :cond_9
    const/16 v19, 0x0

    goto :goto_8

    .line 525
    :pswitch_6
    const v9, 0x7f020017

    const v10, 0x7f0800dd

    const v11, 0x7f080166

    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/HomeFragment;->access$5(Lbe/gentgo/tetsuki/HomeFragment;)I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_a

    const/4 v13, 0x1

    :goto_9
    move-object/from16 v7, p0

    move-object v8, v2

    invoke-direct/range {v7 .. v13}, Lbe/gentgo/tetsuki/HomeFragment$4;->configureCell(Landroid/view/View;IIIZZ)V

    goto/16 :goto_2

    :cond_a
    const/4 v13, 0x0

    goto :goto_9

    .line 528
    :pswitch_7
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->isJapaneseUser()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 529
    const v9, 0x7f02001c

    const v10, 0x7f0800df

    const v11, 0x7f080177

    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/HomeFragment;->access$5(Lbe/gentgo/tetsuki/HomeFragment;)I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_b

    const/4 v13, 0x1

    :goto_a
    move-object/from16 v7, p0

    move-object v8, v2

    invoke-direct/range {v7 .. v13}, Lbe/gentgo/tetsuki/HomeFragment$4;->configureCell(Landroid/view/View;IIIZZ)V

    goto/16 :goto_2

    :cond_b
    const/4 v13, 0x0

    goto :goto_a

    .line 531
    :cond_c
    const v9, 0x7f02001e

    const v10, 0x7f0800de

    const v11, 0x7f08016f

    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/HomeFragment;->access$5(Lbe/gentgo/tetsuki/HomeFragment;)I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_d

    const/4 v13, 0x1

    :goto_b
    move-object/from16 v7, p0

    move-object v8, v2

    invoke-direct/range {v7 .. v13}, Lbe/gentgo/tetsuki/HomeFragment$4;->configureCell(Landroid/view/View;IIIZZ)V

    goto/16 :goto_2

    :cond_d
    const/4 v13, 0x0

    goto :goto_b

    .line 534
    :pswitch_8
    const v15, 0x7f02001d

    const v16, 0x7f08015d

    const v17, 0x7f080167

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/HomeFragment;->access$5(Lbe/gentgo/tetsuki/HomeFragment;)I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_e

    const/16 v19, 0x1

    :goto_c
    move-object/from16 v13, p0

    move-object v14, v2

    invoke-direct/range {v13 .. v19}, Lbe/gentgo/tetsuki/HomeFragment$4;->configureCell(Landroid/view/View;IIIZZ)V

    goto/16 :goto_2

    :cond_e
    const/16 v19, 0x0

    goto :goto_c

    .line 537
    :pswitch_9
    const v15, 0x7f020016

    const v16, 0x7f08015e

    const v17, 0x7f080168

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/HomeFragment$4;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/HomeFragment;->access$5(Lbe/gentgo/tetsuki/HomeFragment;)I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_f

    const/16 v19, 0x1

    :goto_d
    move-object/from16 v13, p0

    move-object v14, v2

    invoke-direct/range {v13 .. v19}, Lbe/gentgo/tetsuki/HomeFragment$4;->configureCell(Landroid/view/View;IIIZZ)V

    goto/16 :goto_2

    :cond_f
    const/16 v19, 0x0

    goto :goto_d

    .line 540
    :pswitch_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbe/gentgo/tetsuki/HomeFragment$4;->configureVersionCell(Landroid/view/View;)V

    goto/16 :goto_2

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 489
    const/16 v0, 0xb

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 594
    const/4 v0, 0x1

    return v0
.end method
