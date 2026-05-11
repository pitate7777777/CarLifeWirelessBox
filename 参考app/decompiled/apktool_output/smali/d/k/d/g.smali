.class public final Ld/k/d/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Ld/k/d/g0$a;

.field public final synthetic d:Ld/h/h/a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ld/k/d/g0$a;Ld/h/h/a;)V
    .locals 0

    iput-object p1, p0, Ld/k/d/g;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Ld/k/d/g;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Ld/k/d/g;->c:Ld/k/d/g0$a;

    iput-object p4, p0, Ld/k/d/g;->d:Ld/h/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Ld/k/d/g;->a:Landroid/view/ViewGroup;

    new-instance v0, Ld/k/d/g$a;

    invoke-direct {v0, p0}, Ld/k/d/g$a;-><init>(Ld/k/d/g;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
