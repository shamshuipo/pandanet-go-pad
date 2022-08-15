.class public Lbe/gentgo/tetsuki/ArchiveFragment;
.super Landroid/app/Fragment;
.source "ArchiveFragment.java"


# instance fields
.field private archiveListAdapter:Landroid/widget/BaseAdapter;

.field private dateFormat:Ljava/text/DateFormat;

.field private mode:I

.field private myPandanetVisible:Z

.field selection:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 308
    iput v1, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->mode:I

    .line 310
    new-instance v0, Lbe/gentgo/tetsuki/ArchiveFragment$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/ArchiveFragment$1;-><init>(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->archiveListAdapter:Landroid/widget/BaseAdapter;

    .line 34
    iput v1, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->mode:I

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->selection:Ljava/util/Set;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/ArchiveFragment;)Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->myPandanetVisible:Z

    return v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/ArchiveFragment;)Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$10(Lbe/gentgo/tetsuki/ArchiveFragment;IZ)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/ArchiveFragment;->setSelected(IZ)V

    return-void
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/ArchiveFragment;Ljava/text/DateFormat;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method static synthetic access$3(Lbe/gentgo/tetsuki/ArchiveFragment;)I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->mode:I

    return v0
.end method

.method static synthetic access$4(Lbe/gentgo/tetsuki/ArchiveFragment;I)Z
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/ArchiveFragment;->isSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lbe/gentgo/tetsuki/ArchiveFragment;I)V
    .locals 0

    .prologue
    .line 308
    iput p1, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->mode:I

    return-void
.end method

.method static synthetic access$6(Lbe/gentgo/tetsuki/ArchiveFragment;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lbe/gentgo/tetsuki/ArchiveFragment;->updateButtons()V

    return-void
.end method

.method static synthetic access$7(Lbe/gentgo/tetsuki/ArchiveFragment;)Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->archiveListAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lbe/gentgo/tetsuki/ArchiveFragment;)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lbe/gentgo/tetsuki/ArchiveFragment;->mailSelection()V

    return-void
.end method

.method static synthetic access$9(Lbe/gentgo/tetsuki/ArchiveFragment;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lbe/gentgo/tetsuki/ArchiveFragment;->deleteSelection()V

    return-void
.end method

.method private deleteSelection()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 268
    iget-object v1, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->selection:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    :goto_0
    return-void

    .line 270
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ArchiveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->selection:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 272
    const v1, 0x7f0800e3

    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/ArchiveFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 275
    :goto_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 276
    const v1, 0x7f080031

    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/ArchiveFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbe/gentgo/tetsuki/ArchiveFragment$8;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/ArchiveFragment$8;-><init>(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 286
    const v1, 0x7f080039

    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/ArchiveFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbe/gentgo/tetsuki/ArchiveFragment$9;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/ArchiveFragment$9;-><init>(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 274
    :cond_1
    const v1, 0x7f0800e4

    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/ArchiveFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->selection:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private isSelected(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->selection:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private mailSelection()V
    .locals 23

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/ArchiveFragment;->selection:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 264
    :goto_0
    return-void

    .line 227
    :cond_0
    :try_start_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v17, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy/MM/dd"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 232
    .local v10, "format":Ljava/text/DateFormat;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    .line 233
    .local v14, "tempDir":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    const-string v18, "PandaTetsuki"

    move-object/from16 v0, v18

    invoke-direct {v15, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    .end local v14    # "tempDir":Ljava/io/File;
    .local v15, "tempDir":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    const-string v18, "attachments"

    move-object/from16 v0, v18

    invoke-direct {v14, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 235
    .end local v15    # "tempDir":Ljava/io/File;
    .restart local v14    # "tempDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 236
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v14, v0}, Lbe/gentgo/tetsuki/ArchiveFragment;->removeDirectory(Ljava/io/File;Z)Z

    .line 238
    const/4 v3, 0x1

    .line 239
    .local v3, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/ArchiveFragment;->selection:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v4, v3

    .end local v3    # "count":I
    .local v4, "count":I
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_1

    .line 253
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v8, "emailIntent":Landroid/content/Intent;
    const-string v18, "plain/text"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v18, "android.intent.extra.SUBJECT"

    const-string v19, "Game Records from Tetsuki"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v18, "android.intent.extra.STREAM"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 258
    const-string v18, "Email:"

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/ArchiveFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 260
    .end local v4    # "count":I
    .end local v8    # "emailIntent":Landroid/content/Intent;
    .end local v10    # "format":Ljava/text/DateFormat;
    .end local v14    # "tempDir":Ljava/io/File;
    .end local v17    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_0
    move-exception v7

    .line 262
    .local v7, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 239
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "count":I
    .restart local v10    # "format":Ljava/text/DateFormat;
    .restart local v14    # "tempDir":Ljava/io/File;
    .restart local v17    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 241
    .local v2, "ID":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lbe/gentgo/tetsuki/Document;->getDocument(I)Lbe/gentgo/tetsuki/Document;

    move-result-object v6

    .line 242
    .local v6, "document":Lbe/gentgo/tetsuki/Document;
    const-string v19, "Game %d.sgf"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 243
    .local v16, "title":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v9, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    .local v9, "file":Ljava/io/File;
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Document;->getGame()Lbe/gentgo/tetsuki/Game;

    move-result-object v11

    .line 246
    .local v11, "game":Lbe/gentgo/tetsuki/Game;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 247
    .local v13, "path":Ljava/lang/String;
    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Document;->getName()Ljava/lang/String;

    move-result-object v12

    .line 248
    .local v12, "gameTitle":Ljava/lang/String;
    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Document;->getDate()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "date":Ljava/lang/String;
    invoke-virtual {v11, v13, v12, v5}, Lbe/gentgo/tetsuki/Game;->saveCopy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Document;->unload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_1
.end method

.method private static removeDirectory(Ljava/io/File;Z)Z
    .locals 6
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "onlyContent"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    if-nez p0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v3

    .line 196
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 197
    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "list":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v2

    if-lt v1, v5, :cond_4

    .line 217
    .end local v1    # "i":I
    :cond_3
    if-eqz p1, :cond_7

    move v3, v4

    goto :goto_0

    .line 204
    .restart local v1    # "i":I
    :cond_4
    new-instance v0, Ljava/io/File;

    aget-object v5, v2, v1

    invoke-direct {v0, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    .local v0, "entry":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 207
    invoke-static {v0, v4}, Lbe/gentgo/tetsuki/ArchiveFragment;->removeDirectory(Ljava/io/File;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    .line 218
    .end local v0    # "entry":Ljava/io/File;
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_0
.end method

.method private setSelected(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 298
    if-eqz p2, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->selection:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->selection:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateButtons()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 162
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v6

    const v9, 0x7f0b001a

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 163
    .local v5, "title":Landroid/widget/TextView;
    iget v6, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->mode:I

    if-nez v6, :cond_1

    .line 164
    const v6, 0x7f08007b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 172
    :goto_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v6

    const v9, 0x7f0b001d

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 173
    .local v2, "deleteButton":Landroid/widget/ImageButton;
    iget v6, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->mode:I

    if-nez v6, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 175
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v6

    const v9, 0x7f0b001e

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 176
    .local v4, "emailButton":Landroid/widget/ImageButton;
    iget v6, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->mode:I

    if-nez v6, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 178
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v6

    const v9, 0x7f0b001f

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 179
    .local v1, "cancelButton":Landroid/widget/Button;
    iget v6, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->mode:I

    if-nez v6, :cond_5

    move v6, v8

    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v6

    const v9, 0x7f0b0020

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 182
    .local v3, "doneButton":Landroid/widget/Button;
    iget v6, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->mode:I

    if-nez v6, :cond_6

    :goto_4
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    iget v6, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->mode:I

    if-eqz v6, :cond_0

    .line 185
    iget v6, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->mode:I

    if-ne v6, v11, :cond_7

    const v6, 0x7f0800e5

    :goto_5
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(I)V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ArchiveFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v8, 0x7f0b002c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 189
    .local v0, "addButton":Landroid/widget/ImageButton;
    iget v6, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->mode:I

    if-nez v6, :cond_8

    :goto_6
    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 191
    return-void

    .line 166
    .end local v0    # "addButton":Landroid/widget/ImageButton;
    .end local v1    # "cancelButton":Landroid/widget/Button;
    .end local v2    # "deleteButton":Landroid/widget/ImageButton;
    .end local v3    # "doneButton":Landroid/widget/Button;
    .end local v4    # "emailButton":Landroid/widget/ImageButton;
    :cond_1
    iget-object v6, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->selection:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 167
    const v6, 0x7f0800e2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 169
    :cond_2
    const v6, 0x7f0800e4

    invoke-virtual {p0, v6}, Lbe/gentgo/tetsuki/ArchiveFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->selection:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .restart local v2    # "deleteButton":Landroid/widget/ImageButton;
    :cond_3
    move v6, v8

    .line 173
    goto/16 :goto_1

    .restart local v4    # "emailButton":Landroid/widget/ImageButton;
    :cond_4
    move v6, v8

    .line 176
    goto/16 :goto_2

    .restart local v1    # "cancelButton":Landroid/widget/Button;
    :cond_5
    move v6, v7

    .line 179
    goto :goto_3

    .restart local v3    # "doneButton":Landroid/widget/Button;
    :cond_6
    move v8, v7

    .line 182
    goto :goto_4

    .line 185
    :cond_7
    const v6, 0x7f080031

    goto :goto_5

    .line 189
    .restart local v0    # "addButton":Landroid/widget/ImageButton;
    :cond_8
    const/4 v7, 0x4

    goto :goto_6
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    const v7, 0x7f030004

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 71
    .local v6, "result":Landroid/view/View;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b001d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 72
    .local v2, "deleteButton":Landroid/widget/ImageButton;
    new-instance v7, Lbe/gentgo/tetsuki/ArchiveFragment$2;

    invoke-direct {v7, p0}, Lbe/gentgo/tetsuki/ArchiveFragment$2;-><init>(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b001e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 83
    .local v4, "emailButton":Landroid/widget/ImageButton;
    new-instance v7, Lbe/gentgo/tetsuki/ArchiveFragment$3;

    invoke-direct {v7, p0}, Lbe/gentgo/tetsuki/ArchiveFragment$3;-><init>(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b001f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 94
    .local v1, "cancelButton":Landroid/widget/Button;
    new-instance v7, Lbe/gentgo/tetsuki/ArchiveFragment$4;

    invoke-direct {v7, p0}, Lbe/gentgo/tetsuki/ArchiveFragment$4;-><init>(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b0020

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 103
    .local v3, "doneButton":Landroid/widget/Button;
    new-instance v7, Lbe/gentgo/tetsuki/ArchiveFragment$5;

    invoke-direct {v7, p0}, Lbe/gentgo/tetsuki/ArchiveFragment$5;-><init>(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v7, 0x7f0b002b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    .line 118
    .local v5, "list":Landroid/widget/GridView;
    iget-object v7, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->archiveListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    new-instance v7, Lbe/gentgo/tetsuki/ArchiveFragment$6;

    invoke-direct {v7, p0}, Lbe/gentgo/tetsuki/ArchiveFragment$6;-><init>(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    invoke-virtual {v5, v7}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    const v7, 0x7f0b002c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 149
    .local v0, "addButton":Landroid/widget/ImageButton;
    new-instance v7, Lbe/gentgo/tetsuki/ArchiveFragment$7;

    invoke-direct {v7, p0}, Lbe/gentgo/tetsuki/ArchiveFragment$7;-><init>(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-object v6
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 51
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b001d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 52
    .local v1, "deleteButton":Landroid/widget/ImageButton;
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 54
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b001e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 55
    .local v3, "emailButton":Landroid/widget/ImageButton;
    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 57
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b001f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 58
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 61
    .local v2, "doneButton":Landroid/widget/Button;
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->myPandanetVisible:Z

    .line 44
    invoke-direct {p0}, Lbe/gentgo/tetsuki/ArchiveFragment;->updateButtons()V

    .line 45
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment;->archiveListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 46
    return-void
.end method
