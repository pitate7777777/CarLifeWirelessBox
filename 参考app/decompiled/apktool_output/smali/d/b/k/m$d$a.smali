.class public Ld/b/k/m$d$a;
.super Ld/h/l/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/k/m$d;->d(Ld/b/p/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/k/m$d;


# direct methods
.method public constructor <init>(Ld/b/k/m$d;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/m$d$a;->a:Ld/b/k/m$d;

    invoke-direct {p0}, Ld/h/l/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/b/k/m$d$a;->a:Ld/b/k/m$d;

    iget-object p1, p1, Ld/b/k/m$d;->b:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Ld/b/k/m$d$a;->a:Ld/b/k/m$d;

    iget-object p1, p1, Ld/b/k/m$d;->b:Ld/b/k/m;

    iget-object v0, p1, Ld/b/k/m;->t:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld/b/k/m$d$a;->a:Ld/b/k/m$d;

    iget-object p1, p1, Ld/b/k/m$d;->b:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ld/h/l/p;->Y(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Ld/b/k/m$d$a;->a:Ld/b/k/m$d;

    iget-object p1, p1, Ld/b/k/m$d;->b:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Ld/b/k/m$d$a;->a:Ld/b/k/m$d;

    iget-object p1, p1, Ld/b/k/m$d;->b:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->v:Ld/h/l/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld/h/l/s;->d(Ld/h/l/t;)Ld/h/l/s;

    iget-object p1, p0, Ld/b/k/m$d$a;->a:Ld/b/k/m$d;

    iget-object p1, p1, Ld/b/k/m$d;->b:Ld/b/k/m;

    iput-object v0, p1, Ld/b/k/m;->v:Ld/h/l/s;

    iget-object p1, p1, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    invoke-static {p1}, Ld/h/l/p;->Y(Landroid/view/View;)V

    return-void
.end method
