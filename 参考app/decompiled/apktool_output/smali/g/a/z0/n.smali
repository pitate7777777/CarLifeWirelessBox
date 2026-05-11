.class public Lg/a/z0/n;
.super Lg/a/c;
.source ""

# interfaces
.implements Lf/k/i/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg/a/c<",
        "TT;>;",
        "Lf/k/i/a/c;"
    }
.end annotation


# virtual methods
.method public H(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ld/b/k/m$i;->X0(Ljava/lang/Object;Lf/k/d;)Ljava/lang/Object;

    throw v0
.end method

.method public final a()Lf/k/i/a/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ld/b/k/m$i;->s0(Lf/k/d;)Lf/k/d;

    move-result-object v1

    invoke-static {p1, v0}, Ld/b/k/m$i;->X0(Ljava/lang/Object;Lf/k/d;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v1, p1, v0, v2}, Lg/a/z0/e;->a(Lf/k/d;Ljava/lang/Object;Lf/m/a/b;I)V

    return-void
.end method

.method public final w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
