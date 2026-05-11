.class public final Landroidx/lifecycle/LifecycleController$observer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/m/f;


# virtual methods
.method public final d(Ld/m/h;Ld/m/d$a;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/m/b/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lf/m/b/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ld/m/h;->b()Ld/m/d;

    move-result-object p2

    const-string v0, "source.lifecycle"

    invoke-static {p2, v0}, Lf/m/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ld/m/i;

    .line 1
    iget-object p2, p2, Ld/m/i;->b:Ld/m/d$b;

    .line 2
    sget-object v1, Ld/m/d$b;->e:Ld/m/d$b;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 3
    throw v2

    .line 4
    :cond_0
    invoke-interface {p1}, Ld/m/h;->b()Ld/m/d;

    move-result-object p1

    invoke-static {p1, v0}, Lf/m/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ld/m/i;

    .line 5
    throw v2
.end method
