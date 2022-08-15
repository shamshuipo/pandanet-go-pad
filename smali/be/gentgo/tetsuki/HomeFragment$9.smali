.class Lbe/gentgo/tetsuki/HomeFragment$9;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/HomeFragment;->presentRoomMenu(Landroid/view/View;)V
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/HomeFragment$9;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 422
    :try_start_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    .line 423
    .local v2, "server":Lbe/gentgo/tetsuki/Server;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Server;->getNrOfRooms()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 430
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/Server;->enterRoom(I)V

    .line 434
    .end local v0    # "i":I
    .end local v2    # "server":Lbe/gentgo/tetsuki/Server;
    :goto_1
    return v5

    .line 424
    .restart local v0    # "i":I
    .restart local v2    # "server":Lbe/gentgo/tetsuki/Server;
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->isJapaneseUser()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lbe/gentgo/tetsuki/Server;->getRoomName(IZ)[B

    move-result-object v3

    const-string v4, "SJIS"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 425
    .local v1, "roomName":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v3

    invoke-virtual {v3, v0}, Lbe/gentgo/tetsuki/Server;->getRoomID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/Server;->enterRoom(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 432
    .end local v0    # "i":I
    .end local v1    # "roomName":Ljava/lang/String;
    .end local v2    # "server":Lbe/gentgo/tetsuki/Server;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 423
    .restart local v0    # "i":I
    .restart local v1    # "roomName":Ljava/lang/String;
    .restart local v2    # "server":Lbe/gentgo/tetsuki/Server;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
