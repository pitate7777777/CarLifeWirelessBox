.class public Le/c/a/a/z/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public a:Z

.field public final synthetic b:Le/c/a/a/z/i;

.field public final synthetic c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Le/c/a/a/z/i;)V
    .locals 0

    iput-object p2, p0, Le/c/a/a/z/a;->b:Le/c/a/a/z/i;

    const/4 p1, 0x0

    iput-object p1, p0, Le/c/a/a/z/a;->c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/c/a/a/z/a;->a:Z

    iget-object p1, p0, Le/c/a/a/z/a;->b:Le/c/a/a/z/i;

    invoke-interface {p1}, Le/c/a/a/z/i;->c()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Le/c/a/a/z/a;->b:Le/c/a/a/z/i;

    invoke-interface {p1}, Le/c/a/a/z/i;->b()V

    iget-boolean p1, p0, Le/c/a/a/z/a;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Le/c/a/a/z/a;->b:Le/c/a/a/z/i;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/c/a/a/z/i;->e(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/z/a;->b:Le/c/a/a/z/i;

    invoke-interface {v0, p1}, Le/c/a/a/z/i;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/c/a/a/z/a;->a:Z

    return-void
.end method
