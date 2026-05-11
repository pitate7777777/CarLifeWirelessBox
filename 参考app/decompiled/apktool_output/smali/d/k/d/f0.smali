.class public final Ld/k/d/f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ld/k/d/l0;

.field public final synthetic f:Ld/e/a;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ld/k/d/g0$b;

.field public final synthetic i:Ljava/util/ArrayList;

.field public final synthetic j:Landroid/view/View;

.field public final synthetic k:Landroidx/fragment/app/Fragment;

.field public final synthetic l:Landroidx/fragment/app/Fragment;

.field public final synthetic m:Z

.field public final synthetic n:Ljava/util/ArrayList;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ld/k/d/l0;Ld/e/a;Ljava/lang/Object;Ld/k/d/g0$b;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Ld/k/d/f0;->e:Ld/k/d/l0;

    iput-object p2, p0, Ld/k/d/f0;->f:Ld/e/a;

    iput-object p3, p0, Ld/k/d/f0;->g:Ljava/lang/Object;

    iput-object p4, p0, Ld/k/d/f0;->h:Ld/k/d/g0$b;

    iput-object p5, p0, Ld/k/d/f0;->i:Ljava/util/ArrayList;

    iput-object p6, p0, Ld/k/d/f0;->j:Landroid/view/View;

    iput-object p7, p0, Ld/k/d/f0;->k:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Ld/k/d/f0;->l:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Ld/k/d/f0;->m:Z

    iput-object p10, p0, Ld/k/d/f0;->n:Ljava/util/ArrayList;

    iput-object p11, p0, Ld/k/d/f0;->o:Ljava/lang/Object;

    iput-object p12, p0, Ld/k/d/f0;->p:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ld/k/d/f0;->e:Ld/k/d/l0;

    iget-object v1, p0, Ld/k/d/f0;->f:Ld/e/a;

    iget-object v2, p0, Ld/k/d/f0;->g:Ljava/lang/Object;

    iget-object v3, p0, Ld/k/d/f0;->h:Ld/k/d/g0$b;

    invoke-static {v0, v1, v2, v3}, Ld/k/d/g0;->e(Ld/k/d/l0;Ld/e/a;Ljava/lang/Object;Ld/k/d/g0$b;)Ld/e/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld/k/d/f0;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ld/e/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Ld/k/d/f0;->i:Ljava/util/ArrayList;

    iget-object v2, p0, Ld/k/d/f0;->j:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Ld/k/d/f0;->k:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Ld/k/d/f0;->l:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Ld/k/d/f0;->m:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Ld/k/d/g0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLd/e/a;Z)V

    iget-object v1, p0, Ld/k/d/f0;->g:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Ld/k/d/f0;->e:Ld/k/d/l0;

    iget-object v3, p0, Ld/k/d/f0;->n:Ljava/util/ArrayList;

    iget-object v4, p0, Ld/k/d/f0;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Ld/k/d/l0;->v(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Ld/k/d/f0;->h:Ld/k/d/g0$b;

    iget-object v2, p0, Ld/k/d/f0;->o:Ljava/lang/Object;

    iget-boolean v3, p0, Ld/k/d/f0;->m:Z

    invoke-static {v0, v1, v2, v3}, Ld/k/d/g0;->k(Ld/e/a;Ld/k/d/g0$b;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Ld/k/d/f0;->e:Ld/k/d/l0;

    iget-object v2, p0, Ld/k/d/f0;->p:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Ld/k/d/l0;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
