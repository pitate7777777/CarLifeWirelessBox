.class public final Lg/a/z0/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg/a/z0/o;

.field public static final b:Lg/a/z0/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/a/z0/o;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lg/a/z0/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/a/z0/e;->a:Lg/a/z0/o;

    new-instance v0, Lg/a/z0/o;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lg/a/z0/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/a/z0/e;->b:Lg/a/z0/o;

    return-void
.end method

.method public static a(Lf/k/d;Ljava/lang/Object;Lf/m/a/b;I)V
    .locals 5

    .line 1
    instance-of p2, p0, Lg/a/z0/d;

    if-eqz p2, :cond_9

    check-cast p0, Lg/a/z0/d;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ld/b/k/m$i;->C1(Ljava/lang/Object;Lf/m/a/b;)Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Lg/a/z0/d;->h:Lg/a/o;

    invoke-virtual {p0}, Lg/a/z0/d;->d()Lf/k/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/a/o;->t(Lf/k/f;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object p3, p0, Lg/a/z0/d;->j:Ljava/lang/Object;

    iput v1, p0, Lg/a/t;->g:I

    iget-object p1, p0, Lg/a/z0/d;->h:Lg/a/o;

    invoke-virtual {p0}, Lg/a/z0/d;->d()Lf/k/f;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lg/a/o;->s(Lf/k/f;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lg/a/t0;->a:Lg/a/t0;

    invoke-static {}, Lg/a/t0;->a()Lg/a/x;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/x;->y()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p3, p0, Lg/a/z0/d;->j:Ljava/lang/Object;

    iput v1, p0, Lg/a/t;->g:I

    invoke-virtual {v0, p0}, Lg/a/x;->w(Lg/a/t;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, v1}, Lg/a/x;->x(Z)V

    :try_start_0
    invoke-virtual {p0}, Lg/a/z0/d;->d()Lf/k/f;

    move-result-object v2

    sget-object v3, Lg/a/i0;->d:Lg/a/i0$a;

    invoke-interface {v2, v3}, Lf/k/f;->get(Lf/k/f$b;)Lf/k/f$a;

    move-result-object v2

    check-cast v2, Lg/a/i0;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lg/a/i0;->c()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Lg/a/i0;->j()Ljava/util/concurrent/CancellationException;

    move-result-object v2

    .line 2
    instance-of v3, p3, Lg/a/j;

    if-eqz v3, :cond_2

    check-cast p3, Lg/a/j;

    iget-object p3, p3, Lg/a/j;->b:Lf/m/a/b;

    invoke-interface {p3, v2}, Lf/m/a/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_2
    invoke-static {v2}, Ld/b/k/m$i;->E(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p3}, Lg/a/z0/d;->b(Ljava/lang/Object;)V

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_8

    iget-object p3, p0, Lg/a/z0/d;->i:Lf/k/d;

    iget-object v2, p0, Lg/a/z0/d;->k:Ljava/lang/Object;

    invoke-interface {p3}, Lf/k/d;->d()Lf/k/f;

    move-result-object v3

    invoke-static {v3, v2}, Lg/a/z0/q;->b(Lf/k/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lg/a/z0/q;->a:Lg/a/z0/o;

    if-eq v2, v4, :cond_4

    invoke-static {p3, v3, v2}, Lg/a/m;->b(Lf/k/d;Lf/k/f;Ljava/lang/Object;)Lg/a/v0;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_4
    move-object p3, p2

    :goto_1
    :try_start_1
    iget-object v4, p0, Lg/a/z0/d;->i:Lf/k/d;

    invoke-interface {v4, p1}, Lf/k/d;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_5

    :try_start_2
    invoke-virtual {p3}, Lg/a/v0;->K()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_5
    invoke-static {v3, v2}, Lg/a/z0/q;->a(Lf/k/f;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lg/a/v0;->K()Z

    move-result p3

    if-eqz p3, :cond_7

    :cond_6
    invoke-static {v3, v2}, Lg/a/z0/q;->a(Lf/k/f;Ljava/lang/Object;)V

    :cond_7
    throw p1

    :cond_8
    :goto_2
    invoke-virtual {v0}, Lg/a/x;->z()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_8

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1, p2}, Lg/a/t;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    invoke-virtual {v0, v1}, Lg/a/x;->u(Z)V

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Lg/a/x;->u(Z)V

    throw p0

    :cond_9
    invoke-interface {p0, p1}, Lf/k/d;->b(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method
