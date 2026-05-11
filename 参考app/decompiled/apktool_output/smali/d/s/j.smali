.class public Ld/s/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Ld/e/a;

.field public final synthetic b:Ld/s/i;


# direct methods
.method public constructor <init>(Ld/s/i;Ld/e/a;)V
    .locals 0

    iput-object p1, p0, Ld/s/j;->b:Ld/s/i;

    iput-object p2, p0, Ld/s/j;->a:Ld/e/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Ld/s/j;->a:Ld/e/a;

    invoke-virtual {v0, p1}, Ld/e/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ld/s/j;->b:Ld/s/i;

    iget-object v0, v0, Ld/s/i;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Ld/s/j;->b:Ld/s/i;

    iget-object v0, v0, Ld/s/i;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
