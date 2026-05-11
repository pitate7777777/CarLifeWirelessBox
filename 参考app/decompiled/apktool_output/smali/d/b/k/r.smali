.class public Ld/b/k/r;
.super Ld/h/l/u;
.source ""


# instance fields
.field public final synthetic a:Ld/b/k/m;


# direct methods
.method public constructor <init>(Ld/b/k/m;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/r;->a:Ld/b/k/m;

    invoke-direct {p0}, Ld/h/l/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/b/k/r;->a:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Ld/b/k/r;->a:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->v:Ld/h/l/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld/h/l/s;->d(Ld/h/l/t;)Ld/h/l/s;

    iget-object p1, p0, Ld/b/k/r;->a:Ld/b/k/m;

    iput-object v0, p1, Ld/b/k/m;->v:Ld/h/l/s;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/b/k/r;->a:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Ld/b/k/r;->a:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Ld/b/k/r;->a:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld/b/k/r;->a:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ld/h/l/p;->Y(Landroid/view/View;)V

    :cond_0
    return-void
.end method
