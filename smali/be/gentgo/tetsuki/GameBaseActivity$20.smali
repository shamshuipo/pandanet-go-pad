.class Lbe/gentgo/tetsuki/GameBaseActivity$20;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GameBaseActivity;->finishTapped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/GameBaseActivity;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$20;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 429
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 437
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 430
    :pswitch_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$20;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->onDoneTapped()V

    goto :goto_0

    .line 431
    :pswitch_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$20;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->onRecountTapped()V

    goto :goto_0

    .line 432
    :pswitch_2
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$20;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->onPassTapped()V

    goto :goto_0

    .line 433
    :pswitch_3
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$20;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->onResignTapped()V

    goto :goto_0

    .line 434
    :pswitch_4
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$20;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->onReportTapped()V

    goto :goto_0

    .line 435
    :pswitch_5
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$20;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->onAddTimeTapped()V

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
