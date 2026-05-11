.class public final Ld/k/d/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:Ld/k/d/g0$a;

.field public final synthetic e:Ld/h/h/a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Ld/k/d/g0$a;Ld/h/h/a;)V
    .locals 0

    iput-object p1, p0, Ld/k/d/h;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Ld/k/d/h;->b:Landroid/view/View;

    iput-object p3, p0, Ld/k/d/h;->c:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Ld/k/d/h;->d:Ld/k/d/g0$a;

    iput-object p5, p0, Ld/k/d/h;->e:Ld/h/h/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Ld/k/d/h;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Ld/k/d/h;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, p0, Ld/k/d/h;->c:Landroidx/fragment/app/Fragment;

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->N:Landroidx/fragment/app/Fragment$b;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/Fragment$b;->b:Landroid/animation/Animator;

    .line 2
    :goto_0
    iget-object v1, p0, Ld/k/d/h;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->v0(Landroid/animation/Animator;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld/k/d/h;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Ld/k/d/h;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_1

    iget-object p1, p0, Ld/k/d/h;->d:Ld/k/d/g0$a;

    iget-object v0, p0, Ld/k/d/h;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Ld/k/d/h;->e:Ld/h/h/a;

    check-cast p1, Ld/k/d/r$b;

    invoke-virtual {p1, v0, v1}, Ld/k/d/r$b;->a(Landroidx/fragment/app/Fragment;Ld/h/h/a;)V

    :cond_1
    return-void
.end method
