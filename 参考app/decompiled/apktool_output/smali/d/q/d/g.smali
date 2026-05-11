.class public Ld/q/d/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$a0;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/ViewPropertyAnimator;

.field public final synthetic d:Ld/q/d/k;


# direct methods
.method public constructor <init>(Ld/q/d/k;Landroidx/recyclerview/widget/RecyclerView$a0;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Ld/q/d/g;->d:Ld/q/d/k;

    iput-object p2, p0, Ld/q/d/g;->a:Landroidx/recyclerview/widget/RecyclerView$a0;

    iput-object p3, p0, Ld/q/d/g;->b:Landroid/view/View;

    iput-object p4, p0, Ld/q/d/g;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld/q/d/g;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld/q/d/g;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Ld/q/d/g;->d:Ld/q/d/k;

    iget-object v0, p0, Ld/q/d/g;->a:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$j;->d(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 2
    iget-object p1, p0, Ld/q/d/g;->d:Ld/q/d/k;

    iget-object p1, p1, Ld/q/d/k;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Ld/q/d/g;->a:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Ld/q/d/g;->d:Ld/q/d/k;

    invoke-virtual {p1}, Ld/q/d/k;->l()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Ld/q/d/g;->d:Ld/q/d/k;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method
