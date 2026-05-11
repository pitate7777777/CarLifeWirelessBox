.class public final Landroidx/lifecycle/SavedStateHandleController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/m/f;


# instance fields
.field public final synthetic a:Ld/m/d;

.field public final synthetic b:Ld/r/a;


# virtual methods
.method public d(Ld/m/h;Ld/m/d$a;)V
    .locals 0

    sget-object p1, Ld/m/d$a;->ON_START:Ld/m/d$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->a:Ld/m/d;

    check-cast p1, Ld/m/i;

    .line 1
    iget-object p1, p1, Ld/m/i;->a:Ld/c/a/b/a;

    invoke-virtual {p1, p0}, Ld/c/a/b/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->b:Ld/r/a;

    const-class p2, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {p1, p2}, Ld/r/a;->a(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
