.class public Ld/s/c0;
.super Ld/s/l;
.source ""


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Ld/s/d0;


# direct methods
.method public constructor <init>(Ld/s/d0;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ld/s/c0;->d:Ld/s/d0;

    iput-object p2, p0, Ld/s/c0;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Ld/s/c0;->b:Landroid/view/View;

    iput-object p4, p0, Ld/s/c0;->c:Landroid/view/View;

    invoke-direct {p0}, Ld/s/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/s/i;)V
    .locals 1

    iget-object p1, p0, Ld/s/c0;->a:Landroid/view/ViewGroup;

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ld/s/c0;->b:Landroid/view/View;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public b(Ld/s/i;)V
    .locals 1

    iget-object p1, p0, Ld/s/c0;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ld/s/c0;->a:Landroid/view/ViewGroup;

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ld/s/c0;->b:Landroid/view/View;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Ld/s/c0;->d:Ld/s/d0;

    invoke-virtual {p1}, Ld/s/i;->d()V

    :goto_0
    return-void
.end method

.method public e(Ld/s/i;)V
    .locals 3

    iget-object v0, p0, Ld/s/c0;->c:Landroid/view/View;

    sget v1, Ld/s/f;->save_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Ld/s/c0;->a:Landroid/view/ViewGroup;

    .line 1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ld/s/c0;->b:Landroid/view/View;

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 4
    invoke-virtual {p1, p0}, Ld/s/i;->w(Ld/s/i$d;)Ld/s/i;

    return-void
.end method
