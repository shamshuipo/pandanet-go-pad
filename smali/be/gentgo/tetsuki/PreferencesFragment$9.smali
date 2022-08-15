.class Lbe/gentgo/tetsuki/PreferencesFragment$9;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$9;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 424
    const v0, 0x7f0b0007

    if-ne p2, v0, :cond_0

    .line 425
    const/4 v0, 0x0

    invoke-static {v0}, Lbe/gentgo/tetsuki/Preferences;->setWoodStyle(I)V

    .line 426
    :cond_0
    const v0, 0x7f0b0008

    if-ne p2, v0, :cond_1

    .line 427
    const/4 v0, 0x1

    invoke-static {v0}, Lbe/gentgo/tetsuki/Preferences;->setWoodStyle(I)V

    .line 428
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$9;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/PreferencesFragment;->gameView:Lbe/gentgo/tetsuki/GameView;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameView;->invalidate()V

    .line 429
    return-void
.end method
