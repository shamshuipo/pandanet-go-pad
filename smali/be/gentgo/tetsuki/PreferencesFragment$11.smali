.class Lbe/gentgo/tetsuki/PreferencesFragment$11;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/PreferencesFragment;->presentAppearanceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PreferencesFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$11;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 444
    const v0, 0x7f0b0003

    if-ne p2, v0, :cond_0

    .line 445
    const/4 v0, 0x0

    invoke-static {v0}, Lbe/gentgo/tetsuki/Preferences;->setBackgroundStyle(I)V

    .line 446
    :cond_0
    const v0, 0x7f0b0004

    if-ne p2, v0, :cond_1

    .line 447
    const/4 v0, 0x1

    invoke-static {v0}, Lbe/gentgo/tetsuki/Preferences;->setBackgroundStyle(I)V

    .line 448
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$11;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/PreferencesFragment;->gameView:Lbe/gentgo/tetsuki/GameView;

    iget-object v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$11;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/PreferencesFragment;->gameView:Lbe/gentgo/tetsuki/GameView;

    iget-object v1, v1, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbe/gentgo/tetsuki/GameView;->setGameAndScore(Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V

    .line 449
    return-void
.end method
