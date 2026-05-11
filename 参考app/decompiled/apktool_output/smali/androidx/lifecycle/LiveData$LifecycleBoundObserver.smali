.class public Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$a;
.source ""

# interfaces
.implements Ld/m/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.a;",
        "Ld/m/f;"
    }
.end annotation


# instance fields
.field public final e:Ld/m/h;

.field public final synthetic f:Landroidx/lifecycle/LiveData;


# virtual methods
.method public d(Ld/m/h;Ld/m/d$a;)V
    .locals 0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Ld/m/h;

    invoke-interface {p1}, Ld/m/h;->b()Ld/m/d;

    move-result-object p1

    check-cast p1, Ld/m/i;

    .line 1
    iget-object p1, p1, Ld/m/i;->b:Ld/m/d$b;

    .line 2
    sget-object p2, Ld/m/d$b;->e:Ld/m/d$b;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$a;->a:Ld/m/n;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->f(Ld/m/n;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->i()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$a;->h(Z)V

    return-void
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Ld/m/h;

    invoke-interface {v0}, Ld/m/h;->b()Ld/m/d;

    move-result-object v0

    check-cast v0, Ld/m/i;

    .line 1
    iget-object v0, v0, Ld/m/i;->b:Ld/m/d$b;

    .line 2
    sget-object v1, Ld/m/d$b;->h:Ld/m/d$b;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
