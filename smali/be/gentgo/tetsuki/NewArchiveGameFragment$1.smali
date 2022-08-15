.class Lbe/gentgo/tetsuki/NewArchiveGameFragment$1;
.super Ljava/lang/Object;
.source "NewArchiveGameFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/NewArchiveGameFragment;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$1;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 132
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 133
    .local v0, "date":Ljava/util/Date;
    add-int/lit16 v1, p2, -0x76c

    invoke-virtual {v0, v1}, Ljava/util/Date;->setYear(I)V

    .line 134
    invoke-virtual {v0, p3}, Ljava/util/Date;->setMonth(I)V

    .line 135
    invoke-virtual {v0, p4}, Ljava/util/Date;->setDate(I)V

    .line 136
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$1;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/GameSettings;->setDate(Ljava/util/Date;)V

    .line 137
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$1;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$1;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 138
    :cond_0
    return-void
.end method
