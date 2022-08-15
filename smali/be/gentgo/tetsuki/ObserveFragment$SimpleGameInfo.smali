.class Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;
.super Ljava/lang/Object;
.source "ObserveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/ObserveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleGameInfo"
.end annotation


# instance fields
.field public black:Ljava/lang/String;

.field public blackRank:F

.field public blackTitle:Ljava/lang/String;

.field public gameID:I

.field public moves:I

.field public observers:I

.field final synthetic this$0:Lbe/gentgo/tetsuki/ObserveFragment;

.field public title:Ljava/lang/String;

.field public white:Ljava/lang/String;

.field public whiteRank:F

.field public whiteTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/ObserveFragment;Ljava/lang/String;Ljava/lang/String;FFIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "w"    # Ljava/lang/String;
    .param p3, "b"    # Ljava/lang/String;
    .param p4, "wr"    # F
    .param p5, "br"    # F
    .param p6, "m"    # I
    .param p7, "o"    # I
    .param p8, "id"    # I
    .param p9, "t"    # Ljava/lang/String;
    .param p10, "wt"    # Ljava/lang/String;
    .param p11, "bt"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p2, p0, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->white:Ljava/lang/String;

    iput-object p3, p0, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->black:Ljava/lang/String;

    iput p4, p0, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->whiteRank:F

    iput p5, p0, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->blackRank:F

    iput p6, p0, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->moves:I

    iput p7, p0, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->observers:I

    iput p8, p0, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->gameID:I

    iput-object p9, p0, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->title:Ljava/lang/String;

    iput-object p10, p0, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->whiteTitle:Ljava/lang/String;

    iput-object p11, p0, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->blackTitle:Ljava/lang/String;

    .line 91
    return-void
.end method
