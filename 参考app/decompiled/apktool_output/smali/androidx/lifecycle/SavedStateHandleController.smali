.class public final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/m/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/SavedStateHandleController$a;
    }
.end annotation


# instance fields
.field public a:Z


# virtual methods
.method public d(Ld/m/h;Ld/m/d$a;)V
    .locals 1

    sget-object v0, Ld/m/d$a;->ON_DESTROY:Ld/m/d$a;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    invoke-interface {p1}, Ld/m/h;->b()Ld/m/d;

    move-result-object p1

    check-cast p1, Ld/m/i;

    .line 1
    iget-object p1, p1, Ld/m/i;->a:Ld/c/a/b/a;

    invoke-virtual {p1, p0}, Ld/c/a/b/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
