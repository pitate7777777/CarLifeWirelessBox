.class public Ld/k/d/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/k/d/g;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ld/k/d/g;


# direct methods
.method public constructor <init>(Ld/k/d/g;)V
    .locals 0

    iput-object p1, p0, Ld/k/d/g$a;->e:Ld/k/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ld/k/d/g$a;->e:Ld/k/d/g;

    iget-object v0, v0, Ld/k/d/g;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->j()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/k/d/g$a;->e:Ld/k/d/g;

    iget-object v0, v0, Ld/k/d/g;->b:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->u0(Landroid/view/View;)V

    iget-object v0, p0, Ld/k/d/g$a;->e:Ld/k/d/g;

    iget-object v1, v0, Ld/k/d/g;->c:Ld/k/d/g0$a;

    iget-object v2, v0, Ld/k/d/g;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Ld/k/d/g;->d:Ld/h/h/a;

    check-cast v1, Ld/k/d/r$b;

    invoke-virtual {v1, v2, v0}, Ld/k/d/r$b;->a(Landroidx/fragment/app/Fragment;Ld/h/h/a;)V

    :cond_0
    return-void
.end method
