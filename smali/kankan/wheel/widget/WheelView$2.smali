.class Lkankan/wheel/widget/WheelView$2;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkankan/wheel/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkankan/wheel/widget/WheelView;


# direct methods
.method constructor <init>(Lkankan/wheel/widget/WheelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lkankan/wheel/widget/WheelView$2;->this$0:Lkankan/wheel/widget/WheelView;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Z

    .prologue
    .line 135
    if-eqz p2, :cond_0

    .line 136
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$2;->this$0:Lkankan/wheel/widget/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkankan/wheel/widget/WheelView;->access$1(Lkankan/wheel/widget/WheelView;I)V

    .line 142
    :goto_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$2;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$2(Lkankan/wheel/widget/WheelView;)V

    .line 143
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$2;->this$0:Lkankan/wheel/widget/WheelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkankan/wheel/widget/WheelView;->access$1(Lkankan/wheel/widget/WheelView;I)V

    goto :goto_0
.end method
