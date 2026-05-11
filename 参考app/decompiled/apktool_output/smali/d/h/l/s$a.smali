.class public Ld/h/l/s$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/h/l/s;->e(Landroid/view/View;Ld/h/l/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/h/l/t;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ld/h/l/s;Ld/h/l/t;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Ld/h/l/s$a;->a:Ld/h/l/t;

    iput-object p3, p0, Ld/h/l/s$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld/h/l/s$a;->a:Ld/h/l/t;

    iget-object v0, p0, Ld/h/l/s$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld/h/l/t;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld/h/l/s$a;->a:Ld/h/l/t;

    iget-object v0, p0, Ld/h/l/s$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld/h/l/t;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld/h/l/s$a;->a:Ld/h/l/t;

    iget-object v0, p0, Ld/h/l/s$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld/h/l/t;->b(Landroid/view/View;)V

    return-void
.end method
