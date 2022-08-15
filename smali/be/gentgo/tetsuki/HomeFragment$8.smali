.class Lbe/gentgo/tetsuki/HomeFragment$8;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/HomeFragment;->presentStatusMenu(Landroid/view/View;)V
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/HomeFragment$8;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 393
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 402
    :goto_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Server;->setStatus(I)V

    .line 403
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->save()V

    .line 404
    iget-object v0, p0, Lbe/gentgo/tetsuki/HomeFragment$8;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-virtual {v0, v2}, Lbe/gentgo/tetsuki/HomeFragment;->update(Z)V

    .line 405
    return v2

    .line 396
    :pswitch_0
    const/4 v0, 0x2

    invoke-static {v0}, Lbe/gentgo/tetsuki/Preferences;->setStatus(I)V

    goto :goto_0

    .line 398
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Lbe/gentgo/tetsuki/Preferences;->setStatus(I)V

    goto :goto_0

    .line 400
    :pswitch_2
    invoke-static {v2}, Lbe/gentgo/tetsuki/Preferences;->setStatus(I)V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x7f0b00e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
