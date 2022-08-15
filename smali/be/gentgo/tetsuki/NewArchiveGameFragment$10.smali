.class Lbe/gentgo/tetsuki/NewArchiveGameFragment$10;
.super Landroid/app/DialogFragment;
.source "NewArchiveGameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/NewArchiveGameFragment;->selectRow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$10;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    .line 256
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 259
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    .local v6, "calendar":Ljava/util/Calendar;
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$10;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameSettings;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 260
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 261
    .local v3, "year":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 262
    .local v4, "month":I
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 265
    .local v5, "day":I
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$10;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$10;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->dateListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object v0
.end method
