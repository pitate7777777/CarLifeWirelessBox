.class public Ld/b/k/m$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/b/p/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/k/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Ld/b/p/a$a;

.field public final synthetic b:Ld/b/k/m;


# direct methods
.method public constructor <init>(Ld/b/k/m;Ld/b/p/a$a;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/m$d;->b:Ld/b/k/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld/b/k/m$d;->a:Ld/b/p/a$a;

    return-void
.end method


# virtual methods
.method public a(Ld/b/p/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Ld/b/k/m$d;->b:Ld/b/k/m;

    iget-object v0, v0, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    invoke-static {v0}, Ld/h/l/p;->Y(Landroid/view/View;)V

    iget-object v0, p0, Ld/b/k/m$d;->a:Ld/b/p/a$a;

    invoke-interface {v0, p1, p2}, Ld/b/p/a$a;->a(Ld/b/p/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Ld/b/p/a;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Ld/b/k/m$d;->a:Ld/b/p/a$a;

    invoke-interface {v0, p1, p2}, Ld/b/p/a$a;->b(Ld/b/p/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c(Ld/b/p/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Ld/b/k/m$d;->a:Ld/b/p/a$a;

    invoke-interface {v0, p1, p2}, Ld/b/p/a$a;->c(Ld/b/p/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public d(Ld/b/p/a;)V
    .locals 2

    iget-object v0, p0, Ld/b/k/m$d;->a:Ld/b/p/a$a;

    invoke-interface {v0, p1}, Ld/b/p/a$a;->d(Ld/b/p/a;)V

    iget-object p1, p0, Ld/b/k/m$d;->b:Ld/b/k/m;

    iget-object v0, p1, Ld/b/k/m;->t:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Ld/b/k/m;->i:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ld/b/k/m$d;->b:Ld/b/k/m;

    iget-object v0, v0, Ld/b/k/m;->u:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Ld/b/k/m$d;->b:Ld/b/k/m;

    iget-object v0, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ld/b/k/m;->y()V

    iget-object p1, p0, Ld/b/k/m$d;->b:Ld/b/k/m;

    iget-object v0, p1, Ld/b/k/m;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Ld/h/l/p;->b(Landroid/view/View;)Ld/h/l/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/h/l/s;->a(F)Ld/h/l/s;

    iput-object v0, p1, Ld/b/k/m;->v:Ld/h/l/s;

    iget-object p1, p0, Ld/b/k/m$d;->b:Ld/b/k/m;

    iget-object p1, p1, Ld/b/k/m;->v:Ld/h/l/s;

    new-instance v0, Ld/b/k/m$d$a;

    invoke-direct {v0, p0}, Ld/b/k/m$d$a;-><init>(Ld/b/k/m$d;)V

    .line 1
    iget-object v1, p1, Ld/h/l/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, v0}, Ld/h/l/s;->e(Landroid/view/View;Ld/h/l/t;)V

    .line 2
    :cond_1
    iget-object p1, p0, Ld/b/k/m$d;->b:Ld/b/k/m;

    iget-object v0, p1, Ld/b/k/m;->k:Ld/b/k/k;

    if-eqz v0, :cond_2

    iget-object p1, p1, Ld/b/k/m;->r:Ld/b/p/a;

    invoke-interface {v0, p1}, Ld/b/k/k;->v(Ld/b/p/a;)V

    :cond_2
    iget-object p1, p0, Ld/b/k/m$d;->b:Ld/b/k/m;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/b/k/m;->r:Ld/b/p/a;

    iget-object p1, p1, Ld/b/k/m;->y:Landroid/view/ViewGroup;

    invoke-static {p1}, Ld/h/l/p;->Y(Landroid/view/View;)V

    return-void
.end method
