.class public abstract Le/c/a/a/z/e$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/z/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "h"
.end annotation


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public final synthetic d:Le/c/a/a/z/e;


# direct methods
.method public constructor <init>(Le/c/a/a/z/e;Le/c/a/a/z/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/a/z/e$h;->d:Le/c/a/a/z/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Le/c/a/a/z/e$h;->d:Le/c/a/a/z/e;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/c/a/a/z/e$h;->a:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-boolean v0, p0, Le/c/a/a/z/e$h;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Le/c/a/a/z/e$h;->d:Le/c/a/a/z/e;

    iget-object v0, v0, Le/c/a/a/z/e;->b:Le/c/a/a/f0/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v0, Le/c/a/a/f0/g;->e:Le/c/a/a/f0/g$b;

    iget v0, v0, Le/c/a/a/f0/g$b;->o:F

    .line 2
    :goto_0
    iput v0, p0, Le/c/a/a/z/e$h;->b:F

    invoke-virtual {p0}, Le/c/a/a/z/e$h;->a()F

    move-result v0

    iput v0, p0, Le/c/a/a/z/e$h;->c:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/c/a/a/z/e$h;->a:Z

    :cond_1
    iget-object v0, p0, Le/c/a/a/z/e$h;->d:Le/c/a/a/z/e;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
