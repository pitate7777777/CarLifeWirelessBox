.class public final Le/b/a/a/p/o/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/e$a;
.implements Le/b/a/a/o/i/b;


# instance fields
.field public final e:Le/b/a/a/c;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/a/a/o/i/e;",
            ">;"
        }
    .end annotation
.end field

.field public g:Le/b/a/a/o/i/d;


# direct methods
.method public constructor <init>(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/o/b;->f:Ljava/util/List;

    invoke-virtual {p0}, Le/b/a/a/p/o/b;->b()V

    return-void
.end method

.method public static final f(Le/b/a/a/p/o/b;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Le/b/a/a/p/o/b;->g()V

    return-void
.end method


# virtual methods
.method public synthetic N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le/b/a/a/o/i/a;->a(Le/b/a/a/o/i/b;Le/b/a/a/c;Le/b/a/a/o/h/a;)Z

    move-result p1

    return p1
.end method

.method public synthetic T0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le/b/a/a/o/i/a;->b(Le/b/a/a/o/i/b;Le/b/a/a/c;Le/b/a/a/o/h/a;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Le/b/a/a/p/o/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/o/i/e;

    invoke-virtual {v1}, Le/b/a/a/o/i/e;->g()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/b/a/a/p/o/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    const-string v1, "CONNECT_TYPE"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Le/b/a/a/c;->o1(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Le/b/a/a/p/o/b;->f:Ljava/util/List;

    new-instance v1, Le/b/a/a/p/o/c/a;

    iget-object v3, p0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    invoke-direct {v1, v3, p0}, Le/b/a/a/p/o/c/a;-><init>(Le/b/a/a/c;Le/b/a/a/o/i/e$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    invoke-interface {v0, v2}, Le/b/a/a/c;->I(I)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Le/b/a/a/p/o/b;->f:Ljava/util/List;

    new-instance v2, Le/b/a/a/p/o/e/b;

    iget-object v3, p0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    invoke-direct {v2, v3, p0}, Le/b/a/a/p/o/e/b;-><init>(Le/b/a/a/c;Le/b/a/a/o/i/e$a;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Le/b/a/a/p/o/b;->f:Ljava/util/List;

    new-instance v2, Le/b/a/a/p/o/e/d;

    iget-object v3, p0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    invoke-direct {v2, v3, p0}, Le/b/a/a/p/o/e/d;-><init>(Le/b/a/a/c;Le/b/a/a/o/i/e$a;)V

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    invoke-interface {v0, v1}, Le/b/a/a/c;->I(I)V

    :goto_2
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Le/b/a/a/p/o/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/o/i/e;

    invoke-virtual {v1}, Le/b/a/a/o/i/e;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic onConnectionAttached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->a(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionAuthenFailed(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->b(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionBoxNeedActive(Le/b/a/a/c;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/b/a/a/h;->c(Le/b/a/a/i;Le/b/a/a/c;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic onConnectionDetached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->d(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionEstablished(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->e(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionReattached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->f(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->g(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method
