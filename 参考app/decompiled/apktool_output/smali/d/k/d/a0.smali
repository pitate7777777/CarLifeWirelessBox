.class public final Ld/k/d/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ld/k/d/g0$a;

.field public final synthetic f:Landroidx/fragment/app/Fragment;

.field public final synthetic g:Ld/h/h/a;


# direct methods
.method public constructor <init>(Ld/k/d/g0$a;Landroidx/fragment/app/Fragment;Ld/h/h/a;)V
    .locals 0

    iput-object p1, p0, Ld/k/d/a0;->e:Ld/k/d/g0$a;

    iput-object p2, p0, Ld/k/d/a0;->f:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Ld/k/d/a0;->g:Ld/h/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ld/k/d/a0;->e:Ld/k/d/g0$a;

    iget-object v1, p0, Ld/k/d/a0;->f:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Ld/k/d/a0;->g:Ld/h/h/a;

    check-cast v0, Ld/k/d/r$b;

    invoke-virtual {v0, v1, v2}, Ld/k/d/r$b;->a(Landroidx/fragment/app/Fragment;Ld/h/h/a;)V

    return-void
.end method
