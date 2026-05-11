.class public abstract Le/b/a/a/o/i/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/o/i/e$a;
    }
.end annotation


# instance fields
.field public final a:Le/b/a/a/o/i/e$a;


# direct methods
.method public constructor <init>(Le/b/a/a/c;Le/b/a/a/o/i/e$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/b/a/a/o/i/e;->a:Le/b/a/a/o/i/e$a;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Le/b/a/a/o/h/a;)V
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Le/b/a/a/o/i/e;->a:Le/b/a/a/o/i/e$a;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    check-cast v0, Le/b/a/a/p/o/b;

    const-string v1, "transport"

    .line 1
    invoke-static {p0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Le/b/a/a/p/o/b;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/a/o/i/e;

    if-ne p0, v2, :cond_4

    new-instance v2, Le/b/a/a/o/i/d;

    iget-object v3, v0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {v2, v3, p0, v4, v5}, Le/b/a/a/o/i/d;-><init>(Le/b/a/a/c;Le/b/a/a/o/i/e;ZI)V

    iput-object v2, v0, Le/b/a/a/p/o/b;->g:Le/b/a/a/o/i/d;

    instance-of v2, p0, Le/b/a/a/p/o/c/a;

    if-eqz v2, :cond_2

    iget-object v2, v0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    instance-of v2, p0, Le/b/a/a/p/o/e/d;

    if-eqz v2, :cond_3

    iget-object v2, v0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    const/4 v3, 0x5

    goto :goto_1

    :cond_3
    instance-of v2, p0, Le/b/a/a/p/o/e/b;

    if-eqz v2, :cond_1

    iget-object v2, v0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    const/16 v3, 0x9

    :goto_1
    invoke-interface {v2, v3}, Le/b/a/a/c;->I(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Le/b/a/a/o/i/e;->g()V

    goto :goto_0

    :cond_5
    iget-object v1, v0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Le/b/a/a/c;->n(Z)V

    iget-object v1, v0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    invoke-interface {v1}, Le/b/a/a/c;->a()V

    iget-object v0, v0, Le/b/a/a/p/o/b;->g:Le/b/a/a/o/i/d;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Le/b/a/a/o/i/d;->start()V

    :goto_2
    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Le/b/a/a/o/i/e;->a:Le/b/a/a/o/i/e$a;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    check-cast v0, Le/b/a/a/p/o/b;

    const-string v1, "transport"

    .line 1
    invoke-static {p0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Le/b/a/a/p/o/b;->g:Le/b/a/a/o/i/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 2
    :cond_1
    iget-object v1, v1, Le/b/a/a/o/i/d;->f:Le/b/a/a/o/i/e;

    .line 3
    :goto_0
    invoke-static {p0, v1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Le/b/a/a/p/o/b;->g:Le/b/a/a/o/i/d;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Le/b/a/a/o/i/d;->a()V

    :goto_1
    iput-object v2, v0, Le/b/a/a/p/o/b;->g:Le/b/a/a/o/i/d;

    iget-object v1, v0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    invoke-interface {v1}, Le/b/a/a/c;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    new-instance v2, Le/b/a/a/p/o/a;

    invoke-direct {v2, v0}, Le/b/a/a/p/o/a;-><init>(Le/b/a/a/p/o/b;)V

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Le/b/a/a/c;->k0(Ljava/lang/Runnable;J)V

    goto :goto_3

    .line 4
    :cond_3
    iget-object v1, v0, Le/b/a/a/p/o/b;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/a/o/i/e;

    invoke-virtual {v2}, Le/b/a/a/o/i/e;->f()V

    goto :goto_2

    .line 5
    :cond_4
    :goto_3
    iget-object v0, v0, Le/b/a/a/p/o/b;->e:Le/b/a/a/c;

    invoke-interface {v0}, Le/b/a/a/c;->e()V

    :cond_5
    :goto_4
    return-void
.end method

.method public abstract e()Le/b/a/a/o/h/a;
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method
