.class Lbe/gentgo/tetsuki/AccountSettingsFragment$3;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$3;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 256
    invoke-static {p2}, Lbe/gentgo/tetsuki/Preferences;->setJapaneseRanking(Z)V

    .line 257
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->japaneseRanking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, -0x2

    invoke-static {v0}, Lbe/gentgo/tetsuki/Player;->setShodanRank(I)V

    .line 261
    :goto_0
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->save()V

    .line 262
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbe/gentgo/tetsuki/Player;->setShodanRank(I)V

    goto :goto_0
.end method
