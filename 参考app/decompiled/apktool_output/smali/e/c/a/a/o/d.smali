.class public Le/c/a/a/o/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/appcompat/widget/ActionMenuView;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/o/d;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-object p2, p0, Le/c/a/a/o/d;->b:Landroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Le/c/a/a/o/d;->c:I

    iput-boolean p4, p0, Le/c/a/a/o/d;->d:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/c/a/a/o/d;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-boolean p1, p0, Le/c/a/a/o/d;->a:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Le/c/a/a/o/d;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 1
    iget p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Le/c/a/a/o/d;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 3
    iget v2, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4
    iput v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0:I

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->n(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Le/c/a/a/o/d;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-object v1, p0, Le/c/a/a/o/d;->b:Landroidx/appcompat/widget/ActionMenuView;

    iget v2, p0, Le/c/a/a/o/d;->c:I

    iget-boolean v4, p0, Le/c/a/a/o/d;->d:Z

    if-eqz v0, :cond_3

    .line 6
    new-instance v3, Le/c/a/a/o/e;

    invoke-direct {v3, v0, v1, v2, v4}, Le/c/a/a/o/e;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    if-eqz p1, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Le/c/a/a/o/e;->run()V

    goto :goto_1

    :cond_3
    throw v3

    :cond_4
    :goto_1
    return-void
.end method
