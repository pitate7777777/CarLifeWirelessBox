.class public Ld/s/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Ld/s/i;


# direct methods
.method public constructor <init>(Ld/s/i;)V
    .locals 0

    iput-object p1, p0, Ld/s/k;->a:Ld/s/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Ld/s/k;->a:Ld/s/i;

    invoke-virtual {v0}, Ld/s/i;->n()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
